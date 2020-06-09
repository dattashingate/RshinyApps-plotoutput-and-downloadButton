setwd("F:\\Personal\\R lang\\Rshiny\\Download plot")
library(shiny)

shinyUI(fluidPage(
  
  # Header or title Panel 
  titlePanel(h4('Demostration of the Download Plot() -  ', align = "center")),
  
  # Sidebar panel
  sidebarPanel(
    
    
    
    selectInput("var1", label = "1. Select x variable", 
                choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width"=4),
                selected = 1), 
    
    selectInput("var2", label = "2. Select y variable", 
                choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width"=4),
                selected = 2),
    
    
    radioButtons("format", label = "3. Select the format to download the plot",
                 choices = c("png", "pdf"), selected = "png")
  ),
  
  # Main Panel
  mainPanel(
 
    plotOutput("plot"),
    downloadButton("down","Download File")
  )
  
)
)