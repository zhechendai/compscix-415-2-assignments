library(ggplot2)
data('mpg')
ggplot(data = mpg, mapping = aes(x = displ, y = hwy))
  
  geom_point(mapping = aes(color = drv)) + geom_smooth(mapping = aes(group = drv))


ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, y = ..count../sum(..count..), color = cut)) + xlab('Cut of diamond') +
  ylab('Proportion') + ggtitle('Prevalence of each cut of diamond') + theme_dark()

ggplot(data = mpg)
