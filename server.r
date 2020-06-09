
library(shiny) # Load shiny package
data(iris) # Load the iris dataset


shinyServer(
  
  
  function(input, output) {
    
    output$plot<-renderPlot({
      x<-as.numeric(input$var1)
      y<-as.numeric(input$var2)
      plot(iris[,x],iris[,y])
     
      
    })
    
    output$down<-downloadHandler(
      filename=function(){
        #iris.png or iris.pdf
        paste("iris",input$format,sep = ".")
        
      },
      content = function(file){
        if(input$format=="png")
          png(file)
      else
          pdf(file)
        x<-as.numeric(input$var1)
        y<-as.numeric(input$var2)
        plot(iris[,x],iris[,y])
        dev.off()
        
      }
    )
    
}
)