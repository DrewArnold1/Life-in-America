#To do:
# Add SCF data!

library("dplyr")
library("ggplot2")
library("plotly")
set_credentials_file("DrewArnold1", "rcsdfhed2x")

lifeTable = data.frame(read.csv("Life tables.csv"))
glimpse(lifeTable)

lifeFrom26 = lifeTable %>% filter(male_age == 26) %>% select(year,male_lifeExp)

py = plotly()
qplot(year, male_lifeExp, data=x, geom="line")
py$ggplotly()