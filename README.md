# MechaCar Statistical Analysis

A Statisitical analysis on automobile performance with R. 

## Overview
In this project, I will perform a statistical analyisis on production data to discover cause of production troubles that blocking the manufacturing team’s progress. My goal to perform following statistical tests and models :

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

# Results 
## Linear Regression to Predict MPG


<p align = "center">
<img width="50%" alt="Screen Shot 2022-05-15 at 10 19 10 AM" src="https://user-images.githubusercontent.com/98676400/168480287-616cad2b-962e-4e0c-9d58-d6e6f4ad22e9.png">
<p align= "center">Figure-1</p>
</p>

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
In order to answer this question, we have to refer to one of the most important constant in statistics which is known as  <code> p-value </code> probablity valut. In nutshell, if the p-value is below 0.05 is statistically unlikely to provide random amounts of variance to the linear model, implies that those variables have a significant impact on <code>mpg</code>. According to Figure 1 ground clearance <code>p-value = 5.21 x 10<sub>-8</sub> </code>, vehicle length (p-value = 2.60 x 10-12), as well as intercept (p-value = 5.08 x 10-8) provided a non-random amount of variance to the mpg values in the dataset. When an intercept is statistically significant, it means there are other variables and factors that contribute to the variation in mpg that have not been included in the model. These variables may or may not be within our dataset and may still need to be collected or observed 
