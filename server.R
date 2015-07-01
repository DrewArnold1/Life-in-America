
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    if(input$gender == "male") {
      x = lifeTable %>% filter(male_age == input$age) %>% select(male_lifeExp, year)
      qplot(year, male_lifeExp, data=x, ylim = c(0,85), geom="line")
    }
    else {
      x = lifeTable %>% filter(male_age == input$age) %>% select(female_lifeExp, year)
      qplot(year, female_lifeExp, data=x, ylim = c(0,85), geom="line")
    }
    
  })
  
})
