# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![linear_model](/Resources/MechaCar_LinearRegression_Summary.PNG)

The two variables that provided non-random amounts of variance to the car mpg values were vehicle length and ground clearance, as evident by their respective p-values being less than the 0.05 confidence interval.
Because the p-value of the summary is less than 0.05, we can also reject the null hypothesis and state that the data supports the alternate hypothesis, indicating the slope of the model is not 0.
The multiple r-squared value of 0.7149 indicates tht 71% of the model can explain the relationship between MPG and the independent variables. This indicates that, while there is room for improvement, it provides a sufficient model that can be used to help predict the performance of future prototypes

## Summary Statistics on Suspension Coils
![total_stats](/Resources/Total_PSI_Summary.PNG
![lot_stats](/Resources/Lot_PSI_Summary.PNG)

The PSI variance across all lots is reportedly 62.3, indicating that the lots overall are compliant with expectations. However, when we look at each lot individually, we see that Lot3 is not compliant with the design specifications due to a variance of 170.3.

## T-Tests on Suspension Coils
![lots_test](/Resources/All_Lots_t-test.PNG)
![lot1_test](/Resources/Lot_1_t-test.PNG)
![lot2_test](/Resources/Lot_2_t-test.PNG)
![lot3_test](/Resources/Lot_3_t-test.PNG)

Looking at the t.test for the lots overall, the p-value returned is 0.06, indicating sufficient support for the null hypothesis (that the mean PSI across lots is indeed 1500). When each of the lots are tested individually, Lot1 has the strongest significance in support of the null hypothesis, but Lot3 does not have any support of the null hypothesis. Combined with our findings with the Summary Stats on the Suspension Coils above, it seems clear that Lot3 has some issues.


## Study Design: MechaCar vs Competition
To test MechaCars with competitors, the following statistical study could be performed:
The independent variables to be measured for both MechaCars and competitors are as follows:
* overall cost
* maintenance cost
* city / hwy fuel efficiency
The null hypothesis is that there will be no difference in the performance of MechaCar vs other cars on the market. The alternate hypothesis is that there will be a difference in performance of Mechacar and other cars on the market based on the metrics measured and analyzed.
The statistical test used would be t.tests to compare the Mechacars with the other competitors.
The data needed would be categorical metrics (car, car brand) and numerical metrics (year, overall cost, maintenance cost, city / hwy fuel efficiency). There would also need to be purchase data to know how many people bought what model of car by year (or whatever date range the data will be set to).