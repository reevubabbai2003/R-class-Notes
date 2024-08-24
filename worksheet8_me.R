library(tidyverse)
library(rvest)
library(dplyr)
html = read_html("https://www.relianceiccrankings.com/ranking/womenodi/batting/")
women = html %>% 
  html_table()
women
str(women)  
batting = women[[1]]
str(batting)
colnames(batting)[4] = "Country"
colnames(batting)[1] = "Ranking"
country = html %>%
  html_elements("tr img") %>%
  html_attr("alt")
batting$Country = country
batting

starwars
starwars %>% filter(skin_color == "light", eye_color == "brown")
starwars %>% arrange(height, mass)
starwars %>% arrange(desc(height))
starwars %>% slice(5:10)
starwars %>% select(hair_color, skin_color, eye_color)
a1 = group_by(starwars, species, sex)
a1
a2 = select(a1, height, mass)
a2
a3 = summarise(a2, height=mean(height, na.rm =T), mass = mean(mass, na.rm =T))
a3
summarise(a2, count = n())
 
cylinder = mtcars %>% group_by(cyl) 
s_cylinder = summarise(cylinder, displacement = mean(disp), h_power = mean(hp))

IND_rank = batting%>% filter(Country == "IND") %>%
  arrange(Ranking)
IND_rank$Ranking
n_palyer = batting %>% group_by(Country) %>%
  summarise(count =n())
avg_rank = batting %>% group_by(Country) %>% 
  summarise(avg_rank = mean(Ranking)) %>%
  arrange(avg_rank)


















