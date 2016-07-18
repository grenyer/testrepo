#Server script for Shiny geoapp

library(shiny)
library(Rgeoprofile)
supdata<-read.csv(file = "sainsburys.csv")
Latitude<-supdata$Latitude
Longitude<-supdata$Longitude
mylocs<-as.data.frame(cbind(Longitude,Latitude))
LoadData(Data = mylocs)
ModelParameters(sigma = 0.1,minburnin = 500,Samples = 100000)
GraphicParameters()
CreateMaps()



# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$data_plot <- renderPlot(CreateMaps())
  
  
  output$geoprof_plot <-reactive({
    input$goButton
    ModelParameters(sigma = input$input_sigma,minburnin = 100,Samples = input$input_samples)
    RunMCMC()
    ThinandAnalyse(thinning = input$input_thinning)
    GraphicParameters()
    PlotGP()
  })
    
})
  
#  output$distPlot <- renderPlot({
#    x    <- faithful[, 2]  # Old Faithful Geyser data
#    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    # draw the histogram with the specified number of bins
#    
#    hist(x, breaks = bins, col = 'darkgray', border = 'white')

  
