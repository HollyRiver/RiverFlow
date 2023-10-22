x = c(0.9, 1.3, 2.1, 2.5, 2.4, 1.7, 0.7, 1.2, 1.6)
mean(x)

y = c(2.0, 2.6, 4.3, 5.8, 5.1, 3.2, 1.8, 2.3, 3.0)
mean(y)

df = data.frame(x, y) ## edit data frame
df

plot(x, y)

res = lm(y~x, df) ## linear model
res

abline(res) ## add line by res

summary(res)  ## summary of linear model

confint(res, level = 0.95)  ## confident leven of integer values

anova(res)

cor(x,y)

qf(0.95, 1, 7)

summary(res)

res

qt(0.025, 8)

qt(0.05, 7)

qnorm(0.025)

beta_1 = coefficients(res)[2]
sum(x*(y - (beta_1*x + coefficients(res)[1])))

sum((beta_1*x + coefficients(res)[1])*(y - (beta_1*x + coefficients(res)[1])))

(beta_1*x + coefficients(res)[1])*(y - (beta_1*x + coefficients(res)[1]))

sum(y*y)
sum((beta_1*x + coefficients(res)[1])*(beta_1*x + coefficients(res)[1]))
(beta_1*x + coefficients(res)[1])

sum((y - (beta_1*x + coefficients(res)[1]))^2)
