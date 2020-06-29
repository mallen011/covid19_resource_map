###LOAD LIBRARIES
library(shiny)
library(shinydashboard)
library(leafpop)
library(sf)
library(tidyverse)
library(extrafont)
#font_import()
#loadfonts(device = "win")

##sources for help
#     https://stackoverflow.com/questions/21515800/subset-a-data-frame-based-on-user-input-shiny
#     https://stackoverflow.com/questions/51407721/shiny-r-error-in-data-must-be-a-data-frame-or-other-object-coercible-by
#     https://stackoverflow.com/questions/45283345/how-to-use-select-input-to-subset-a-dataframe-in-r-shiny
#     https://stackoverflow.com/questions/37163996/selectinput-and-plot-render


## SET PATH ##
path <- "C:/Users/user/Desktop/Countyapp/Countyapp/test_covid/"
setwd(path)

################################# LOADING DATA #########################################


## load files, which have been cleaned and organized for this app:
source("C:/Users/user/Desktop/Countyapp/Countyapp/test_covid/load_and_organize.R")


##################################### UI ###############################################
ui <- dashboardPage(
    dashboardHeader(title = "COVID 19 National Resource Map", titleWidth = 400),
    dashboardSidebar(
        selectInput("selectstate", "Select State", unique(df$Province_State)),
        selectInput("selectcounty", "Select County", choices = NULL),
      #  actionButton("plot1", "plot"),
        actionButton("zoom2location","Take me there")
    #    actionButton("go","Plot Data")
    ),
    dashboardBody( 
        tags$head(
        includeCSS("style.css"),
        includeCSS("https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Source+Code+Pro:wght@200&display=swap") ),
        tags$style(type = "text/css", "#map {height: calc(100vh - 80px) !important;}"),
        leafletOutput("map"),
        absolutePanel (id = "controls1", class = "panel panel-default", draggable = TRUE, fixed = FALSE, top = 300, left = "auto", right = 22, bottom = "auto", height = "auto",
                       plotOutput("plot"),
                       textOutput("us_county_poverty")
                      )
    )
)
##################################### SERVER ###########################################
server <- function(session, input, output) {
  
########### SELECT STATES AND COUNTIES FUNCTIONS  
observeEvent(
  input$selectstate,
  updateSelectInput(session,"selectcounty", "Select County", 
                    choices = unique(df$Admin2[df$Province_State==input$selectstate]))
)

 
############## ZOOM 2 LOCATION BUTTON
   observeEvent(input$zoom2location, {
     srow <- counties1[counties1$NAME==input$selectcounty,]
     leafletProxy("map")   %>%
       setView(
         lat = srow$INTPTLAT,
         lng = srow$INTPTLON,
         zoom = 16.25)
   })
 
   
#### subset counties chosen in select input to display plot ##  
   subset_county<- reactive({
     dplyr::filter(df, df$Admin2==input$selectcounty)
   })
      
##render plot when select county 

    output$plot <-renderPlot(
     ggplot(data= subset_county(), 
                   aes(x= date, y = value)) + geom_line(color = "#2E9AFE", size = 1) + geom_area(fill="#3ba1ff") + ggtitle("Cases of Coronovirus") + theme(
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

####show county poverty in textOutput below plot
##filter data based on selectcounty input 
    subset_county_poverty <-reactive({
      counties1 %>% filter(NAME==input$selectcounty)
    })
    
##Render text based on reactive filtering function for column "All.Ages.in.Poverty.Percent"
    output$us_county_poverty <- renderText({
      paste0("Percentage of county in poverty (2018): ", subset_county_poverty()$All.Ages.in.Poverty.Percent, "%")
    }) 
    
  
############ DISPLAY MAP  
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

      
}
########################################################################################
shinyApp(ui = ui, server = server)
