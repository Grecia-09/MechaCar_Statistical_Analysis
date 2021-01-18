# MechaCar_Statistical_Analysis

## Overview

The purpose of this analysis is to offer insights on the MechaCar's production data for insights that may help the manufacturing team. The statistical analysis and visualizations are written in the R programming language.

## Linear Regression to Predict MPG

For this section I worked with one of the dataset that was provided, which is the miles per gallon dataset. From there, I preformed a multiple linear regression to see if it could predict the miles per gallon (mpg) dependent variable by using the vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive (AWD) independent variables.

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

<img width="404" alt="Screen Shot 2021-01-18 at 3 28 44 PM" src="https://user-images.githubusercontent.com/70611325/104970887-e4e8c980-59a1-11eb-8611-c107441d6469.png">

***Lot 1 test***

<img width="418" alt="Lot1 2021-01-15 at 4 44 20 PM" src="https://user-images.githubusercontent.com/70611325/104792014-bb396380-5751-11eb-85f3-25b14fa8fbde.png">

***Lot 2 test***

<img width="451" alt="Screen Shot 2021-01-18 at 3 28 35 PM" src="https://user-images.githubusercontent.com/70611325/104970889-e7e3ba00-59a1-11eb-8f58-ee1c09924ab2.png">>

***Lot 3 test***

<img width="420" alt="Lot3 2021-01-15 at 4 43 49 PM" src="https://user-images.githubusercontent.com/70611325/104792017-bc6a9080-5751-11eb-8856-627e4cded14c.png">

Assuming the significance level of 0.05 percent, the p-value for all manufacturing lots (0.06028) is above our significance level. However, we can see that only in lot 3 the p-value (0.04) is below the significance level, which means that there is evidence that the suspension coil is different from the population mean.

## Study Design: MechaCar vs Competition

When most people start thinking about getting a car, all they can think about is looking for speed but also have to use less gas to go a given distance. Based on that, the metrics which would be of interest to a potential consumer are fuel efficiency and horsepower (hp). By tackling these metrics wisely, MechaCar could outperform the competition.

- Fuel Efficency refers to the ability of a vehicle to extract energy from fuel. The more energy a vehicle can extract from fuel, the greater fuel-efficiency the vehicle is said to have. This is important because less fuel is required to cover a journey, fuel-efficient cars save more money for drivers in the long-term. In the United States, fuel efficiency is expressed as "miles per gallon" (mpg).

  * H0: The means of mpg of all groups are equal.
  * Ha: At least one of the means of mpg is different from the other groups.
  
  We should use an ANOVA test to compare the means of a continuous numerical variable across a number of groups. A one-way ANOVA is used to test the means of a       single dependent variable across a single independent variable with multiple groups, and determine whether any of those means are statistically significantly       different from each other. 
  
  For conducting this test, fuel efficiency data of all the concerned manufacturers is required.
  
- Horsepower(hp) refers to the power an engine produces, we can think of higher horsepower being the specification that will sustain a higher rate of work once moving.
  
  * H0: The means of hp of all groups are equal.
  * Ha:  At least one of the means of hp is different from the other groups.
  
   For this second metric, we should perform an one-way ANOVA test as well to determine if there’s a difference between the horsepower sample mean and horsepower      population mean.
   
    For conducting this test, horsepower data of all the concerned manufacturers is required.
  



