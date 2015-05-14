# Data Products Project using Shiny - May 2015
# server.r to predict women's height based on entered weight
# Uses the women data-set and linear regression.

library(shiny)

# Simple Linear Regression model of women data set
lm.out <- lm(height ~ weight, data=women)

# Define server logic required to draw plot
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
 
   new.data <- data.frame(weight=input$inWeight)
   predictedHeight <- predict(lm.out, new.data, type="response")

   plot(height ~weight, data=women, main="Plot of Women's Height (inches) against Weight (lbs)")
   abline(lm.out,  col="black", lwd=2 )
   abline(v=input$inWeight, h=predictedHeight, col="red")
   
   output$inputValue <- renderPrint(input$inWeight)
   output$predictedHeight <- renderPrint(predictedHeight)
  })
})

