# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
First of all, I've built multiple linear regression model to predict MPG using `lm()` function. I've used vehicle length, weight, spoiler angle, ground clearance and AWD (drivetrain) as independents variables. 

![]()

According to the summary, vehicle length and ground clearance have a significant impact to MPG (`Pr(>|t|)`, probability that each coefficient contributes a random amount of variance to the linear model, is extremely small).
`p-value: 5.35e-11` is smaller than significance level of 0.05% which means that null hypotheses - the slope of the linear model is zero - should be rejected. In other words, we can predict MPG using linear model with vehicle length and ground clearance values.
`Multiple R-squared:  0.7149` means that the regression model can approximate MPG with 71% probability.