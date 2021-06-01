# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG
First of all, I've built multiple linear regression model to predict MPG using `lm()` function. I've used vehicle length, weight, spoiler angle, ground clearance and AWD (drivetrain) as independents variables. 

![linear_regression](https://github.com/angkohtenko/MechaCar_Statistical_Analysis/blob/main/Images/Linear_regression_summary.png)

According to the summary, vehicle length and ground clearance have a significant impact to MPG (`Pr(>|t|)`, probability that each coefficient contributes a random amount of variance to the linear model, is extremely small).
`p-value: 5.35e-11` is smaller than significance level of 0.05% which means that null hypotheses - the slope of the linear model is zero - should be rejected. In other words, we can predict MPG using linear model with vehicle length and ground clearance values.
`Multiple R-squared:  0.7149` means that the regression model can approximate MPG with 71% probability.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI).
I've calculated the summary statistics for suspension coils across all lots in total and for each lot individually.

![total_summary](https://github.com/angkohtenko/MechaCar_Statistical_Analysis/blob/main/Images/total_summary.png)

It's seen from the results that variance is 62.29, so current manufacturing data meet this design specification.

Although, if we look at variance by lots, we can see that suspension coils variance for lot 3 is 170. So suspension coils for lot 3 may exceed design specifications variance values and doesn't meet the requirement.

![lot_summary](https://github.com/angkohtenko/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary.png)

