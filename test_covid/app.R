###LOAD LIBRARIES
library(shiny)
library(shinydashboard)
library(leafpop)
library(sf)
library(tidyverse)
library(waffle)
#library(extrafont)
#library(emojifont)
#library(hrbrthemes)
#library(magrittr)
#extrafont::font_import (path="C:/Users/Clown Baby/Desktop", pattern = "awesome", prompt = FALSE)
#extrafont::loadfonts(quiet = TRUE)

## TO DO
#1. Make download action button operational
#2. Stylize modalDialogue
##3.  There's an issue with click reactive function, not getting the correct
## plot for county polygon clicked.
#4. fix circlepackeR graph for click input modal dialog
#5. fonts in plot don't work
#6. add land use data
#7. Change industry bar plot so it's cooler --- maybe slope plot? or horizontal dots from this:
### http://www.rebeccabarter.com/blog/2018-05-29_getting_fancy_ggplot2/


## SET PATH ##
path <- "C:/Users/user/Desktop/Countyapp/Countyapp/test_covid/"
setwd(path)

################################# LOADING DATA #########################################


## load files, which have been cleaned and organized for this app:
source("C:/Users/user/Desktop/Countyapp/Countyapp/test_covid/load_and_organize.R")

#https://www.r-graph-gallery.com/circle-packing.html
# https://www2.census.gov/programs-surveys/popest/technical-documentation/file-layouts/2010-2019/cc-est2019-alldata.pdf


