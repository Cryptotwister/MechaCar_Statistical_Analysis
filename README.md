# MechaCar_Statistical_Analysis

Jeremy and the data analytics teamof AutoRUs' is assigned to perform data analysis on a new prototipe MechaCar, which is suffering from production troubles that are blocking the manufacturing team’s progress.
Analysis should be conducted to review the production data for insights that may help the manufacturing team.

In this assignment, we need to assist Jeremy with the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes;
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots;
* Run t-tests to determine if the manufacturing lots are different from the population mean;
* Design a statistical study to compare MechaCar vehicles to the competition.

** The R script for the statistical analysis can be found [here](https://github.com/Cryptotwister/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R) **

## Linear Regression to Predict MPG

![Deliverable 1 - Linear Regression](https://user-images.githubusercontent.com/42978221/159207939-bdee52a4-981b-4d89-9976-1fb95f58db6d.png)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The Pr(>|t|) value for vehicle_length and ground_clearance are well below .05 of significance level, therefore we can say that both vehicle_lenght and ground_clearance provided non-random amount of variance to mpg values.
Meaning, they have a significant impact on miles per gallon (mpg) for the MechaCar protypes. The other variables - vehicle_weight, spoiler angle and AWD, do appear to contribute a random amount of variance to the linear model, which is presented in their probability coefficient being larger than .05.

2. Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero, because the linear regression shows that some of the independent variables had a significant effect on the dependent variable. 

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
In current linear regression r-squared is 0.7149, which means that the linear model predicts the  miles per gallon (mpg) of MechaCar prototypes effectively approximately 71.4% of the time.

## Summary Statistics on Suspension Coils

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

* Total Summary Table

![Deliverable 2 - Total Summary table](https://user-images.githubusercontent.com/42978221/159211382-c9007ec7-54e8-4bed-93e2-57d51e8a169a.png)

Based on the total_summary dataframe that was created, we can see that The current manufacturing data meets this design specification for all manufacturing lots in total as the variance of the suspension coils for all three lots is 62.29356 PSI.

* Lot Summary table

![Deliverable 2 - Lot Summary table](https://user-images.githubusercontent.com/42978221/159211397-72f5d06d-35ee-45c3-8dc1-59c1a9a7a49f.png)

Based on a per lot basis however, we can see in the lot_summary dataframe, that the variance does differ by lot number.
Lot 1 and Lot 2 have a variance of 0.9795918 and 7.4693878 respectively, which both fall within the variance tolerance of 100-psi.
Lot 3 however has a much higher variance of 170.2861224, which exceeds the variance tolerance of 100 PSI, which means that Lot 3 has to be removed from production.

## T-Test on Suspension Coils

We wrote an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

![Deliverable 3 - TTest_total](https://user-images.githubusercontent.com/42978221/159212578-7af86e21-1870-4bf6-8c7f-679e40446919.png)

The output above indicates that the suspension coils across all manufacturing lots are not statistically different from the population mean.
The p-value is 0.06028 which is greater than 0.05 so we fail to reject the null hypothesis, as there is not enough evidence to support its rejection.

* Lot1.
A review of the results of the T-test for the suspension coils against manufacturing lot1 shows that they are not statistically different from the population mean, and the p-value is 1 which is greater than .05 so we fail to reject the null hypothesis.

![Deliverable 3 - TTest_LOT1](https://user-images.githubusercontent.com/42978221/159212584-65ea9ae1-b46d-4b26-8ca3-b99dad2d951b.png)

* Lot2.
A review of the results of the T-test for the suspension coils against manufacturing lot2 shows that they are not statistically different from the population mean, and the p-value is 0.6072 which is greater than .05 so we fail to reject the null hypothesis.

![Deliverable 3 - TTest_LOT2](https://user-images.githubusercontent.com/42978221/159212590-5a15b580-5544-4fb1-9222-0a0441631ecd.png)

* Lot3.
A review of the results of the T-test for the suspension coils against manufacturing lot3 that they are statistically different from the population mean, and the p-value is 0.04168 which is less than .05 so we reject the null hypothesis tha they are not statistically different.

![Deliverable 3 - TTest_LOT3](https://user-images.githubusercontent.com/42978221/159212602-147f0e41-4464-47f0-859e-71767039c8b3.png)

The T tests confirm our belief that something is wrong in Lot3 which needs to be investigated further and may be one of the reasons for the problems that MechaCar is facing.


## Study Design: Comparing the MechaCar to the Competition
