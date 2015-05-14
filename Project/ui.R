# Data Products Project using Shiny - May 2015
# ui.r to predict women's height based on entered weight
# Uses the women data-set

library(shiny)

# Define UI for application that draws a regression plot
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Height Prediction for Women"),
  
  # Sidebar with a slider input for selecting weight
  sidebarLayout(
    sidebarPanel(
      h5("This application allows the selection of a woman's weight in lbs and returns the predicted height in inches."),
      h5("The data is based upon Average heights and weights for American women aged 30-39."),
      br(""),
                 
      sliderInput("inWeight",
                  "Please select Weight (in lbs):",
                  min = 115,
                  max = 164,
                  value = 140 )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h4("Results of Prediction"),
      h5("You selected a Weight (lbs) of:"),
      verbatimTextOutput("inputValue"),
      h5("Which resulted in a predicted Height (inches) of:"),
      verbatimTextOutput("predictedHeight"),
      
      plotOutput("distPlot")
      
     
    )
  )
))
