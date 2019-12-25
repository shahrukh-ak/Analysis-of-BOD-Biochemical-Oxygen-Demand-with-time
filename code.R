# Assuming that a linear regression model is appropriate, fit the regression model relating
# BOD (y) to the time (x).


time=scan()
1: 1 2 4 6 8 10 12 14 16 18 20
12:
  Read 11 items
BOD=scan()
1: 0.6 0.7 1.5 1.9 2.1 2.6 2.9 3.7 3.5 3.7 3.8
12:
  Read 11 items
model=lm(BOD~time)
model
Call:
  lm(formula = BOD ~ time)
Coefficients:
  (Intercept) time
  0.6578 0.1781
BOD=0.6578+0.1781*time
plot(time,BOD)
abline(model)
abline(model,col=2)
abline(model,col=2,pch=3,main="fitted model",lwd=2,col.main=4)
plot(time,BOD,col=2,pch=3,main="fitted model",col.main=4,col.lab=5)
abline(model,col=2)
abline(model,col=7)

# What is the estimated value of alpha^2?
anova(model)
Analysis of Variance Table
Response: BOD
Df Sum Sq Mean Sq F value Pr(>F)
time 1 13.3445 13.3445 161.69 4.694e-07 ***
  Residuals 9 0.7428 0.0825
---
  Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
5 10 15 20
0.5 1.0 1.5 2.0 2.5 3.0 3.5
fitted model
time
BOD
value of
2 
is 0.0825
# What is the estimate of expected BOD level when the time is 15 days? Provide a 90%
# confidence interval and prediction interval
predict(model,data.frame(time=15))
1
3.328639
predict(model,data.frame(time=15),interval="conf")
fit lwr upr
1 3.328639 3.078489 3.57879
The interval is (3.328639 , 3.078489 , 3.57879)
predict(model,data.frame(time=15),interval="conf",level=0.90)
fit lwr upr
1 3.328639 3.125933 3.531346
The interval is ( 3.328639 , 3.125933 , 3.531346)
# What change in mean BOD is expected when the time changes by three days?
model
Call:
  lm(formula = BOD ~ time)
Coefficients:
  (Intercept) time
0.6578 0.1781
BOD=0.6578+0.1781*time*3
# JUST MULTIPLYING TIME BY 3 IN THE FITTED MODEL EQUATION