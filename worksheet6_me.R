library(tidyverse)
library(rvest)
html <- read_html("https://www.iitk.ac.in/math/faculty")
class(html)
# extracting all tags with class = head3. The
# "." indicates class.
name <- html_elements(html, ".head3")
class(name)
# From all the head3 class, extracting all link tags
name <- html_elements(name, "a")
# Extracting the text associated with the links
name <- html_text(name)
## A faster way
name <- html_elements(html, ".head3 a")
name <- html_text(name)
name


name <- html %>% html_elements(".head3 a") %>% html_text()

html = read_html("https://www.iitk.ac.in/math/visitors-post-doctoral-fellow")
post_doc = html  %>%
  html_elements(".head2") %>%
  html_text()
post_doc

html <- read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")
ranking = html %>%
  html_elements(".countdown-index-resposive") %>%
  html_text()
ranking
class(ranking)
ranking[1]
substring(ranking[1],first=2)
ranking = substring(ranking, first=2) %>% as.numeric(ranking)

moviename = html %>%
  html_elements(".article_movie_title a") %>%
  html_text()
moviename
Tomato_score = html %>% 
  html_elements(".tMeterScore") %>%
html_text()
Tomato_score  
Tomato_score[1]
strsplit(Tomato_score[1], '%')

extract = strsplit(Tomato_score, split="%")
Tomato_score = sapply(extract,c) %>% as.numeric()




#ex
foo = "100%90%why?"
dum = strsplit(foo,'%')
str(dum)
new_list = list(1:10, dum, "Dootika")
str(new_list)
new_list[[3]]
foo = c(foo, "40%why30% %?")
dum = strsplit(foo,'%')


Year = html %>%
  html_elements(".subtle.start-year") %>%
  html_text()
Year = substring(Year, first=2) %>% as.numeric(ranking)

  Year






dir = html %>%
  html_elements("info.director")
extract_dir = function(a)
{
  temp = a%>% html_elements("a") %>% html_text()
  return(temp)
}
sapply(dir, extract_dir)
dir















