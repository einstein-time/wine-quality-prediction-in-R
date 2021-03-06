library("rpart.plot")
library(rpart)
library(RWeka)
library(rstantools)
wine <- read.csv("whitewines.csv", stringsAsFactors = FALSE)

str(wine)


hist(wine$quality)

wine_train <- wine[1:3750, ]
wine_test <- wine[3751:4898, ]


m.rpart <- rpart(quality ~ ., data = wine_train)
m.rpart

rpart.plot(m.rpart, digits = 3)

rpart.plot(m.rpart, digits = 4, fallen.leaves = TRUE, type = 3, extra = 101)


p.rpart <- predict(m.rpart, wine_test)
summary(p.rpart)

summary(wine_test$quality)

cor(p.rpart, wine_test$quality)

MAE <- function(actual, predicted) { mean(abs(actual - predicted))}
MAE(p.rpart, wine_test$quality)

mean(wine_train$quality)

MAE(5.87, wine_test$quality)

#m.m5p <- M5P(quality ~ ., data = wine_train)
summary(m.m5p)

p.m5p <- predict(m.m5p, wine_test)
summary(p.m5p)

cor(p.m5p, wine_test$quality)

MAE(wine_test$quality, p.m5p)

