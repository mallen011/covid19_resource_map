library(shiny)
library(shinydashboard)
library(tidyverse)
#library(data.tree)
#library(circlepackeR) 
library(ggplot2)
library(ggiraph)

path <- "C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/"
setwd(path)

################################# LOADING DATA #########################################


## load files, which have been cleaned and organized for this app:
source("C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/load_and_organize.R")

#counties1 <- subset.data.frame(counties1, STATE_NAME.x=="AL")
#race <- subset.data.frame(race, STATE_NAME=="AL")
#race$makeup <-as.factor(race$makeup)
#race$STATE_NAME <- as.character(race$STATE_NAME)
#race <- unique(race)
#df <-subset.data.frame(df, Province_State=="AL")
#um_nodes <- as.Node(race)
#df <- subset.data.frame(df, Admin2=="Autauga-AL")

##################################### UI ###############################################

ui <- dashboardPage(
    dashboardHeader(),
    dashboardSidebar(
        selectInput("selectstate", "Select State", unique(counties1$STATE_NAME.x)),
        selectInput("selectcounty", "Select County", choices = NULL)
    ),
    dashboardBody()
   )

##################################### SERVER ###########################################
server <- function(session, input, output) {
 
    ########### SELECT STATES AND COUNTIES FUNCTIONS IN SELECTINPUT###### 
    observeEvent(
        input$selectstate,
        updateSelectInput(session,"selectcounty", "Select County", 
                          choices = unique(df$Admin2[df$Province_State==input$selectstate]))
    )
  
##2. observe event, render modal dialogue for select input  
     observeEvent(input$selectcounty, {
        click <- input$selectcounty
        if(is.null(click))
            return() 
        {showModal(modalDialog(
            footer = NULL,
            easyClose = T,
            girafeOutput("industry"),
            selectInput("selectindustry", "Select industry", unique(subset_county_industry()$industry.Industry)),
            plotOutput("gender_industry"),
            plotOutput("waffle")
            
        ))
            }
    }) 
     
     
     
     #### Industry bar graph
     ## 1. make sure it's in modal box
     ## 2. subset data
        subset_county_industry<- reactive({
         dplyr::filter(industry, industry$industry.us_industry.NAME==input$selectcounty)
      })
       library(ggtextures)
     ## 3. render plot
         output$industry <- renderGirafe({
          ind <- ggplot(data = subset_county_industry(),
                         aes(industry.Industry, 
                             industry.total,
                             fill = industry.Industry, 
                             data_id = industry.Industry,
                            tooltip=industry.Industry)) + 
           ggtitle("Industry in ", subset_county_industry()$industry.us_industry.NAME) +
     ### WHY DOESNY TOOLTIP WORK
       geom_bar_interactive(
        data = subset_county_industry(), aes(industry.Industry, 
                                                              industry.total, 
                                                               fill = industry.Industry,
                                                             data_id=industry.Industry
                                                              ), 
                        stat="identity", position= position_dodge(0.9), width = 1) +
          coord_flip() +
         guides(fill = "none") +
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
               axis.title = element_text(color = 'white')
         ) +
           xlab("Industry") + ylab("Employment count")
         ggiraph(code = print(ind), hover_css="fill:blue")
         girafe(ggobj = ind) %>% 
           girafe_options(ggiraph::opts_hover(css="fill:black;cursor:pointer;"))
       })

         output$gend_text <- renderText({"The following graph displays the gender balance of each industry type per county. 
  IS THERE A GENDER RELATIONSHIP W CORONAVIRUS? SOURCE"})        
         
         ## 1. make sure it's in modal dialog
         ## 2. subset -- used subset_county_industry() reactive from above
         # reactive values --- display gender plot based on selected industry based on county
         ## 3. display
          observe({
             req(input$selectindustry)
             gender_sub <- subset_county_industry()[subset_county_industry()$industry.Industry %in% input$selectindustry,]
             output$gender_industry <- renderPlot({
               GI <-ggplot(data = gender_sub, aes(x = gender, y = percentage, group = industry.Industry)) +
                 geom_line(aes(color = industry.Industry, alpha = 1), size = 2) +
                 geom_point(aes(color = input$industry.Industry, alpha = 1), size = 4) +
                 ylim(0, 100) + 
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
                   axis.title = element_text(color = 'white')
                 )
              GI
             })
            }) 
         
         
         
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
         
        }
########################################################################################
    shinyApp(ui = ui, server = server)