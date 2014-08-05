set.seed(3)
data = data.frame(
  condition = c(rep('long', 20), rep('short', 20)),
  productivity = c(rnorm(20, 18, 1.5), rnorm(20, 17, 1)))
library(ggplot2)
ggplot(aes(x=productivity, fill=condition), data=data) + geom_density(alpha=0.5) + theme_bw()
write.csv(data, file='lunch_data.csv')
