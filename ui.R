library(shiny)
#creating UI
shinyUI(fluidPage(
titlePanel("Demonstration - Central Limit Theorem"),
sidebarLayout(
sidebarPanel(
fluidRow(column(12,
sliderInput("obs",
"Number of Observations:",
 min = 10,
max = 1000000,
value = 50))),
fluidRow(column(12,
radioButtons("dist", "Distribution type:",
c("Normal Dist." = "Normal","Logistic Dist." = "Logistic","Lognormal Dist." = "Lognormal","Exponential Dist." = "Exponential",
"Uniform Dist." = "Uniform"))))),
mainPanel(h5("Please use the two control sections on the left pane to select:"), h5("   i. number of observations"),
h5("   ii. distribution type"),h5("The chart will display the selected distribution with the select number of observations"),
plotOutput("distPlot")
))))

