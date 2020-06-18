## App stuff
library(shiny)
library(shinydashboard)
#library(shinyBS)

## GIS and visualization stuff
library(leaflet)
library(sp)
library(rgdal)
library(ggplot2)
library(tidyr)
library(leafpop)


## SET PATH ##
path <- "C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/"
setwd(path)

################################# LOADING DATA #########################################
################POLYGONS
counties1 <- readOGR("shps/us_counties1.shp")
#counties <- read.csv("us_counties1.csv")
#counties <- as.data.frame(counties_csv)

states <- readOGR("shps/states_simp.shp")
#states_csv <- read.csv("states_simp.csv")
#states_csv <- as.data.frame(states_csv)

################COVID19 DATA
## County Level data covid
us_confirmed_long_jhu <- read.csv(file="updates/coviddata.csv")

## to update use this function
get_covid_update <- function(){
  jhu_url <- paste("https://raw.githubusercontent.com/CSSEGISandData/", 
                   "COVID-19/master/csse_covid_19_data/", "csse_covid_19_time_series/", 
                   "time_series_covid19_confirmed_US.csv", sep = "")
  
  #https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_US.csv
  
  us_confirmed_long_jhu <- read.csv(jhu_url) 
  nrow(us_confirmed_long_jhu)
  head(us_confirmed_long_jhu)
  summary(us_confirmed_long_jhu)
  us_confirmed_long_jhu <- us_confirmed_long_jhu[!is.na(us_confirmed_long_jhu$FIPS),] ## remove NA geoids
  unique(us_confirmed_long_jhu$Province_State)
  names(us_confirmed_long_jhu[12:ncol(us_confirmed_long_jhu)])
  
  ## plot an example
  i= 27
  plot(as.numeric(us_confirmed_long_jhu[i,12:ncol(us_confirmed_long_jhu)]),
       main=paste(us_confirmed_long_jhu$Admin2[i],
                  us_confirmed_long_jhu$Province_State[i],
                  us_confirmed_long_jhu$Country_Region[i],
                  sep=", ") 
  )
  
  names(us_confirmed_long_jhu)
  write.csv(us_confirmed_long_jhu,file="updates/coviddata.csv")
  return(us_confirmed_long_jhu)
  
}


##################################### UI ###############################################
ui <- dashboardPage(
    dashboardHeader(title = "COVID 19 National Resource Map", titleWidth = 400),
    dashboardSidebar(
        selectInput("selectstate", "Select State", (counties1$STATE_NAME)),
        selectInput("selectcounty", "Select County", choices = NULL),
        uiOutput("select2"),
        actionButton("zoom2location","Take me there")
    #    actionButton("go","Plot Data")
    ),
    dashboardBody( 
        tags$head(
        includeCSS("style.css"),
        includeCSS("https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Source+Code+Pro:wght@200&display=swap") ),
        tags$style(type = "text/css", "#map {height: calc(100vh - 80px) !important;}"),
        leafletOutput("map")
    #    plotOutput("plot")
    )
)
##################################### SERVER ###########################################
server <- function(session, input, output) {
  
########### SELECT STATES AND COUNTIES FUNCTIONS  
observeEvent(
  input$selectstate,
  updateSelectInput(session,"selectcounty", "Select County", 
                    choices = counties1$NAMELSAD[counties1$STATE_NAME==input$selectstate])
)
  

############ DISPLAY MAP  
   output$map <- renderLeaflet({
        
        leaflet() %>%
            setView(lng = -88, lat = 36.1980, zoom = 6) %>% 
            # Add tiles as baseGroup
       addProviderTiles(providers$CartoDB.DarkMatter) %>%
            addPolygons(data=counties1,  
                        color = "black", 
                        weight = 0.1,
                        opacity = 1.0, 
                        fillOpacity = 0.15, 
                        fillColor = "transparent",
                        group= "counties",
                        popup = popupGraph("plot"),
                        layerId = ~counties1$GEOID,
                   ) %>% 
           # addPolygons(data=states, 
            #            color = "black",
             #           weight = 0.1,
              #          opacity = 1.0, 
               #         fillOpacity = 0.15, 
                #        fillColor = "transparent",
                 #       group= "states"
         #   ) %>% 
            
        #     Layers control
            addLayersControl( baseGroups = c("TonerLite"),
                overlayGroups = c(
                  "counties"
               #   "states"),
                ),
                options = layersControlOptions(collapsed = FALSE) ) 
        
        
    })
 
############## ZOOM 2 LOCATION BUTTON
   observeEvent(input$zoom2location, {
     srow <- counties1[counties1$NAMELSAD==input$selectcounty,]
     leafletProxy("map")   %>%
       setView(
         lat = srow$Y,
         lng = srow$X,
         zoom = 16.25)
   })
   

 
############### CLICK ON MAP FUNCTION TO GET JHU COVID DATA LINKED TO COUNTIES
   observe({
     click <- input$map_shape_click
     if(is.null(click))
       return()   
     idx <- counties1[as.character(counties1$GEOID) == click$id,]
   #  idx <- counties1[as.character(counties1$GEOID) == "21111",]
     print(idx)
     idd <- us_confirmed_long_jhu[as.character(us_confirmed_long_jhu$FIPS) == click$id,]
  #   idd <- us_confirmed_long_jhu[as.character(us_confirmed_long_jhu$FIPS) == "21111",]
     head(idd)
     print(as.numeric(idd[,12:ncol(idd)]))
     
     print(paste(idd$Admin2,
                 idd$Province_State,
                 idd$Country_Region,
                 sep=", ") )
     print(click$id)
     
   })

   
########### CLICK ON MAP TO GET COVID DATA    
   ##?? a little confused with what this piece of code does  
   
   randomVals <- eventReactive(input$plot, {
     click <- input$map_shape_click
     idd <- us_confirmed_long_jhu[as.character(us_confirmed_long_jhu$FIPS) == click$id,  ] 
     idd
     as.numeric(idd)
      as.numeric(idd[,c(12:ncol(idd))])
   c(2,3,4,4,5,6,4,3,2,3,4,4,5,5,2,4)
   })

########### RENDER GRAPH     
   output$plot <- renderPlot({
     plot(randomVals())
     idd <- randomVals()
     plot(as.numeric(idd[,12:ncol(idd)]),
          main=paste(idd$Admin2,
                     idd$Province_State,
                     idd$Country_Region,
                     sep=", ") 
     )
     
   })
   
############ DOWNLOAD GRAPH   
  # observeEvent(input$go, {
   #  showModal(modalDialog(
    #   plotOutput("plot"),
     #  footer = NULL,
      # easyClose = T,
    #  downloadButton('downloadPlot', 'Download')
    # ))
   #})
      
}
########################################################################################
shinyApp(ui = ui, server = server)
