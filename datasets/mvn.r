library(mvtnorm)
set.seed(5)
cor_matrix =  matrix(c(1,0,0,0,0,3,
                       0,1,0,-7,0,0,
                       0,0,1,0,0,0,
                       0,-7,0,1,0,0,
                       0,0,0,0,1,0,
                       3,0,0,0,0,1), ncol=6)
data = data.frame(rmvnorm(100, mean=c(-3, 8, 1, 4, 5, 2), sigma=cor_matrix, method='chol'))
plot(data)

summary(lm(X6~., data=data))
summary(lm(X4~., data=data))

plot(data$X1,data$X3)
plot(data$X1,data$X6)

write.csv(data, file='mvn.csv')
