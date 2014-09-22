set.seed(10)
data = data.frame(econ = c(rnorm(50, 60, 3), 0, 0), physics= c(rnorm(50, 60, 7), 0, 0))
write.csv(data, '~/Dropbox/typ-stats/datasets/econ_physics.csv', row.names=FALSE)
