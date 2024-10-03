library(shiny)

shinyServer(
   function(input,output){
     output$airqualityBarplot <- renderPlot({
       airq_agg <- aggregate(airquality[,input$inField] ~ airquality$Month, airquality, mean)
       barplot(airq_agg[,2], names.arg = airq_agg$Month)
     })
   }
)