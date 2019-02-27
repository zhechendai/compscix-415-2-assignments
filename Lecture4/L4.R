library(dplyr)
library(nycflights13)
summarise(flights, delay = mean(dep_delay, na.rm = TRUE))

flights %>%
  group_by(month, day) %>%
  filter(month == 2 & day == 20) %>%
  summarise(num_cancelled = sum(is.na(dep_delay) | is.na(arr_delay)),
            prop_cancelled = mean(is.na(dep_delay) | is.na(arr_delay)))
            

library(tidyverse)
file_path <- '/Users/jerryd/Desktop/JERRYGit/Lecture4/flights.csv'
csv_data <- read_csv(file = '/Users/jerryd/Desktop/JERRYGit/Lecture4/flights.csv')


write_delim(csv_data, delim = '|', path = 'path/to/new_file_name.csv')

data("iris")
class(iris)

iris <- as_tibble(iris)
class(iris)
