install.packages("MASS")
library(MASS)
data("Boston")

#display first five data
head(Boston)

summary(Boston)
str(Boston)

#a
fit1=lm(medv~lstat,data = Boston) #~ -> tida
summary(fit1)

#b
fit2=lm(medv~lstat+black,data = Boston)
summary(fit2)

#c
fit3=lm(medv~.,data = Boston)
summary(fit3)

#d
fit4=lm(medv~.- indus,data = Boston)
summary(fit4)

#e
par(mfrow=c(2,2))
plot(fit3)

#f
install.packages("car")
library(car)
vif(fit3)

#g
trainID =sample(1:nrow(Boston),round(0.8*nrow(Boston)))
trainID

train = Boston[trainID,]
test = Boston[-trainID,]

fit=lm(medv~.,data=train)
summary(fit)


#Predicting the test data
y_pred=predict(fit,test)
y_actual=test$medv

#Mean Squard error
MSE=mean((y_actual-y_pred)^2)
MSE

RMSE = sqrt(MSE)
RMSE

