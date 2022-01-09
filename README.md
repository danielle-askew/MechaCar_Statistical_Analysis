# MechaCar_Statistical_Analysis
In this challenge, you’ll help Jeremy and the data analytics team do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
![Multiple Linear Regression on MPG](images/mpg_lm_summary.png)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Two variables, Vehichle_length and ground_clearance provided a non-random amount of variance to the mpg values in the dataset. 

2. Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero. This is because the p-value of the linear model was much smaller than the significance level, providing sufficient
statistical evidence that the null hypothesis is not true. This means that the relationship between our variables and the miles per gallon is subject to more than random chance.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
We can see that the r-squared value is 0.715. This means that there is a 71.5% chance that future data points will fit this model. The linear model does effectively predict mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils
![Suspension Coil Total Summary](images/total_summary.png)
![Suspension Coil Lot Summary](images/lot_summary.png)

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

We can see the overall variance in the Total Summary data above. Our dara shows it is under 100 psi and meets specifications.
There is a problem with one of the individual lots, though. If we take a look at the Lot Summary stats, the variance for Lot 3 is well over the acceptable threshold, at 170.28. This exceeds the 100 pounds per square inch specification. 

## T-Tests on Suspension Coils
![Suspension Coils Cumulative T-test](images/trip_analsis_psi_ttest.png)
* The suspension coils across all manufacturing lots shows that they are not different from the population mean. This means that the p-value, 0.0603, is not low enough to reject the null hypothesis.

![Suspension Coil Lot 1 T-test](images/trip_analsis_psi_lot1.png)
* The T-test for the suspension coils in Lot 1 shows that they are also not different from the population mean. This means the p-value, 1, is not low enough to reject the null hypothesis.

![Suspension Coil Lot 2 T-test](images/trip_analsis_psi_lot2.png)
* The T-test for the suspension coils in Lot 2 shows that they are not different from the population mean. This means the p-value, 0.6072, is not low enough to reject the null hypothesis.

![Suspension Coil Lot 3 T-test](images/trip_analsis_psi_lot3.png)
* The T-test for the suspension coils in Lot 3 does show a slight difference from the population mean. This means the p-value, 0.0417, is low enough for us to reject the null hypothesis. This lot may be need to be looked at more closely. 

In Summary, we can see the major impacts on MPG are car weight, spoiler angle, and AWD capability. 

## Study Design: MechaCar vs Competition
In our study there are many varibles for the consumers take into consideration when deciding to make a car to purchase. 

* Metric to test
To narrow down our test, we should evaluate MechaCar's cost, city and highway fuel efficiency, horse power, safety rating, maintenance cost, in comparison to various competitors' vehicles.

* Null and Alternate Hypothesis
H<sub>0</sub>: If MechaCar prototypes' have the same or similar performance within these categories then they will not show a difference in the competitor's vehicles in the same vehicle class
H<sub>a</sub>: If MechaCar prototypes' show better performance within these categories then MechaCar will have a higher difference in the competitor's vehicles in the same vehicle class.

* Statistical Test Used
The statistical test used the two-sample t-tests.

* What data is needed
We might consider using an ANOVA test to compare the MechaCar in various categories that customers would care about: cost, city and highway fuel efficiency, horse power, safety rating, maintenance cost. This test would allow us to see the if mean from multiple samples are significantly similar or different. Therefore, the averages of different cars in these categories can be compared to the average of MecaCar. This show how it is performing against its competitors, below (worse) or above (better).
