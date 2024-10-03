library(shiny)

shinyUI(fluidPage(
  titlePanel(title = "Hello Welcome to TextInput Widget"),
  sidebarLayout(
    sidebarPanel(("Enter your personal information"),
                 textInput("name","Enter your name",""),
                 textInput("age","Enter your age",""),
                 radioButtons("gender", "select your gender",list("Male","Female"),"")),
    mainPanel(("Personal Information"),
      textOutput("myname"),
      textOutput("myage"),
      textOutput("mygender")
            
  )
))
)