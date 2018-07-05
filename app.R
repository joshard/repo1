library(shiny)
ui = fluidPage(
  titlePanel("Conditional Panels"),
  sidebarPanel( 
    numericInput("num","How many hours do you sleep?",min = 1,max = 24,value = 6)),
  mainPanel(
    conditionalPanel("input.num < 7","You need more sleep"),
    conditionalPanel("input.num >= 9","You sleep a lot")
  )
)
server = function(input,output){
  
}
shinyApp(ui,server)