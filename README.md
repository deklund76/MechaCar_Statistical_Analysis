# MechaCar_Statistical_Analysis

This repository contains data on different car designs including their performance metrics, and manufacturing data for the MechaCar's suspension coils. Statistical analyses and an idea for a future statistical study are outlined below.

## Linear Regression to Predict MPG

![Linear Regression to Predict MPG](https://github.com/deklund76/MechaCar_Statistical_Analysis/blob/main/resources/Linear%20Regression%20to%20Predict%20MPG.png)

Looking at the summary for a multiple linear regression using all the information from the MechaCar MPG data, we can see that vehichle length and ground clearance are strongly correlated with MPG. Vehichle weight is also less strongly correlated. The Linear model has a non-zero slope evidenced by the larger coefficients for the significantly correlated factors, length and ground clearance. With an r<sup>2</sup> of 0.715, this linear model predicts the MPG of the MechaCar prototypes effectively although given some of the insignificant variables included, it is probably slightly overfitted.

## Summary Statistics on Suspension Coils

![total_summary](https://github.com/deklund76/MechaCar_Statistical_Analysis/blob/main/resources/total_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 PSI. Looking at the summary statistics for the suspension coil data, it would appear this is met across manufcaturing lots.

![lot_summary](https://github.com/deklund76/MechaCar_Statistical_Analysis/blob/main/resources/lot_summary.png)

When we check the statistics lot by lot however, we see that lot 3 is producing almost all the variance in the data set with a variance in PSI of 170. This is unacceptable.

## T-Tests on Suspension Coils

![total_lot_t-test](https://github.com/deklund76/MechaCar_Statistical_Analysis/blob/main/resources/total_lot_t-test.png)

Performing a t-test on the suspension coil data as a whole, we cannot conclude that the PSI across all manufacturing lots is statistically different from the population mean of 1,500 PSI.

![lot_by_lot_t-tests](https://github.com/deklund76/MechaCar_Statistical_Analysis/blob/main/resources/lot_by_lot_t-tests.png)

Again however, performing t-tests lot by lot, we can conclude that lot 3 _is_ statistically different from the population mean of 1,500 PSI. Something different is happenning there.

## Study Design: MechaCar vs Competition

MechaCar can gain a big advantage on the competition if it can be marketed under the slogan "Greener, Safer, Cheaper". To facilitate this, a statistical study can be done to determine that this is indeed the case. MechaCar and its competition can be grouped by their cost and then compared across three metrics: MPG, maintenance cost, and safety rating in three respective two-sample t-tests to show that the alternative hypothesis: MechaCar has a statistical difference in the mean of each metric compared to the competition, is true. Two-sample t-tests work best here since MechaCar would be working with two different data sets, its own information on its vehicles and data on the competition. Obtaining the right data is key to the study since two-sample t-tests assume reasonably large sample sizes and normally distributed data. For MechaCar's own data this should be relatively straight forward. Looking into getting reliable data on the competition should be the next step.
