library(circlepackeR) 
library(shiny)

source("C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/al_filter.R", local = TRUE)
source("C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/ar_filter.R", local = TRUE)
source("C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/az_filter.R", local = TRUE)
source("C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/ca_filter.R", local = TRUE)
source("C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/co_filter.R", local = TRUE)
source("C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/ct_filter.R", local = TRUE)
race_filter1 <- reactive({
   if(grepl("-AL", input$selectcounty)){
    return(al_filter())
  }
  else if (grepl("-AR", input$selectcounty)){
    return (ar_filter())
  }
  else if (grepl("-AZ", input$selectcounty)){
    return (az_filter())
  }
  else if (grepl("-CA", input$selectcounty)){
    return (ca_filter())
  }
  else if (grepl("-CO", input$selectcounty)){
    return (co_filter())
  }
  else if (grepl("-CT", input$selectcounty)){
    return (ct_filter())
  }
 # else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
 # }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
 # }  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
 #   return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
#  else if (grepl("-AR", input$selectcounty)){
#    return (ar_filter())
#  }
  
  
  else {
    return(" ERROR")
  }
})


#race_filterx <- reactive({
# if input$selectcounty[grepl("-AL", input$selectcounty[["STATE_NAME.X"]]), ]
#  })

######### WASHINGTON ########


