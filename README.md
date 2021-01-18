# MechaCar_Statistical_Analysis

## Overview

The purpose of this analysis is to offer insights on the MechaCar's production data for insights that may help the manufacturing team. The statistical analysis and visualizations are written in the R programming language.

## Linear Regression to Predict MPG

For this section I workec with one the dataset that was provided, which is the miles per gallon dataset. From there, I preformed a multiple linear regression to see if it could predict the miles per gallon (mpg) dependent variable by using the vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive (AWD) independent variables.

***1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?***

Vehicle_length and ground_clearance are very unlikely to provide random amounts of variance, both having a extremely small p-value. In other words the vehicle lenght and the ground clearance have a significant impact on miles per gallon of the MechaCar.

***2. Is the slope of the linear model considered to be zero? Why or why not?***

The slope is not zero just by looking at the p-value, which is smaller than the assumed significance level of 0.05%. Meaning that there is sufficient evidence to reject the null hypothesis.

***3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?***

The R-squared value is 0.7149, which means that 71% of the time the model would predict mpg values correctly. Therefore, it should be considered effective.

<img width="863" alt="Screen Shot 2021-01-15 at 3 29 39 PM" src="https://user-images.githubusercontent.com/70611325/104790168-a35ee100-574b-11eb-909a-637c49bb5f8c.png">

## Summary Statistics on Suspension Coils

For this section, I used the second dataset provided, which is the suspension coils dataset. I created two summary tables to look at the mean, median, variance, and standard deviation of data. The first table looked at of the data as a whole, while the second table looked across all manufacturing lots.

***Total Summary Table***

<img width="325" alt="Screen Shot 2021-01-15 at 4 15 16 PM" src="https://user-images.githubusercontent.com/70611325/104790729-ea010b00-574c-11eb-9120-2f0b5422a55f.png">

***Lot Summary Table***

<img width="466" alt="Screen Shot 2021-01-15 at 4 15 26 PM" src="https://user-images.githubusercontent.com/70611325/104790727-e9687480-574c-11eb-81f3-fecc205cac8a.png">

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- Looking at the total summary, the current variance is approximately 62.29 PSI meaning that is does meet the design specification. When looking at the lots individually, the first two lots meet the design specification at a variance of approximately 0.98 PSI and 7.47 PSI respectfully, but the third lot does not, exceeding the design specification with approximately 170.29 PSI.

## T-Tests on Suspension Coils

On this section I performed a t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. I used R's t.test() function to find four different p-values.

***All three lots test***

<img width="532" alt="Screen Shot 2021-01-15 at 4 35 50 PM" src="https://user-images.githubusercontent.com/70611325/104791998-ac52b100-5751-11eb-8cf6-bbe1a67eb5e8.png">

***Lot 1 test***

<img width="418" alt="Lot1 2021-01-15 at 4 44 20 PM" src="https://user-images.githubusercontent.com/70611325/104792014-bb396380-5751-11eb-85f3-25b14fa8fbde.png">

***Lot 2 test***

<img width="571" alt="Lot 2 2021-01-15 at 4 42 23 PM" src="https://user-images.githubusercontent.com/70611325/104792019-bd032700-5751-11eb-84c0-cff1b15b46c1.png">

***Lot 3 test***

<img width="420" alt="Lot3 2021-01-15 at 4 43 49 PM" src="https://user-images.githubusercontent.com/70611325/104792017-bc6a9080-5751-11eb-8856-627e4cded14c.png">

Assuming the significance level of 0.05 percent, the p-value for all manufacturing lots (0.06028) is above our significance level. However, we can see that only in lot 3 the p-value (0.04) is below the significance level, which means that there is evidence that the suspension coil is different from the population mean.

## Study Design: MechaCar vs Competition






