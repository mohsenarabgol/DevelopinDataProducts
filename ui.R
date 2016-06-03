

library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Similarity Between Normal and Binomial Distributions"),
    
    #Entering the variables
    sidebarPanel(
      sliderInput("num", "Number of trials", min = 1, max = 100, value = 25),    
      numericInput("avg", "mean", value = 0.5, min = 0, max = 1, step = 0.01),
      radioButtons("dist", "Distribution", c("Binomial" = "binom", "Normal" = "norm"))
    ),   
    
    #Creating Outputs
    mainPanel(
      plotOutput("distPlot"), textOutput("Info")
    )
  )
)
