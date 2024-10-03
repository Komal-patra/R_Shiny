library(shiny)

fluidPage(
  titlePanel("Welcome to visualisation of Bar chart on the fly"),
  sidebarLayout(
    sidebarPanel(
      selectInput("inState","select a field to create histogram",
                  choices = names(airquality[,1:4]) ),
    ),
      mainPanel(
        plotOutput("airqualityBarplot")
      
      )
    )
  )

