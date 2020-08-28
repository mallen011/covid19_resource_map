###LOAD LIBRARIES
library(shiny)
library(shinydashboard)


## SET PATH ##
path <- "C:/Users/user/Desktop/Countyapp/Countyapp/test_covid/"
setwd(path)

## load files, which have been cleaned and organized for this app:
source("C:/Users/user/Desktop/Countyapp/Countyapp/test_covid/load_and_organize.R")

##################################### UI ###############################################
ui <- dashboardPage(
    dashboardHeader(title = "COVID-19 National Resource Map", titleWidth = 400),
    dashboardSidebar(
        selectInput("selectstate", "Select State", unique(df$Province_State)),
        selectInput("selectcounty", "Select County", choices = NULL),
        actionButton("zoom2location","Take me there"),
        actionButton("sources", "Data Sources"),
        actionButton("code","Get Code",
                     onclick ="window.open('https://github.com/mallen011/covid19_resource_map'"),
        actionButton("workflow", "Dashboard Workflow")
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

    
############## Sidebar functions #########        

    
##### 1. select counties by UI input$selectstate
   observeEvent(
        input$selectstate,
        updateSelectInput(session,"selectcounty", "Select County", 
                          choices = unique(df$Admin2[df$Province_State==input$selectstate]))
    )

##### 2. zoom to selected county
    observeEvent(input$zoom2location, {
        srow <- counties[counties$NAME==input$selectcounty,]
        leafletProxy("map")   %>%
            setView(
                lat = srow$INTPTLAT,
                lng = srow$INTPTLON,
                zoom = 16.25)
    })
    
##### 3. Render modal dialogue when user clicks "sources" button    
    observeEvent(input$sources, {
        click <- input$sources
        if(is.null(click))
            return()
        {showModal(modalDialog(
            title = "Sources",
            footer = NULL,
            easyClose = T,
            htmlOutput("sources2")
        )
        )
            }
    })    

##### 4. textoutput for sources modal dialogue
    output$sources2 <- renderUI({ 
        HTML('<h1>
All data represented in this dashboard are from free, reputable, publicly-available sources. 
</h1><p><br />
<h2><center><b>Demographics </center> </b> <br />
US Census Bureau. “County Population by Characteristics: 2010-2019.” 
The United States Census Bureau, The United States Census Bureau, 22 June 2020. <br />
Click
<a href="https://www.census.gov/data/tables/time-series/demo/popest/2010s-counties-detail.html">here</a>
to access this source. <br />
<p>
<center><b>Coronovirus </b></center> <br />
CSSEGIS. “CSSEGISandData/COVID-19.” GitHub, e Johns Hopkins University Center 
for Systems Science and Engineering (JHU CSSE), 2020.  <br />
Click
<a href="https://github.com/CSSEGISandData/COVID-19">here</a>
to access this source. <br />
<p>
<center><b>Counties Polyons </b> </center> <br />
US Census Bureau. “Cartographic Boundary Files - Shapefile.”
The United States Census Bureau, The United States Census Bureau, 18 May 2020. <br />
Click 
<a href="https://www.census.gov/geographies/mapping-files/time-series/geo/carto-boundary-file.html">here</a>
to access this source. <br />
<p>
<center><b> Poverty </b></center>  <br />
American Community Survey. “Poverty Status in the Past 12 Months.”
Data.census.gov, US Census Bureau, 2019. <br />
Click 
<a href="https://data.census.gov/cedsci/table?q=poverty&tid=ACSST1Y2018.S1701&hidePreview=false">here</a>
to access this source.<br />
<p>
<center><b> Industry </center> </b><br />
American Community Survey. “Industry by Occupation for the Civilian Employed Population 16 Years and Over.” 
Data.census.gov, US Census Bureau, 2018. <br />
Click 
<a href="https://data.census.gov/cedsci/table?q=s2405&tid=ACSST1Y2018.S2405">here</a>
to access this source. <br /> </h2>'
        ) })       

##### 5. Render modal dialogue when user clicks "workflow" button    
    observeEvent(input$workflow, {
        click <- input$workflow
        if(is.null(click))
            return()
        {showModal(modalDialog(
            title = "Workflow",
            footer = NULL,
            easyClose = T,
            uiOutput("workflow2")
        )
        )
            }
    })   
    
##### 5. A - Workflow image shown in MD
    output$workflow2 <-renderUI({
        img(src='https://experiential-binder.000webhostapp.com/EKY_Resources/covid_flow.png')
    })
 

    
######################## BOTH MODAL DIALOGUES ####################
       
    

########### MD PART 1: BY USER SELECT INPUT #############
    
    
###### 1. A - subset by select input for modal dialogue and coronavirus plot      
subset_county<- reactive({
        dplyr::filter(df, df$Admin2==input$selectcounty)
    }) 

###### 1. B - subset industry_gender for selectinput in MD and for both industry plots
    subset_county_industry<- reactive({
        dplyr::filter(industry, industry$industry.us_industry.NAME==input$selectcounty)
    })
       
########### 2. Render Modal Dialogue Box ###########      
    observeEvent(input$selectcounty, {
        click <- input$selectcounty
        if(is.null(click))
            return() 
        {showModal(modalDialog(
            footer = NULL,
            easyClose = T,
            textOutput("name"),
            tabsetPanel(type = "tabs",
                        tabPanel("Coronovirus", 
                                 textOutput("covid_text"), 
                                 plotOutput("plot"),
                                 textOutput("death")),
                        tabPanel("Race",
                                 textOutput("race_text"),
                                 circlepackeROutput(outputId = "race1", 
                                                    width = "100%", 
                                                    height = "750px")),
                        tabPanel("Income",
                                 textOutput("pov_text"),
                                 plotOutput("waffle", width = "100%", 
                                                      height = "750px"),
                                ),
                        tabPanel("Industry", 
                                 textOutput("ind_text"),
                                 plotOutput("industry", height = "1100px", width = "750px"),
                                 textOutput("gend_text"),
                                 selectInput("selectindustry", "Select industry", 
                                             unique(subset_county_industry()$industry.Industry)),
                                 plotOutput("gender_industry")),
                        tabPanel("Environment",
                                 textOutput("land_text"),
                                 plotOutput("l_waffle", width = "100%", 
                                            height = "750px"))
                        ),
            downloadButton('downloadPlot', 'Download')
        ))
            }
    }) 
    
    
########### MD PART 2: BY USER CLICK MAP #############
   
###### 1. Render map so user can click on it for MD popup
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
                        layerId = ~counties$NAME
            ) %>% 
            addLayersControl( baseGroups = c("TonerLite"),
                              overlayGroups = c(
                                  "counties"
                                  #   "states"),
                              ),
                              options = layersControlOptions(collapsed = FALSE) ) 
    })
 
