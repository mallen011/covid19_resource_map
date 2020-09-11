###LOAD LIBRARIES
library(shiny)
library(shinydashboard)
library(plotly)

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
    actionButton("report", "Get County Report"),
    actionButton("zoom2location","Zoom to County"),
    actionButton("sources", "Get Data Sources"),
    actionButton("code","Get Code",
                 onclick ="window.open('https://github.com/mallen011/covid19_resource_map')"),
    actionButton("workflow", "See Workflow")
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
  library(htmltools)
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
to access this source. <br /> </h2>
<p>
             <h1> Bibliography </h1>
<h2> Nicola, Maria et al. “The socio-economic implications of the coronavirus pandemic (COVID-19): A review.”
International journal of surgery (London, England) vol. 78 (2020): 185-193. doi:10.1016/j.ijsu.2020.04.018
<br /> <br /> 
Laster Pirtle, Whitney N. “Racial Capitalism: A Fundamental Cause of Novel Coronavirus (COVID-19) Pandemic 
Inequities in the United States.” Health education & behavior : the official publication of the 
Society for Public Health Education vol. 47,4 (2020): 504-508. doi:10.1177/1090198120922942 
<br /> <br /> 
Adhikari S, Pantaleo NP, Feldman JM, Ogedegbe O, Thorpe L, Troxel AB. Assessment of Community-Level Disparities
in Coronavirus Disease 2019 (COVID-19) Infections and Deaths in Large US Metropolitan Areas. JAMA Netw Open. 
2020;3(7):e2016938. doi:10.1001/jamanetworkopen.2020.16938
<br /> <br /> 
Ahmed, Faheem, et al. “Why Inequality Could Spread COVID-19.” The Lancet Public Health, vol. 5, no. 5, 2020, 
doi:10.1016/s2468-2667(20)30085-2. 
<br /> <br /> 
Gamio, Lazaro. “The Workers Who Face the Greatest Coronavirus Risk.” The New York Times, 15 Mar. 2020,
www.nytimes.com/interactive/2020/03/15/business/economy/coronavirus-worker-risk.html. 
<br /> <br /> 
Spagnolo, Primavera A., et al. “Sex and Gender Differences in Health: What the COVID-19 Pandemic Can Teach Us.” 
Annals of Internal Medicine, vol. 173, no. 5, 2020, pp. 385–386., doi:10.7326/m20-1941. 
<br /> <br /> 
Mazzei, Patricia. “Florida`s Summer of Dread.” The New York Times, 2 Aug. 2020. 
<br /> <br /> 
Collins, Caitlyn, et al. “COVID‐19 and the Gender Gap in Work Hours.” Gender, Work &amp; Organization, 2020,
doi:10.1111/gwao.12506. 
<br /> <br /> 
             </h2>'
         
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
  observeEvent(input$report, {
    click <- input$report
    if(is.null(click))
      return() 
    {showModal(modalDialog(
      footer = NULL,
      easyClose = T,
      textOutput("name"),
      tabsetPanel(type = "tabs",
                  tabPanel("Coronavirus",
                           br(),
                           textOutput("death"),
                           br(),
                           textOutput("covid_text"), 
                           plotlyOutput("plot", 
                                        width = "700px", 
                                        height = "700px")),
                  tabPanel("Race",
                           textOutput("race_text"),
                           br(),
                           textOutput("circle_title"),
                           #  h1("County Racial Diversity", inline = FALSE),
                           circlepackeROutput(outputId = "race1",
                                              width = "100%", 
                                              height = "750px")),
                  tabPanel("Income",
                           textOutput("pov_text"),
                           br(),
                           textOutput("pov_title"),
                           plotOutput("waffle", 
                                      width = "700px", 
                                      height = "700px"),
                  ),
                  tabPanel("Industry", 
                           textOutput("ind_text"),
                           br(),
                           textOutput("ind_title"),
                           plotOutput("industry", height = "750px", width = "700px"),
                           textOutput("gend_text"),
                           br(),
                           textOutput("gen_title"),
                           selectInput("selectindustry", "Select industry", 
                                       unique(subset_county_industry()$industry.Industry)),
                           plotOutput("gender_industry")),
                  tabPanel("Environment",
                           textOutput("land_text"),
                           br(),
                           textOutput("land_title"),
                           plotOutput("l_waffle", 
                                      width = "800px", 
                                      height = "700px")
                  )
      )
    ))
      }
  }) 
  
  
  ########### MD PART 2: BY USER CLICK MAP #############
  
  ###### 1. Render map so user can click on it for MD popup
  output$map <- renderLeaflet({
    leaflet() %>%
      setView(lng = -88, lat = 36.1980, zoom = 6) %>% 
      #   addProviderTiles(providers$CartoDB.DarkMatter, group = "CartoDB.DarkMatter") %>%
      addProviderTiles(providers$Esri.WorldImagery, group = "Esri.WorldImagery") %>%
      addProviderTiles(providers$CartoDB.Positron, group = "CartoDB.Positron") %>%
      addPolygons(data=counties,  
                  color = "black", 
                  weight = 0.1,
                  opacity = .4, 
                  fillOpacity = 0.15, 
                  fillColor = "transparent",
                  group= "counties",
                  layerId = ~counties$NAME
      ) %>% 
      addLayersControl( baseGroups = c(
        #   "CartoDB.DarkMatter", 
        "CartoDB.Positron",
        "Esri.WorldImagery"
      ),
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
  
  ###### 1. A - subset covid-19 for map click in MD and for both industry plots
  subset_county1<- reactive({
    click <- input$map_shape_click
    click <- counties1[as.character(counties1$NAME) == click$id,]
    dplyr::filter(df, df$Admin2==click$NAME)
  }) 
  
  ###### 1. B - subset industry_gender for map click in MD and for both industry plots
  subset_county_industry1<- reactive({
    click <- input$map_shape_click
    click <- counties1[as.character(counties1$NAME) == click$id,]
    dplyr::filter(industry, industry$industry.us_industry.NAME==click$NAME)
  }) 
  
  observeEvent(input$map_shape_click, {
    click <- input$map_shape_click
    if(is.null(click))
      return() 
    {showModal(modalDialog(
      footer = NULL,
      easyClose = T,
      textOutput("name1"),
      tabsetPanel(type = "tabs",
                  tabPanel("Coronavirus",
                           br(),
                           textOutput("death1"),
                           br(),
                           textOutput("covid_text"), 
                           plotlyOutput("plot1", 
                                        width = "700px", 
                                        height = "700px")),
                  tabPanel("Race",
                           textOutput("race_text"),
                           br(),
                           textOutput("circle_title"),
                           #  h1("County Racial Diversity", inline = FALSE),
                           circlepackeROutput(outputId = "race2",
                                              width = "100%", 
                                              height = "750px")),
                  tabPanel("Income",
                           textOutput("pov_text"),
                           br(),
                           textOutput("pov_title"),
                           plotOutput("waffle2", 
                                      width = "700px", 
                                      height = "700px"),
                  ),
                  tabPanel("Industry", 
                           textOutput("ind_text"),
                           br(),
                           textOutput("ind_title"),
                           plotOutput("industry1", height = "750px", width = "700px"),
                           textOutput("gend_text"),
                           br(),
                           textOutput("gen_title"),
                           selectInput("selectindustry1", "Select industry", 
                                       unique(subset_county_industry1()$industry.Industry)),
                           plotOutput("gender_industry1")),
                  tabPanel("Environment",
                           textOutput("land_text"),
                           br(),
                           textOutput("land_title"),
                           plotOutput("l_waffle2", 
                                      width = "800px", 
                                      height = "700px")
                  )
      )
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
  The numbers are updated everyday according to county and state reports, and gathered and shared by Johns Hopkins University Center for Systems Science 
  and Engineering's (JHU CSSE) public Github repositories. The following tabs display statistics for each county's demographic and industrial makeup. While research
  on this public health crisis is still growing, there have been recorded trends that tie the rise and impact of the pandemic
  to socioeconomic factors such as race, income and industry of U.S. communities (Nicola et al., 2020).")
  })    
  
  ##### C 1 - deaths covid by user selectinput
  ##1.  subset 
  subset_death <- reactive({
    dplyr::filter(death, death$Admin2==input$selectcounty)
  })
  
  ##2.  convert date to "d m,y"
  new_date <- reactive({
    format(subset_death()$date, "%b %d, %Y") 
  })   
  
  ##3.  show deaths per county      
  output$death <- renderText({
    paste0(prettyNum(tail(subset_death()$value, n=1)), " deaths in ",
           unique(as.character(subset_county()$Admin2)), " as of ", 
           prettyNum(tail(new_date(), n=1))
    )
  })
  
  ##### C 2 - deaths covid by user click map
  ##1.  subset 
  subset_death1 <- reactive ({
    dplyr::filter(death, death$Admin2==subset_county_by_click()$Admin2)
  })
  
  ##2.  convert date to "d m,y"
  new_date1 <- reactive({
    format(subset_death1()$date, "%b %d, %Y") 
  })     
  
  ##3.  show deaths per county
  output$death1 <- renderText({
    paste0(prettyNum(tail(subset_death1()$value, n=1)), " deaths in ",
           unique(as.character(subset_county1()$Admin2)), " as of ", 
           prettyNum(tail(new_date1(), n=1)) 
    )
  })
  
  
  ##### D - Poverty text
  output$pov_text <- renderText({
    HTML("Families living at or below the poverty line are acutely vulnerable to the risks of viral infection (Faheem et al., 2020).
       The spread of the coronovirus has exacerbated this already-existing problem. Key reasons for this vulnerability
       are linked to lack of health support, and by the fact working-class individuals often hold 'essential' jobs, increasing
       that vulnerability further (Adhikari, 2020; Pirtle 2020). 
       The chart below displays county poverty rates per one hundred people.")
  }) 
  
  ##### E - Race text
  output$race_text <- renderText({
    HTML("Trends indicate that the coronavirus has a higher spread and mortality rate amongst
    U.S. minority groups, namely black and hispanic Americans (Pirtle, 2020). This relationship is due to the high
    rate of Americans of color who hold 'essential' jobs and have less health support than their white counterparts
    (Adhikari, 2020; Pirtle 2020).
    This clickable graph shows county racial makeup 
    between men and women, and hispanic and non-hispanic groups.")
  })   
  
  ##### F - Industry text
  output$ind_text <- renderText({
    HTML("The graph below shows us which industry dominates each county. Research is still gathering on the pandemic
        spread, but local and national news outlets are reporting 'blooms' of viral spread in the manufacturing sector,
        hospitals, and schools (Lazaro, 2020). 'Essential' jobs requiring workers to be in close proximity
        to other people indoors, such as meat-packing plants and school educators put
        employees at a higher risk of infection (Lazaro, 2020).")
  }) 
  
  ##### G - Industry Gender text
  output$gend_text <- renderText({
    HTML("The following graph displays the gender balance of each industry type per county. The relationship between
         gender and the spread of the coronavirus is still being researched, preliminary studies have found that
         while infection rate is about equal between the two sexes globally, men  mayhave a slightly higher 
         mortality rate (Spagnolo et al., 2020). 
         Economic impact is still unraveling, but already, there are trends that in heterosexual, dual parent-households,
         mothers are significantly more likely to see a reduction in their work hours compared to their spouses (Collins et al., 2020).")
  })
  
  ##### H - land text
  output$land_text <- renderText({
    HTML("The relationship between the spread of COVID-19 and land cover/use is still being studied, numerous local and
        national news outlets have reported 'blooms' of viral spread at busy beaches (Mazzei, 2020). Urban centers are also particulary
        vulnerable to the spread, as higher population density allows for a swifter transmission of the virus.
             The following graph displays landcover type of this county.")
  })
  
  
  ##### I - circlepackeR title
  library(htmltools)
  output$circle_title <- renderText({
    HTML('County Racial Diversity')
  })
  
  ##### J - pov waffle title
  output$pov_title <- renderText({
    HTML('County Poverty')
  })
  
  ##### K - land waffle title
  output$land_title <- renderText({
    HTML('County Land Cover')
  })  
  
  ##### L - industry title
  output$ind_title <- renderText({
    HTML('County Employment per Industry')
  })
  
  ##### M - gender industry title
  output$gen_title <- renderText({
    HTML('County Gender Percentage per Industry')
  })
  
  
  
  ######################## !PLOTS! !PLOTS! PLOTS, PLOTS, PLOTS, PLOTS! ####################   
  
  
  
  
  ############## Coronovirus Tab ######### 
  
  
  
  ########### Part 1: by user select input #########   
  ###### 1. Check it's in MD
  ###### 2. Subset (above MD)
  ###### 3. Render
  output$plot <-renderPlotly({
    p <-  ggplot() + 
      geom_area(data = subset_county(), aes(x = date, y = value), fill = "#FCC99B") +
      geom_line(data = subset_county(), aes(x = date, y = value), color = "#D59E6D") +
      geom_area(data = subset_death(), aes(x = date, y = value), fill = "#D36E13") +
      geom_line(data = subset_death(), aes(x = date, y = value), color = "#9F520C") +
      ggtitle("Daily Cases of Covid-19") +
      theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        plot.background=element_rect(fill = '#353737', color = NA),
        panel.background = element_rect(fill = '#353737', color = NA),
        axis.text = element_text(color = 'white'),
        axis.line.x = element_line(color = NA),
        axis.line.y = element_line(color = NA),
        plot.title = element_text(color = 'white'),
        axis.title = element_text(color = 'white'),
        text = element_text(family = "Calibri Light", size = 20)) +
      geom_point(data = subset_county(), aes(x = date, y = value),
                 color = "#D59E6D", alpha= 0.9, size = 0.1)  + 
      geom_point(data = subset_death(), aes(x = date, y = value), color = "#9F520C", alpha= 0.9, size = 0.1) +
      xlab("Date") + ylab("Count")
    
    ###### FIX THIS
    ggplotly(p)
    p
  }) 
  
  ########### Part 2: by user click map ######### 
  
  
  ##### 1. Check it's in MD
  ##### 2. Subset (above MD)
  ##### 3. Render
  output$plot1 <-renderPlotly({
    p <-  ggplot() + 
      geom_area(data = subset_county1(), aes(x = date, y = value), fill = "#FCC99B") +
      geom_line(data = subset_county1(), aes(x = date, y = value), color = "#D59E6D") +
      geom_area(data = subset_death1(), aes(x = date, y = value), fill = "#D36E13") +
      geom_line(data = subset_death1(), aes(x = date, y = value), color = "#9F520C") +
      ggtitle("Daily Cases of Covid-19") +
      theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        plot.background=element_rect(fill = '#353737', color = NA),
        panel.background = element_rect(fill = '#353737', color = NA),
        axis.text = element_text(color = 'white'),
        axis.line.x = element_line(color = NA),
        axis.line.y = element_line(color = NA),
        plot.title = element_text(color = 'white'),
        axis.title = element_text(color = 'white'),
        text = element_text(family = "Calibri Light", size = 20)) +
      geom_point(data = subset_county1(), aes(x = date, y = value),
                 color = "#D59E6D", alpha= 0.9, size = 0.1)  + 
      geom_point(data = subset_death1(), aes(x = date, y = value), color = "#9F520C", alpha= 0.9, size = 0.1) +
      xlab("Date") + ylab("Count")
    
    ggplotly(p)
    p
  })   
  
  ############## Economics Tab ######### 
  
  
  
  
  ########### Part 1: Industry by user select input ######### 
  
  ##### 1. Make sure it's in modal.
  ##### 2. Subset - this plot's subset is above the MD
  output$industry <- renderPlot({
    ggplot(data = subset_county_industry(), aes(industry.Industry, 
                                                industry.total
    )) + 
      geom_segment(size = 1,
                   aes(
                     x=industry.Industry, 
                     xend=industry.Industry, 
                     y=0, 
                     yend=industry.total),
                   color = "#D36E13") +
      scale_x_discrete(labels = function(industry.Industry) str_wrap(industry.Industry, width = 10)) +
      coord_flip() +
      guides(fill = "none") +
      geom_image(aes(industry.Industry, image = image), 
                 size = 0.04, 
                 by = "height",
                 asp = 0.5,
                 hjust = 9
      ) +
      theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        plot.background=element_rect(fill = '#353737', color = '#353737'),
        panel.background = element_rect(fill = '#353737', color = '#353737'),
        axis.text = element_text(color = 'white'),
        axis.line.x = element_line(color = NA),
        axis.line.y = element_line(color = NA),
        plot.title = element_text(color = 'white'),
        axis.title = element_text(color = 'white'),
        text = element_text(family = "Calibri Light", size = 20),
        legend.position="none"
      ) +
      xlab("Industry") + ylab("Employment count")
  })
  
  ########### Part 2: Industry by user click map ######### 
  output$industry1 <- renderPlot({
    ggplot(data = subset_county_industry1(), aes(industry.Industry, 
                                                 industry.total
    )) + 
      geom_segment(size = 1,
                   aes(
                     x=industry.Industry, 
                     xend=industry.Industry, 
                     y=0, 
                     yend=industry.total),
                   color = "#D36E13") +
      scale_x_discrete(labels = function(industry.Industry) str_wrap(industry.Industry, width = 10)) +
      coord_flip() +
      guides(fill = "none") +
      geom_image(aes(industry.Industry, image = image), 
                 size = 0.04, 
                 by = "height",
                 asp = 0.5,
                 hjust = 9
      ) +
      theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        plot.background=element_rect(fill = '#353737', color = '#353737'),
        panel.background = element_rect(fill = '#353737', color = '#353737'),
        axis.text = element_text(color = 'white'),
        axis.line.x = element_line(color = NA),
        axis.line.y = element_line(color = NA),
        plot.title = element_text(color = 'white'),
        axis.title = element_text(color = 'white'),
        text = element_text(family = "Calibri Light", size = 20),
        legend.position="none"
      ) +
      xlab("Industry") + ylab("Employment count")
  })
  
  
  
  
  ########### Part 1: Gender Industry by user select input ######### 
  ##### 1. Check it's in MD
  ##### 2. Subset (above MD)
  ##### 3. Render
  observe({
    req(input$selectindustry)
    gender_sub <- subset_county_industry()[subset_county_industry()$industry.Industry %in% input$selectindustry,]
    ## Maybe add geom_line of all industry types   
    output$gender_industry <- renderPlot({
      GI <-ggplot() +
        geom_line(data = subset_county_industry(), 
                  aes(x = gender, y = percentage, group = industry.Industry),
                  size = 1, color = "#FDE9D8") +
        geom_line(data = gender_sub, 
                  aes(x = gender, y = percentage, group = industry.Industry),
                  size = 1.5, color = "#D36E13") +
        ylim(0, 100) + 
        theme(
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.border = element_blank(),
          plot.background=element_rect(fill = '#353737', color = NA),
          panel.background = element_rect(fill = '#353737', color = NA),
          axis.text = element_text(color = 'white'),
          axis.line.x = element_line(color = NA),
          axis.line.y = element_line(color = NA),
          plot.title = element_text(color = 'white'),
          axis.title = element_text(color = 'white'),
          text = element_text(family = "Calibri Light", size = 20),
          legend.position="none"
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
      GI <-ggplot() +
        geom_line(data = subset_county_industry1(), 
                  aes(x = gender, y = percentage, group = industry.Industry),
                  size = 1, color = "#FDE9D8") +
        geom_line(data = gender_sub1, 
                  aes(x = gender, y = percentage, group = industry.Industry),
                  size = 1.5, color = "#D36E13") +
        ylim(0, 100) + 
        theme(
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.border = element_blank(),
          plot.background=element_rect(fill = '#353737', color = NA),
          panel.background = element_rect(fill = '#353737', color = NA),
          axis.text = element_text(color = 'white'),
          axis.line.x = element_line(color = NA),
          axis.line.y = element_line(color = NA),
          plot.title = element_text(color = 'white'),
          axis.title = element_text(color = 'white'),
          text = element_text(family = "Calibri Light", size = 20),
          legend.position="none"
        )
      GI
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
                 color_max = "hsl(28, 60%, 67%)",
                 color_min = "hsl(28, 91%, 24%)")
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
  output$race2 <- renderCirclepackeR({
    circlepackeR(race_node1(), size = "r_count", 
                 color_max = "hsl(28, 60%, 67%)",
                 color_min = "hsl(28, 91%, 24%)")
  })
  
  
  
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
           colors = c( "#D36E13", "#FDE9D8", "#FDE9D8"), 
           xlab = "One square = 1% of total population <br> Source: SAIPE (2018)",
           flip = TRUE) +
      #  ggtitle("County Poverty") +
      theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        plot.background=element_rect(fill = '#353737', color = '#353737'),
        panel.background = element_rect(fill = '#353737', color = '#353737'),
        axis.text = element_text(color = 'white'),
        axis.line.x = element_line(color = NA),
        axis.line.y = element_line(color = NA),
        plot.title = element_text(color = 'white'),
        axis.title = element_text(color = 'white'),
        text = element_text(family = "Calibri Light", size = 20),
        legend.text = element_text(color = 'white'),
        legend.position="none"
      )
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
           colors = c( "#D36E13", "#FDE9D8", "#FDE9D8"), 
           xlab = "One square = 1% of total population <br> Source: SAIPE (2018)",
           flip = TRUE) +
      theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        plot.background=element_rect(fill = '#353737', color = '#353737'),
        panel.background = element_rect(fill = '#353737', color = '#353737'),
        axis.text = element_text(color = 'white'),
        axis.line.x = element_line(color = NA),
        axis.line.y = element_line(color = NA),
        plot.title = element_text(color = 'white'),
        axis.title = element_text(color = 'white'),
        text = element_text(family = "Calibri Light", size = 20),
        legend.text = element_text(color = 'white'),
        legend.position="none"
      )
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
           colors = c("#1277BF", "#65696C", "#9EAB26", "#63AB26", "#26AB96", "#AB9B26", "#AB3A26", "#4A8861", "pink"), 
           xlab = "One square = 1% of land cover <br> Source: NCLD (2016)",
           flip = TRUE) +
      theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        plot.background=element_rect(fill = '#353737', color = '#353737'),
        panel.background = element_rect(fill = '#353737', color = '#353737'),
        axis.text = element_text(color = 'white'),
        axis.line.x = element_line(color = NA),
        axis.line.y = element_line(color = NA),
        plot.title = element_text(color = 'white'),
        axis.title = element_text(color = 'white'),
        text = element_text(family = "Calibri Light", size = 20),
        legend.text = element_text(color = 'white')
      )
  })
  
  ######## Land waffle by user select input #######  
  ###### 1. Check it's in MD
  ###### 2. Subset
  subset_county_land2 <-reactive({
    click <- input$map_shape_click
    click <- land[as.character(land$NAME) == click$id,]
    dplyr::filter(land, land$NAME==click$NAME)
  })
  ###### 3. Render
  output$l_waffle2 <- renderPlot({
    waffle(c("water" = subset_county_land2()$water,
             "urban" = subset_county_land2()$urban,
             "scrub" = subset_county_land2()$scrub,
             "grass" = subset_county_land2()$grass,
             "wetland" = subset_county_land2()$wetland,
             "agland" = subset_county_land2()$agland,
             "barren" = subset_county_land2()$barren,
             "forest" = subset_county_land2()$forest), rows = 10, 
           colors = c("#1277BF", "#65696C", "#9EAB26", "#63AB26", "#26AB96", "#AB9B26", "#AB3A26", "#4A8861", "pink"), 
           xlab = "One square = 1% of land cover <br> Source: NCLD (2016)",
           flip = TRUE) +
      theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        plot.background=element_rect(fill = '#353737', color = '#353737'),
        panel.background = element_rect(fill = '#353737', color = '#353737'),
        axis.text = element_text(color = 'white'),
        axis.line.x = element_line(color = NA),
        axis.line.y = element_line(color = NA),
        plot.title = element_text(color = 'white'),
        axis.title = element_text(color = 'white'),
        text = element_text(family = "Calibri Light", size = 20),
        legend.text = element_text(color = 'white')
      )
  })
  
  
  
  
}

########################################################################################
shinyApp(ui = ui, server = server)