##################################### UI ###############################################
ui <- dashboardPage(
    dashboardHeader(title = "COVID 19 National Resource Map", titleWidth = 400),
    dashboardSidebar(
        selectInput("selectstate", "Select State", unique(df$Province_State)),
        selectInput("selectcounty", "Select County", choices = NULL),
        actionButton("zoom2location","Take me there")
    ),
    dashboardBody( 
        tags$head(
        includeCSS("style.css"),
        includeCSS("https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Source+Code+Pro:wght@200&display=swap") ),
        tags$style(type = "text/css", "#map {height: calc(100vh - 80px) !important;}"),
        leafletOutput("map")
    )
)
##################################### SERVER ###########################################
server <- function(session, input, output) {
  
########### SELECT STATES AND COUNTIES FUNCTIONS IN SELECTINPUT###### 
observeEvent(
  input$selectstate,
  updateSelectInput(session,"selectcounty", "Select County", 
                    choices = unique(df$Admin2[df$Province_State==input$selectstate]))
)

 
############## ZOOM 2 LOCATION BUTTON ACTIONBUTTON ################
   observeEvent(input$zoom2location, {
     srow <- counties1[counties1$NAME==input$selectcounty,]
     leafletProxy("map")   %>%
       setView(
         lat = srow$INTPTLAT,
         lng = srow$INTPTLON,
         zoom = 16.25)
   })
 
   
######################## PLOT BY SELECT INPUT ####################
####1.  subset counties chosen in select input to display plot ##  
   subset_county<- reactive({
     dplyr::filter(df, df$Admin2==input$selectcounty)
   })

 
 ##2. observe event, render modal dialogue for select input  
     observeEvent(input$selectcounty, {
     click <- input$selectcounty
     if(is.null(click))
       return() 
     {showModal(modalDialog(
       title = subset_county()$NAME,
       footer = NULL,
       easyClose = T,
       downloadButton('downloadPlot', 'Download'),
       tabsetPanel(type = "tabs",
         tabPanel("Coronovirus", plotOutput("plot")),
         tabPanel("Demographics", plotOutput("waffle"), circlepackeROutput(outputId = "race1", width = "100%", height = "400px")),
         tabPanel("Economics", plotOutput("industry"))
         )#,
     ))
       }
   }) 

##3. render plot when select county 
    output$plot <-renderPlot(
    ggplot(data= subset_county(), 
                   aes(x= date, y = value)) + geom_line(color = "#2E9AFE", size = 1) + 
      geom_area(fill="#3ba1ff") + 
      ggtitle("Coronavirus in ", as.character(subset_county()$Admin2)) +
      theme(
                     panel.grid.major = element_blank(),
                     panel.grid.minor = element_blank(),
                     panel.border = element_blank(),
                     plot.background=element_rect(fill = '#262626'),
                     panel.background = element_rect(fill = '#262626'),
                     axis.text = element_text(color = 'white'),
                     axis.line.x = element_line(color = "grey"),
                     axis.line.y = element_line(color = "grey"),
                     plot.title = element_text(color = 'white'),
                     axis.title = element_text(color = 'white'),
                   #  text = element_text(family = 'Courier New', size = 20)
                  )
   )

########### SHOW WAFFLE PLOT WHEN SELECT INPUT ############  
    ## 1. First, I need to successfully subset the data through selectInput
    ## Make sure you're using the numeric values of poverty, not character
     subset_county_poverty2 <-reactive({
       subset(counties1, NAME==input$selectcounty)
    })

 
    ## 2. Next, display subsetted data in the plot
    output$waffle <- renderPlot({
    waffle(c("At or below poverty line" = subset_county_poverty2()$All.Ages.in.Poverty.Percent,
             "Above poverty line" = subset_county_poverty2()$not_pov), 
               rows = 10, 
    #       glyph_font = "Font Awesome 5 Free Solid",
     #      glyph_font_family = "FontAwesome5Free-Solid",
     #      use_glyph = "male", 
              glyph_size = 9,
              colors = c("#2E9AFE", "#c4d6e5", "#c4d6e5"), 
              xlab = "One square = 1% of total population <br> Source: SAIPE (2018)",
              flip = TRUE) +
        ggtitle("Poverty in ", as.character(subset_county_poverty2()$NAME)) 

})
  
    
#### BAR GRAPH OF SELECT INPUT COUNTY INDUSTRY ###
    # 1. make sure it's in modal box
    #2. subset data
    subset_county_industry<- reactive({
      dplyr::filter(industry, industry$NAME==input$selectcounty)
    })
    
    #3. render plot
    output$industry <- renderPlot({
      ggplot(data = subset_county_industry(), aes(type, count)) + 
        ggtitle("Industry in ", subset_county_industry()$NAME) +
        geom_bar(stat='identity') +
        theme(axis.text.x = element_text(angle = 90, vjust = 0.4),
                panel.grid.major = element_blank(),
                panel.grid.minor = element_blank(),
                panel.border = element_blank(),
              ) +
        xlab("Industry") + ylab("Employment count")
    })

###### CIRCLE TREE MAP OF SELECT INPUT #######
   # 1. make sure it's in modal box
    #2. subset data
    race_filter <- reactive({
      req(input$selectcounty)
      subset.data.frame(race, NAME==input$selectcounty)
    })
    
    race_node <- reactive({
      as.Node(race_filter())
    })
    
    #3. Display circlepackeR graph
    output$race1 <- renderCirclepackeR({
      circlepackeR(race_node(), size = "r_count", 
                   color_max = "hsl(228, 95%, 57%)",
                   color_min = "hsl(228, 95%, 1%)")
    })   
###################### DISPLAY MAP##########################
    
   output$map <- renderLeaflet({
     leaflet() %>%
       setView(lng = -88, lat = 36.1980, zoom = 6) %>% 
       addProviderTiles(providers$CartoDB.DarkMatter) %>%
       addPolygons(data=counties,  
                   color = "black", 
                   weight = 0.1,
                   opacity = 1.0, 
                   fillOpacity = 0.15, 
                   fillColor = "transparent",
                   group= "counties",
                   layerId = ~counties1$GEOID
       ) %>% 
       addLayersControl( baseGroups = c("TonerLite"),
                         overlayGroups = c(
                           "counties"
                           #   "states"),
                         ),
                         options = layersControlOptions(collapsed = FALSE) ) 
   })

################### DISPLAY DATA BY CLICKING ON MAP ##################   
##1.  subset counties by click function to plot the graph from below.
subset_county_by_click <- reactive({
  click <- input$map_shape_click
  click <- counties1[as.character(counties1$GEOID) == click$id,]
  dplyr::filter(df, df$Admin2==click$NAME)
})


##2. plotting by clicking on polygon instead
   output$plot1 <-renderPlot(
     ggplot(data= subset_county_by_click(), 
            aes(x= date, y = value)) + geom_line(color = "#2E9AFE", size = 1) + geom_area(fill="#3ba1ff") + ggtitle("Coronavirus in ", as.character(subset_county_by_click()$Admin2)) + theme(
              panel.grid.major = element_blank(),
              panel.grid.minor = element_blank(),
              panel.border = element_blank(),
              plot.background=element_rect(fill = '#262626'),
              panel.background = element_rect(fill = '#262626'),
              axis.text = element_text(color = 'white'),
              axis.line.x = element_line(color = "grey"),
              axis.line.y = element_line(color = "grey"),
              plot.title = element_text(color = 'white'),
              axis.title = element_text(color = 'white'),
              text = element_text(family = 'Courier New', size = 20)
            )
   )
 

### 3. When click on county on map, the a modal dialogue with county plot
##  and profile show up.
   observeEvent(input$map_shape_click, {
     click <- input$map_shape_click
     if(is.null(click))
       return() 
       { showModal(modalDialog(
         footer = NULL,
         easyClose = T,
         downloadButton('downloadPlot', 'Download'),
         tabsetPanel(
           tabPanel("Coronovirus", plotOutput("plot1")),
           tabPanel("Demographics", plotOutput("waffle2"), circlepackeROutput(outputId = "race2", width = "100%", height = "400px")),
           tabPanel("Economics", plotOutput("industry1")
         )
         )
       ))
       }
   })
   
##4. subset county poverty  in modal dialogue by click
   subset_county_poverty1 <-reactive({
     click <- input$map_shape_click
     click <- counties1[as.character(counties1$GEOID) == click$id,]
     dplyr::filter(counties1, counties1$NAME==click$NAME)
   })
   
##5. display waffle graph
   output$waffle2 <- renderPlot({
     waffle(c("At or below poverty line" = subset_county_poverty1()$All.Ages.in.Poverty.Percent,
              "Above poverty line" = subset_county_poverty1()$not_pov), 
            rows = 10, 
            #       glyph_font = "Font Awesome 5 Free Solid",
            #      glyph_font_family = "FontAwesome5Free-Solid",
            #      use_glyph = "male", 
            glyph_size = 9,
            colors = c("#2E9AFE", "#c4d6e5", "#c4d6e5"), 
            xlab = "One square = 1% of total population <br> Source: SAIPE (2018)",
            flip = TRUE) +
       ggtitle("Poverty in ", as.character(subset_county_poverty1()$NAME))
   })

   
######## Industry Bar Graph when click on map #######   
 #1. put in modal box
 #2. Subset based on click
   subset_county_industry1 <-reactive({
     click <- input$map_shape_click
     click <- counties1[as.character(counties1$GEOID) == click$id,]
     dplyr::filter(industry, industry$NAME==click$NAME)
   })
   
 #3. display graph in modal box
   output$industry1 <- renderPlot({
     ggplot(data = subset_county_industry1(), aes(type, count)) + 
       ggtitle("Industry in ", subset_county_industry1()$NAME) +
       geom_bar(stat='identity') +
       theme(axis.text.x = element_text(angle = 90, vjust = 0.4),
             panel.grid.major = element_blank(),
             panel.grid.minor = element_blank(),
             panel.border = element_blank(),
       ) +
       xlab("Industry") + ylab("Employment count")
   })
   
    
######## demographics circlepackeR when click on map #######    
  #1. put in modal box
  #2. Subset based on click
   race_filter1 <- reactive({
     click <- input$map_shape_click
     click <- counties1[as.character(counties1$GEOID) == click$id,]
   #  req(click$NAME)
     dplyr::filter(race, race$NAME==click$NAME)
   })
   
   race_node1 <- reactive({
     as.Node(race_filter1())
   })
   
   #3. Display circlepackeR graph
   output$race2 <- renderCirclepackeR({
     circlepackeR(race_node1(), size = "r_count", 
                  color_max = "hsl(228, 95%, 57%)",
                  color_min = "hsl(228, 95%, 1%)")
   })  
   
   
      
}


########################################################################################
shinyApp(ui = ui, server = server)
