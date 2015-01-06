set.seed(3)
data = data.frame(
  condition = c(rep('long', 20), rep('short', 20)),
  productivity = c(rnorm(20, 38, 1.5), rnorm(20, 37, 1)))
library(ggplot2)
ggplot(aes(x=productivity, fill=condition), data=data) + geom_density(alpha=0.5) + theme_bw()
write.csv(data, file='lunch_data.csv')

data = data.frame(
  condition = c(rep('long', 2000), rep('short', 2000)),
  productivity = c(rnorm(2000, 38, 10), rnorm(2000, 37, 10)))

write.csv(data, file='population_lunch_data.csv')


