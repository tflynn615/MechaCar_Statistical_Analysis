# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG 

![summary_results.png](summary_results.png) 

After evaluating the summary results of a linear regression of the MechaCar data, it seems that Vehicle Length, Vehicle Weight, and Ground Clearance have a non-random amount of variance that correlates with the MPG of the car model. Because the r-squared value has increased to 0.715 compared to the usual 0.5 significiance, this model does fit well with predicting correlation from the provided data and means that the slope is more than 0. 

## Summary Statistics on Suspension Coils

![total_summary.png](total_summary.png)

MechaCar's standards say that suspension coils should not have a variance higher than 100 lbs per square inch. As we can see above, the total manufacturing lots do meet this requirement. However, if we look at these results grouped by Lot (below) we can see that the Lot3 coils are much higher than this variance limit. 

![lot_summary.png](lot_summary.png) 

## T-Tests on Suspension Coils

![total_t_test.png](total_t_test.png) 

We then used a T-Test to compare the average PSI of coils to the mean of 1,500 pounds per square inch. We can see in the t-test comparing to the total population that the mean is close to 1498 pounds per square inch, but it has a high p value that means we cannot reject the null hypothesis. 

![lot_t_test.png](lot_t_test.png)

