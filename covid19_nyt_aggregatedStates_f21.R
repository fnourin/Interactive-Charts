# title: "Covid Data"
# Main author: "Thomas R. O'Donnell"
# Modified by: Fatema Nourin (Used in 2020, 2021 and 2022)
# date: "8/6/2020"
# output: word_document

#install.packages("tidyverse", "lubridate")
library(tidyverse)
library(lubridate)
full <- read.csv(file.path("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv"),
                 check.names = FALSE, 
                 stringsAsFactors = TRUE) %>%
  mutate(date = ymd(date))

# Texas
full %>% 
  filter(state == "Texas") %>% 
  group_by(fips) %>% 
  filter(date == Sys.Date()-1) %>% 
  select(fips, cases, deaths) %>% 
  write.csv("COVID19_Texas_nyt.csv", row.names = FALSE)






# Ohio
full %>% 
  filter(state == "Illinois") %>% 
  group_by(fips) %>% 
  filter(date == Sys.Date()-1) %>% 
  select(fips, cases, deaths) %>% 
  write.csv("COVID19_Illinois_nyt.csv", row.names = FALSE)
# Michigan
full %>% 
  filter(state == "Iowa") %>% 
  group_by(fips) %>% 
  filter(date == Sys.Date()-1) %>% 
  select(fips, cases, deaths) %>% 
  write.csv("COVID19_Iowa_nyt.csv", row.names = FALSE)

# Texas
full %>% 
  filter(state == "California") %>% 
  group_by(fips) %>% 
  filter(date == Sys.Date()-1) %>% 
  select(fips, cases, deaths) %>% 
  write.csv("COVID19_California_nyt.csv", row.names = FALSE)

# Idaho
full %>% 
  filter(state == "Alabama") %>% 
  group_by(fips) %>% 
  filter(date == Sys.Date()-1) %>% 
  select(fips, cases, deaths) %>% 
  write.csv("COVID19_Alabama_nyt.csv", row.names = FALSE)

# Colorado
full %>% 
  filter(state == "Pennsylvania") %>% 
  group_by(fips) %>% 
  filter(date == Sys.Date()-1) %>% 
  select(fips, cases, deaths) %>% 
  write.csv("COVID19_Pennsylvania_nyt.csv", row.names = FALSE)


# Florida
full %>% 
  filter(state == "Pennsylvania") %>% 
  group_by(fips) %>% 
  filter(date == Sys.Date()-1) %>% 
  select(fips, cases, deaths) %>% 
  write.csv("COVID19_Pennsylvania_nyt.csv", row.names = FALSE)

# Illinois
full %>% 
  filter(state == "Pennsylvania") %>% 
  group_by(fips) %>% 
  filter(date == Sys.Date()-1) %>% 
  select(fips, cases, deaths) %>% 
  write.csv("COVID19_Pennsylvania_nyt.csv", row.names = FALSE)

# Nebraska
full %>% 
  filter(state == "Pennsylvania") %>% 
  group_by(fips) %>% 
  filter(date == Sys.Date()-1) %>% 
  select(fips, cases, deaths) %>% 
  write.csv("COVID19_Pennsylvania_nyt.csv", row.names = FALSE)

# Florida
full %>% 
  filter(state == "Pennsylvania") %>% 
  group_by(fips) %>% 
  filter(date == Sys.Date()-1) %>% 
  select(fips, cases, deaths) %>% 
  write.csv("COVID19_Pennsylvania_nyt.csv", row.names = FALSE)
