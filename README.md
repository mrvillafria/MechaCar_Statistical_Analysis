# MechaCar Statistical Analysis

For this week's project, we will be analyzing AutosRUs' newest prototype, the MechaCar. We will be helping Jeremy and the data analyutics team at AutosRU to review the production data that may help the manufacturing team. The statistical analysis will be written in the R programming language. 


## Linear Regression to Predict MPG

![statistical_summary](/Images/statistical_summary.PNG)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
	- Vehicle Length and Ground Clearance contribute the least amount of variance to the mpg values.

- Is the slope of the linear model considered to be zero? Why or why not?
	- The slope is considered non-zero because the p-value of our linear regression analysis is 5.35e-11 which is much smaller than the significance level of 0.05%. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
	- The calculated multiple r-squared value is 0.7149 which means that roughly 71% of the variability of our dependent value is explained using this linear model. This does not necessarily mean this is a good predicator.

## Summary Statistics on Suspension Coils

The Suspension_Coil dataset contained results from multiple manufacturing production lots. We created two dataframes:
1. Total Summary: the mean, median, variance and standard deviation of the suspension coil's PSI (pounds per square inch) column

![total_summary](/Images/total_summary.PNG)

2. Lot Summary: the mean, median, variance, and standard deviation of the suspension coil's PSI (pounds per square inch) column grouped by each manufacturing lot

![lot_summary](/Images/lot_summary.PNG)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

	- The variance of the Total Summary is 62.29356 and is below 100 pounds per square inch, meaning the data does meet design specifications.
	- Lot 1 (variance: 0.9795918) and Lot 2 (variance: 7.4693878) individually both meet the design specifications.
	- Lot 3 (variance: 170.2861224) exceeds 100 pounds per square inch so it does not meet the design specifications.

## T-Tests on Suspension Coils

#### All Manufacturing Lots T-Test Results
![alllot_ttest](/Images/alllot_ttest.PNG)

#### Lot 1 T-Test Results
![lot1_ttest](/Images/lot1_ttest.PNG)

#### Lot 2 T-Test Results
![lot2_ttest](/Images/lot2_ttest.PNG)

#### Lot 3 T-Test Results
![lot3_ttest](/Images/lot3_ttest.PNG)

- Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
	- Assuming our significance level was the common 0.05%, our p-values for all manufacturing lots combined, lot 1 individually, and lot 2 individually are above our significance level. This means we do not have sufficient evidence to reject the null hypothesis.
	- Lot 3 t-test has a p-value of 0.4168, which is below the significance level of 0.05, so we can reject the null hypothesis. 

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

- What metric or metrics are you going to test?
	- There are many different factors to consider when choosing a car. When looking at how MechcaCar performs against their competitors, the metric I would like to analyze more would be safety ratings of the MechaCar.

- What is the null hypothesis or alternative hypothesis?
	- Null Hypothesis: If MechaCars and their competitors have the same amount of safety features, MechaCars safety ratings will be the same or less than their competition.
	- Alternative Hypothesis: If MechaCars and their competitors have the same amount of safety features, MechaCars safety ratings will be higher than their competition.

- What statistical test would you use to test the hypothesis? And why?
	- I would use the multiple linear regression test to analyze the different safety features. 

- What data is needed to run the statistical test?
	- Some examples of safety features we would like to look at are airbags, traction control, seatbelts, emergency breaks, and blind spot detection.