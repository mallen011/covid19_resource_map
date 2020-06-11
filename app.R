#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


#########  County Level Data giver..




library(shiny)
library(shinydashboard)


library(leaflet)
library(sp)
library(rgdal)
library(htmltools)
#library(DT)
library(ggplot2)


path <- "C:/Users/Clown Baby/Desktop/Countyapp/Countyapp"
setwd(path)



#############  INDATA GEO
list.files()
####  Add Geospatial data in map
## States
us_shp <- readOGR("shps","con_us_state")
us_shp@data$NAME <- as.character(us_shp@data$NAME)
## Counties
ct_shp <- readOGR("shps","ct_shp")
ct_shp <- ct_shp[ct_shp$STATEFP == "21",]
# Define UI for application that draws a histogram
ui <- dashboardPage(
    skin = "blue",
    dashboardHeader(titleWidth = 300, title = "Controls"),
    dashboardSidebar(width = 300,
                     
                     
                     #uiOutput("selectcounty"),
                     #actionButton("zoom2location","zoom2location")
                     
    ),
    dashboardBody(
        #  fluidRow(box(width = 12, leafletOutput(outputId = "map"))),
        # fluidRow(box(width = 12, dataTableOutput(outputId = "summary_table"))),
        tags$style(type = "text/css", "#map {height: calc(100vh - 80px) !important;}"),
        leafletOutput("stationmap")
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    

    output$stationmap <- renderLeaflet({ ## make map 1
        leaflet() %>%
            setView(lng = -83, lat = 37, zoom = 8.5)  %>% 
            #setView(lng = -88, lat = 36.1980, zoom = 6) %>% 
            # Add tiles as baseGroup
            addProviderTiles(providers$Stamen.TonerLite,
                             options = providerTileOptions(noWrap = TRUE),
                             group="TonerLite") %>%
            addProviderTiles(providers$Esri.WorldImagery,
                             options = providerTileOptions(noWrap = TRUE),
                             group="ESRI World") %>%
            # Add layers as overlayGroup
     #       addPolygons(data=us_shp, 
      #                  color = "black", weight = 0.1,
       #                 opacity = 1.0, fillOpacity = 0.15, fillColor = "transparent",
        #                group="US States")  %>%
         #   addPolygons(data=ct_shp, 
          #              color = "grey", weight = 0.1,
           #             opacity = 1.0, fillOpacity = 0.15, fillColor = "transparent",
            #            popup=paste0("<strong>","Name: ","</strong>", 
             #                        ct_shp$NAME, "<br><strong>", "GeoID: ",
              #                       "</strong>", ct_shp$GEOID, "<br><strong>", "LSAD: ",
               #                      "</strong>", ct_shp$NAMELSAD, "<br><strong>", 
                #                     "Part: ", "</strong>", ct_shp$COUNTYFP),
                 #       group="Counties")  %>%
            
            # Layers control
            addLayersControl(
                baseGroups = c("TonerLite", "ESRI World"),
                overlayGroups = c("US States","Counties"),
                options = layersControlOptions(collapsed = FALSE) ) 
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