##### 2. A -  subset counties by click function for MD and coronavirus plot
    subset_county_by_click <- reactive({
        click <- input$map_shape_click
        click <- counties[as.character(counties$NAME) == click$id,]
        dplyr::filter(df, df$Admin2==click$NAME)
    })

##### 2. B -  subset industry_gender for user map click in MD and for both industry plots      
    subset_county_industry1 <-reactive({
        click <- input$map_shape_click
        click <- counties[as.character(counties$NAME) == click$id,]
        dplyr::filter(industry, industry$industry.us_industry.NAME==click$NAME)
    })
       
########### 3. Render 2nd Modal Dialogue Box ###########      
    observeEvent(input$map_shape_click, {
        click <- input$map_shape_click
        if(is.null(click))
            return() 
        {showModal(modalDialog(
            footer = NULL,
            easyClose = T,
            textOutput("name1"),
            tabsetPanel(
                tabPanel("Coronovirus",
                         textOutput("covid_text"),
                         plotOutput("plot1"),
                         textOutput("death1")),
                tabPanel("Demographics",
                         textOutput("pov_text"),
                         plotOutput("waffle2"), 
                         textOutput("race_text"),
                         circlepackeROutput(outputId = "race2", width = "100%", height = "400px")),
                tabPanel("Economics",
                         textOutput("ind_text"),
                         girafeOutput("industry1"),
                         textOutput("gend_text"),
                         selectInput("selectindustry1", "Select industry", unique(subset_county_industry1()$industry.Industry)),
                         plotOutput("gender_industry1")
                )
            ),
            downloadButton('downloadPlot', 'Download')
        ))
            }
    })
    
########### 3. TextOutput boxes ###########    

#### A 1 - textoutput name of county for overall selectinput MD
    output$name <- renderText({
        paste0(unique(as.character(subset_county()$Admin2)))
    })  
    
#### A 2 - textoutput name of county for overall user map click MD
    output$name1 <- renderText({
        paste0(unique(as.character(subset_county_by_click()$Admin2)))
    })
    
