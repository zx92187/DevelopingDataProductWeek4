library(shiny)
#Creating server script.
shinyServer(
function(input,output){
output$distPlot <- renderPlot({
dist <- switch(input$dist,Normal = rnorm,Logistic = rlogis,Lognormal = rlnorm,Exponential = rexp,Uniform = runif,rnorm)
hist(dist(input$obs),xlab='Number of Observations',col = "#33FFAD",
main = paste("Histogram of a" , input$dist, "Distribution with ", input$obs, " Observations"))
})})