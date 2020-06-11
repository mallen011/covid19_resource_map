
## App stuff
library(shiny)
library(shinydashboard)
library(shinyBS)

## GIS and visualization stuff
library(leaflet)
library(sp)
library(rgdal)
library(ggplot2)
library(tidyr)


path <- "C:/Users/Clown Baby/Desktop/Countyapp/Countyapp"
setwd(path)

#################### COUNTIES POLYGONS ######################
#counties <- readOGR("polygons/1EKY_counties.shp")
## States
us_shp <- readOGR("shps","con_us_state")
us_shp <- readOGR("shps","states_simp")
us_shp@data$STATE_NAME <- as.character(us_shp@data$STATE_NAME)
head(us_shp@data)
## Counties
# ct_shp <- readOGR("shps","ct_shp")
# head(ct_shp@data)
# ct_pts <- readOGR("shps","ct_pts_us")
# head(ct_pts@data)
ct_shp <- readOGR("shps","us_counties_simp")
ct_shp <- ct_shp[ct_shp$STATEFP == "21",]
head(ct_shp@data)

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

#us_confirmed_long_jhu <- get_covid_update()


###### Limit to the state we want
#us_confirmed_long_jhu <- us_confirmed_long_jhu[us_confirmed_long_jhu$Province_State %in% c("Arkansas","Kentucky"),] ## ar and KY only
#unique(us_confirmed_long_jhu[us_confirmed_long_jhu$Province_State %in% c("Arkansas","Kentucky"),"Province_State"])
## do the shapefiles too




##########  GET THGE CENSUS Next
## see other chunk.

####################################################### UI ###
########################################################
ui <- dashboardPage(
  skin = "green",
  dashboardHeader(titleWidth = 500, title = "CoVid Resource Map"),
  dashboardSidebar(width = 300,
                   selectInput("selectcounty", "Recycling Options",c(us_shp$NAME)), 
                   selectInput("selectcounty", "Recycling Options",c(us_shp$NAME)),  
                  # checkboxGroupInput("select1", label = h3("Recycleables"),
                  #                     choices = c("Glass", "Aluminum" , "Plastics"),
                  #                     selected = 0),
                  uiOutput("select2"),
                  actionButton("go","Plot Data")
                  # bsModal("modalExample", "Your plot", "go", size = "large",
                  #         plotOutput("plot"),
                  #         downloadButton('downloadPlot', 'Download')
                  #         )
                  
                   ),
  dashboardBody(
    
  #  fluidRow(box(width = 12, leafletOutput(outputId = "map"))),
   # fluidRow(box(width = 12, dataTableOutput(outputId = "summary_table"))),
    tags$style(type = "text/css", "#map {height: calc(100vh - 80px) !important;}"),
    leafletOutput("map")
  )
)


####################################################### SERVER ###########################################################
server <- function(input, output) {
  
  
  # output$select2 <- renderUI({
  #   if(input$select1 == "All Locations"){
  #     selectInput("select2", "All Locations",RE$name)
  #   }else if(input$select1 == "Glass"){
  #     selectInput("select2", "Accepts Glass",RE$name[as.character(RE$GL) %in% "Yes"])
  #   }else if(input$select1 == "Aluminum"){
  #     selectInput("select2", "Accepts Aluminum",RE$name[as.character(RE$AL) %in% "Yes"])
  #   }else if(input$select1 == "Plastic"){
  #     selectInput("select2", "Accepts Plastic",RE$name[as.character(RE$PL) %in% "Yes"])
  #   }
  # })
  
  
  # check: https://stackoverflow.com/questions/38932230/reactive-mapping-after-checkboxgroupinput 
  output$map <- renderLeaflet({
    
    leaflet() %>%
      #setView(lng = -83.5, lat = 37.6, zoom = 8.5)  %>% 
      setView(lng = -88, lat = 36.1980, zoom = 6) %>% 
      # Add tiles as baseGroup
      addProviderTiles(providers$Stamen.Toner,
                       options = providerTileOptions(noWrap = TRUE),
                       group="Toner") %>%
      addProviderTiles(providers$Stamen.TonerLite,
                       options = providerTileOptions(noWrap = TRUE),
                       group="TonerLite") %>%
      addProviderTiles(providers$Esri.WorldImagery,
                       options = providerTileOptions(noWrap = TRUE),
                       group="ESRI World") %>%
      # Add layers as overlayGroup
      addPolygons(data=us_shp, 
                  color = "black", weight = 0.1,
                  opacity = 1.0, fillOpacity = 0.15, fillColor = "transparent",
                  group="US States")  %>%
      addPolygons(data=ct_shp, 
                  color = "grey", weight = 0.1,
                  opacity = 1.0, fillOpacity = 0.15, fillColor = "transparent",
                  popup=paste0("<strong>","Name: ","</strong>", 
                               ct_shp$NAME, "<br><strong>", "GeoID: ",
                               "</strong>", ct_shp$GEOID, "<br><strong>", "LSAD: ",
                               "</strong>", ct_shp$NAMELSAD, "<br><strong>", 
                               "Part: ", "</strong>", ct_shp$COUNTYFP),
                  layerId = ~ct_shp$GEOID,   ## LayerID defined
                  group="Counties")  %>%
      
      # Layers control
      addLayersControl(
        baseGroups = c("Toner", "TonerLite", "ESRI World"),
        overlayGroups = c("US States","Counties"),
        options = layersControlOptions(collapsed = FALSE) ) 
    
    
  })
  
  observe({
    click <- input$map_shape_click
    if(is.null(click))
      return()
    
    ## use the click to access the zoom and set the view according to these
    ## the click$id is now returned with the 'name' of the state
    ## because we specified it in the LayerId argument
    # idx <- which(as.character(ct_shp$GEOID) == click$id)
    # print(idx)
    idx <- ct_shp[as.character(ct_shp$GEOID) == click$id,]
    #idx <- ct_shp[as.character(ct_shp$GEOID) == "21111",]
    print(idx)
    idd <- us_confirmed_long_jhu[as.character(us_confirmed_long_jhu$FIPS) == click$id,]
    #idd <- us_confirmed_long_jhu[as.character(us_confirmed_long_jhu$FIPS) == "21111",]
    head(idd)
    print(as.numeric(idd[,12:ncol(idd)]))
    
    print(paste(idd$Admin2,
                idd$Province_State,
                idd$Country_Region,
                sep=", ") )
    print(click$id)
    
    # leafletProxy("livemap") %>% 
    #   setView(lng = click$lng, lat = click$lat, zoom = z)
  })
  

  
  randomVals <- eventReactive(input$go, {
    click <- input$map_shape_click
    idd <- us_confirmed_long_jhu[as.character(us_confirmed_long_jhu$FIPS) == click$id,  ] 
    idd
    #as.numeric(idd)
    # as.numeric(idd[,c(12:ncol(idd))])
    #c(2,3,4,4,5,6,4,3,2,3,4,4,5,5,2,4)
  })
  
  output$plot <- renderPlot({
    #plot(randomVals())
    idd <- randomVals()
    plot(as.numeric(idd[,12:ncol(idd)]),
         main=paste(idd$Admin2,
                    idd$Province_State,
                    idd$Country_Region,
                    sep=", ") 
    )
    
    
  })
  observeEvent(input$go, {
    showModal(modalDialog(
      plotOutput("plot"),
      footer = NULL,
      easyClose = T,
      downloadButton('downloadPlot', 'Download')
    ))
  })



}
  
 
################################################################################################################
shinyApp(ui = ui, server = server)
