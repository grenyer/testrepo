#UI.R for Geoprofiling Shiny App

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Hunting Sainsbury's Distribution Centres"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      numericInput("input_sigma","Sigma",value = 0.25, min=0.001, max=1),
      numericInput("input_samples","Samples",value = 100, min=100, max=1000000),
      numericInput("input_thinning","Thinning",value = 100, min=1, max=10000),
      submitButton(text = "Hunt!")
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      splitLayout(
      plotOutput("data_plot"),
      plotOutput("geoprof_plot")
      )
    )
  )
))
