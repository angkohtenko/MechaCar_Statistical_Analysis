# MechaCar_Statistical_Analysis
I got 2 datasets to analize related to MechaCars prototype vehicles:
- [MechaCar_mpg.csv](https://raw.githubusercontent.com/angkohtenko/MechaCar_Statistical_Analysis/main/MechaCar_mpg.csv) contains mpg test results for 50 prototype MechaCars with multiple metrics.
- [Suspension_Coil.csv](https://raw.githubusercontent.com/angkohtenko/MechaCar_Statistical_Analysis/main/Suspension_Coil.csv) contains the results from multiple production lots. The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

## Linear Regression to Predict MPG
I've built multiple linear regression model to predict MPG using `lm()` function. I've used vehicle length, weight, spoiler angle, ground clearance and AWD (drivetrain) as independent variables. 

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

## T-Tests on Suspension Coils
To determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch, I performed t-tests.
At first, I've performed t-test for suspension coils across all manufacturing lots and got next results:

![t-test](https://github.com/angkohtenko/MechaCar_Statistical_Analysis/blob/main/Images/one_sample_t.test.png)

`p-value = 0.06028` is above a significance level of 0.05%. Therefore, we do not reject the null hypothesis and can state that the mean of suspension coils is similar to the population mean of 1,500 pounds per square inch.

Next, I've completed the t-tests for each lot separatly:

![t-test1](https://github.com/angkohtenko/MechaCar_Statistical_Analysis/blob/main/Images/t.test_lot1.png)
![t-test2](https://github.com/angkohtenko/MechaCar_Statistical_Analysis/blob/main/Images/t.test_lot2.png)
![t-test3](https://github.com/angkohtenko/MechaCar_Statistical_Analysis/blob/main/Images/t.test_lot3.png)

Here we can see that for lot 1 `p-value = 1`, so the mean of suspension coils is the same as the population mean.

For lot 2 `p-value = 0.6072`. That is above the significance level, so the mean of suspension coils for lot 2 is similar to the population mean as well.

For lot 3 `p-value = 0.04168`. It is below the significance level, so we reject the null hypothesis. The mean of suspension coils for lot 3 is statistically different from the population mean.

## Study Design: MechaCar vs Competition
To compare MechaCar with competitors, I would focus on such important metric for customers as maintenance cost. 
In that case, a null hypothesis is that there is no statistical difference between mean of maintenance cost for MechaCar and a competitor. Significance level should be 0.05%.
To prove or reject hypothesis I would run two sample t-test as we have two datasets with similar metric and values are continuous. 

` t.test(MechaCar$maintenance_cost, competitor$maintenance_cost, paired=TRUE)`

If, as a result, p-value is above 0.05, maintenance cost for MechaCar is similar to competitors, otherwise we can calculate mean for both datasets and discover whether maintenance cost is higher or lower than competitors'.

To perform the test, I would require historical data from official dealer services with maintenance_cost for each car.