##### B - Covid text
    output$covid_text <- renderText({ 
        HTML("This graph shows the daily number of coronivirus cases since it's initial spread.
  The numbers are updated everyday according to county and state reports, and gathered and shared by JHU blah blah institute's
  public Github pages. The following tabs display statistics for each county's demographic and industrial makeup. While research
  on this public health crisis is still growing, there have been recorded trends that tie the rise and impact of the pandemic
  to socioeconomic factors such as race, income and industry of U.S. communities (SOURCE).")
        })    
    
##### C 1 - deaths covid by user selectinput
##1.  subset 
    subset_death <- reactive({
        dplyr::filter(death, death$Admin2==input$selectcounty)
    })
    
##2.  show deaths per county
    output$death <- renderText({
        paste0(prettyNum(sum(subset_death()[,ncol(death)]), big.mark=","), " deaths in ",
               unique(as.character(subset_county()$Admin2)), " as of yesterday"
               #insert date column 
        )
    })

##### C 2 - deaths covid by user click map
##1.  subset 
    subset_death1 <- reactive ({
        dplyr::filter(death, death$Admin2==subset_county_by_click()$Admin2)
    })
    
##2.  show deaths per county
    output$death1 <- renderText({
        paste0(prettyNum(sum(subset_death1()[,ncol(death)]), big.mark=","), " deaths in ",
               unique(as.character(subset_county_by_click()$Admin2)), " as of yesterday"
               #insert date column 
        )
    })
    
    
##### D - Poverty text
    output$pov_text <- renderText({
        HTML("Families living at or below the poverty line are acutely vulnerable to the risks of viral infection (SOURCE).
       The spread of the coronovirus has exacerbated this already-existing problem. Key reasons for this vulnerability
       are (FIND KEY REASONS AND CITE SOURCE). The chart below displays county poverty rates per one hundred people.")
    }) 
    
##### E - Race text
    output$race_text <- renderText({
    HTML("Trends indicate that the coronavirus has a higher spread and mortality rate amongst
    U.S. minority groups, namely black and hispanic Americans (SOURCE). This clickable graph shows county racial makeup 
    between men and women, and hispanic and non-hispanic groups.")
        })   
    
##### F - Industry text
    output$ind_text <- renderText({
        HTML("The graph below shows us which industry dominates each county. According to SOURCE HERE,
       A large portion of major 'blooms' of coronavirus spread has been attributed to certain industries
       and industrial practices. LIST VULNERABLE INDUSTRY TYPES AND WHY.")
    }) 
    
##### G - Industry Gender text
    output$gend_text <- renderText({
    HTML("The following graph displays the gender balance of each industry type per county. 
    IS THERE A GENDER RELATIONSHIP W CORONAVIRUS? SOURCE")
        })
    
##### H - land text
    output$land_text <- renderText({
        HTML("The following graph displays landcover type of this county. 
    IS THERE A LAND RELATIONSHIP W CORONAVIRUS? SOURCE")
    })
    
    
    
    
    
######################## !!PLOTS!!! !!PLOTS!!! PLOTS! PLOTS! PLOTS! PLOTS! ####################   

    

############## Coronovirus Tab ######### 
    
    
########### Part 1: by user select input #########   
###### 1. Check it's in MD
###### 2. Subset (above MD)
###### 3. Render    
     output$plot <-renderPlot(
        ggplot(data= subset_county(), 
               aes(x= date, y = value)) + 
            geom_line(color = "#2E9AFE", size = 1) + 
            geom_area(fill="#3ba1ff") + 
            ggtitle("Coronavirus in ", as.character(subset_county()$Admin2)) +
            theme(
                panel.grid.major = element_blank(),
                panel.grid.minor = element_blank(),
                panel.border = element_blank(),
                plot.background=element_rect(fill = '#262626'),
                panel.background = element_rect(fill = '#262626', color = NA),
                axis.text = element_text(color = 'white'),
                axis.line.x = element_line(color = "grey"),
                axis.line.y = element_line(color = "grey"),
                plot.title = element_text(color = 'white'),
                axis.title = element_text(color = 'white'),
                text = element_text(family = "Courier New", size = 20)
            )
    ) 
    
########### Part 2: by user click map ######### 

    
##### 1. Check it's in MD
##### 2. Subset (above MD)
##### 3. Render
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
                   text = element_text(family = "Courier New", size = 20)
               )
    )
    
    
    
    
  
    
    
    
    
############## Economics Tab ######### 

        
########### Part 1: Industry by user select input ######### 
    
colors <- c("#2E9AFE", "#2C91EF", "#2B8FEC", "#2A8BE5", "#2781D5", "#267BCB", "#2374C0",
                "#226EB6", "#2068AA", "#1F62A0", "#1C5991", "#1B5388", "#184976", "#17446D",
                "#143B60", "#123557", "#102D49", "#0E2740", "#0C2034")   
    
##### 1. Make sure it's in modal.
##### 2. Subset - this plot's subset is above the MD
    output$industry <- renderPlot({
        ggplot(data = subset_county_industry(), aes(industry.Industry, 
                                                    industry.total, 
                                                    fill = industry.Industry,
                                                 #   image = image
                                                    )) + 
       #     geom_isotype_col(
    #            img_height = grid::unit(1, "null"), img_width = NULL,
    #            ncol = 1, nrow = 1, hjust = 1, vjust = 0.5
    #        ) +
            scale_fill_manual(values = colors) +
            ggtitle("Industry in ", subset_county_industry()$industry.us_industry.NAME) +
            geom_bar(stat="identity", position= position_dodge(0.9), width = 1) +
            scale_x_discrete(labels = function(industry.Industry) str_wrap(industry.Industry, width = 10)) +
            coord_flip() +
            guides(fill = "none") +
            geom_image(aes(industry.Industry, image = image), 
                       y = -0.5,
                       size = 0.04, 
                       by = "height",
                       asp = 0.4
                   #    hjust = 9
                  #     vjust = 1
                      # inherit.aes = FALSE
                       ) +
            scale_size_identity() +
            theme(axis.text.x = element_text(angle = 40, hjust = 1, vjust = 1),
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
                  text = element_text(family = "Courier New", size = 20)
            ) +
            xlab("Industry") + ylab("Employment count")
    })
    
########### Part 2: Industry by user click map ######### 
    output$industry1 <- renderGirafe({
        ind <- ggplot() + 
            ggtitle("Industry in ", subset_county_industry1()$industry.us_industry.NAME) +
            geom_bar_interactive(
                data = subset_county_industry1(), aes(industry.Industry, 
                                                     industry.total, 
                                                     fill = industry.Industry), 
                stat="identity", position= position_dodge(0.9), width = 1) +
            coord_flip() +
            guides(fill = "none") +
            geom_image(aes(industry.Industry, image = image), 
                       size = 0.06, 
                       by = "height",
                       asp = 0.4
            ) +
            scale_size_identity() +
            theme(axis.text.x = element_text(angle = 40, hjust = 1, vjust = 1),
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
                  text = element_text(family = "Courier New", size = 20)
            ) +
            xlab("Industry") + ylab("Employment count")
        girafe(ggobj = ind) %>% 
            girafe_options(ggiraph::opts_hover(css="fill:black;cursor:pointer;"))
    })
    
    
    
    
    
    
    
    
########### Part 1: Gender Industry by user select input ######### 
##### 1. Check it's in MD
##### 2. Subset (above MD)
##### 3. Render
        observe({
        req(input$selectindustry)
        gender_sub <- subset_county_industry()[subset_county_industry()$industry.Industry %in% input$selectindustry,]
        
        output$gender_industry <- renderPlot({
            GI <-ggplot(data = gender_sub, aes(x = gender, y = percentage, group = industry.Industry)) +
                geom_line(aes(color = industry.Industry, alpha = 1), size = 2) +
                geom_point(aes(color = gender, alpha = 1), size = 4) +
                ylim(0, 100) + 
                scale_colour_manual(values = c('pink','orange', "blue")) +
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
                    text = element_text(family = "Courier New", size = 20)
                )
            GI
        })
    })
        
########### Part 2: Gender Industry by user click map ######### 
##### 1. Check it's in MD
##### 2. Subset (above MD)
##### 3. Render
     observe({
        req(input$selectindustry1)
        gender_sub1 <- subset_county_industry1()[subset_county_industry1()$industry.Industry %in% input$selectindustry1,]
        output$gender_industry1 <- renderPlot({
            GI1 <-ggplot(data = gender_sub1, aes(x = gender, y = percentage, group = industry.Industry)) +
                geom_line(aes(color = industry.Industry, alpha = 1), size = 2) +
                geom_point(aes(color = input$industry.Industry, alpha = 1), size = 4) +
                ylim(0, 100) +
                theme(
                    panel.grid.major = element_blank(),
                    panel.grid.minor = element_blank(),
                    #  panel.border = element_blank(),
                    plot.background=element_rect(fill = '#262626'),
                    panel.background = element_rect(fill = '#262626'),
                    axis.text = element_text(color = 'white'),
                    axis.line.x = element_line(color = "grey"),
                    axis.line.y = element_line(color = "grey"),
                    plot.title = element_text(color = 'white'),
                    axis.title = element_text(color = 'white'),
                    text = element_text(family = "Courier New", size = 20)
                )
            GI1
        })
    }) 
    
    

    
    
    
    
############## Demographics Tab ######### 

    
########### A - Racial background circlepackeRs ######### 
######## Demo circles user select input #######      
##### 1. Check it's in MD
##### 2. Subset
    race_filter <- reactive({
        req(input$selectcounty)
        subset.data.frame(race, NAME==input$selectcounty)
    })
##### 3. Subset nodes
    race_node <- reactive({
        as.Node(race_filter())
    })
##### 4. Render
    output$race1 <- renderCirclepackeR({
        circlepackeR(race_node(), 
                     size = "r_count", 
                     color_max = "hsl(209, 82%, 59%)",
                     color_min = "hsl(210, 77%, 13%)"
        )
    })   
    
######## Demo circles user map click #######
##### 1. Check it's in MD
##### 2. Subset 
    race_filter1 <- reactive({
        req(input$map_shape_click)
        click <- input$map_shape_click
        click <- counties[as.character(counties$NAME) == click$id,]
        subset.data.frame(race, NAME==click$NAME)
    })
##### 3. Subset nodes
    race_node1 <- reactive({
        as.Node(race_filter1())
    })
##### 4. Render
#    output$race2 <- renderCirclepackeR({
#        circlepackeR(race_node1(), size = "r_count", 
#                     color_max = "hsl(209, 82%, 59%)",
#                     color_min = "hsl(36, 84%, 54%)")
#    })
    
    
    
######### A - Poverty Waffles #########    
    
######## poverty waffle by user select input #######        
###### 1. Check it's in MD
###### 2. Subset
    subset_county_poverty2 <-reactive({
        subset(counties1, NAME==input$selectcounty)
    })
###### 3. Render
    output$waffle <- renderPlot({
        waffle(c("At or below poverty line" = subset_county_poverty2()$All.Ages.in.Poverty.Percent,
                 "Above poverty line" = subset_county_poverty2()$not_pov), rows = 10, 
               colors = c("#2E9AFE", "#c4d6e5", "#c4d6e5"), 
               xlab = "One square = 1% of total population <br> Source: SAIPE (2018)",
               flip = TRUE) +
            ggtitle("Poverty in ", as.character(subset_county_poverty2()$NAME)) 
    })
    
######## poverty waffle by user map click #######  
###### 1. Check it's in MD
###### 2. Subset
    subset_county_poverty1 <-reactive({
        click <- input$map_shape_click
        click <- counties1[as.character(counties1$NAME) == click$id,]
        dplyr::filter(counties1, counties1$NAME==click$NAME)
    })
###### 3. Render
    output$waffle2 <- renderPlot({
        waffle(c("At or below poverty line" = subset_county_poverty1()$All.Ages.in.Poverty.Percent,
                 "Above poverty line" = subset_county_poverty1()$not_pov), rows = 10, 
               colors = c("#2E9AFE", "#c4d6e5", "#c4d6e5"), 
               xlab = "One square = 1% of total population <br> Source: SAIPE (2018)",
               flip = TRUE) +
            ggtitle("Poverty in ", as.character(subset_county_poverty1()$NAME))
    })
    
    

    
    
############# Environment Tab #############
    
######## Land waffle by user select input #######        
###### 1. Check it's in MD
###### 2. Subset
    subset_county_land <-reactive({
        subset(land, NAME==input$selectcounty)
    })
###### 3. Render
    output$l_waffle <- renderPlot({
    #    ggplot(data = land2, 
    #           aes(fill = cover_type, values = percent)) +
    #    geom_waffle(color = "white", size= 1.125, n_rows = 6) 
        waffle(c("water" = subset_county_land()$water,
                 "urban" = subset_county_land()$urban,
                 "scrub" = subset_county_land()$scrub,
                 "grass" = subset_county_land()$grass,
                 "wetland" = subset_county_land()$wetland,
                 "agland" = subset_county_land()$agland,
                 "barren" = subset_county_land()$barren,
                 "forest" = subset_county_land()$forest), rows = 10, 
               colors = c("#2E9AFE", "#AAB5BD", "#9D9E60", "#64E137", "#67AFA3", "#D8E137", "#98775B", "#336E29", "pink"), 
               xlab = "One square = 1% of total population <br> Source: SAIPE (2018)",
               flip = TRUE)
        })
        
    
}

########################################################################################
shinyApp(ui = ui, server = server)
