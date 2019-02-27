library(ggplot2)
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, color = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "identity")

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), position = "jitter")

ggplot(data = mpg, mapping = aes(x = class, y = hwy)) + 
  geom_boxplot()

ggplot(data = mpg, mapping = aes(x = class, y = hwy)) + 
  geom_boxplot() +
  coord_flip()

nz <- map_data("nz")
ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black")

###Exercise on Page 21 Slide3.1
library(ggplot2)
ggplot(data = mpg) + 
  geom_bar(mapping = aes(x = drv, fill = class), position = "dodge")+
  coord_flip() +
  xlab("Drive of vehicle")

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds) + 
  geom_histogram(mapping = aes(x = carat), binwidth = 0.01)

ggplot(data = diamonds) + 
  geom_density(mapping = aes(x = carat))

ggplot(data = diamonds, mapping = aes(x = carat)) + 
  geom_histogram(fill = "white", color = "green", mapping = aes(y = ..density..)) +
  geom_density()

ggplot(data = diamonds) + 
  geom_density(mapping = aes(x = carat), adjust = 1)

###Exercise 2 on Page 37 Sildes 3.1
ggplot(data = diamonds, mapping = aes(x = carat)) + 
  geom_histogram(fill = "green", color = "red") +
  coord_flip() +
  xlab("Carat of diamond")

sin(pi/2) 

names(diamonds)

filter(flights, month ==1| month ==2| month==4, dep_time <600| dep_time>1800, arr_delay >60)
