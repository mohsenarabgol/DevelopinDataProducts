
library(shiny)

shinyServer(function(input, output) {
    
    #Calculating the Standard Deviation
    output$Info<-renderText({ 
      paste("Standard Deviation  = ", sqrt(input$avg * (1-input$avg) / input$num))
    })
    
    #Generating the Output Histogram
    output$distPlot<-renderPlot({ if (input$dist=="binom")
      hist(rbinom(10000, size = input$num, prob = input$avg)/input$num, breaks = 100, xlab = "x", main = "Binomial Distribution")
      else  hist(rnorm(10000, mean = input$avg, sqrt(input$avg * (1-input$avg) / input$num)), breaks = 100, xlab = "x", main = "Equivalent Normal Distribution", xlim=c(-.2,1.2))
    })
})
