
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Life in America"),
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    
    radioButtons("gender","Gender",c("Male" = "male", "Female" = "female")),
    
    sliderInput("age",
                "Age:",
                min = min(lifeTable$male_age),
                max = max(lifeTable$male_age),
                value = 30)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
  )
))
