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
In order to answer this question, we have to refer to one of the most important constant in statistics which is known as  <code> p-value </code> probablity valut. In nutshell, if the p-value is below 0.05 is statistically unlikely to provide random amounts of variance to the linear model, implies that those variables have a significant impact on <code>mpg</code>. According to Figure 1 : 
* Ground clearance <code>p-value = 5.21 x 10<sup>-8</sup> </code>,
* Vehicle length <code>p-value = 2.60 x 10<sup>-12</sup></code>,
* Intercept <code>p-value = 5.08 x 10<sup>-8</sup></code>

a non-random amount of variance to the mpg values in the dataset. Since the intercept is statistically significant, that implies we can assume that there are other variables and factors can have significant impact to the variation in mpg that have not been included in the model. 

#### Is the slope of the linear model considered to be zero? Why or why not?

From the Linear Reggesion model the  <code> p-value</code> of our statistic is <code>5.35 x 10<sup>-11<sup></code>, much lower than significance level of <code>0.05%</code>. Thus,there are sufficient evidence to <strong>reject the null hypothesis H<sub>0</sub> :The slope of the linear model is zero</strong>. 
We can conclude that there is a strong linear relationship between variables and mpg of MechaCar prototype. Figure-2 would is showing the linear relation between <code> MPG ~ Vehicle Length </code>. 
  
<p align = "center">
<img width="50%" alt="Screen Shot 2022-05-15 at 10 19 10 AM" src="https://user-images.githubusercontent.com/98676400/168482006-9650fd8e-6038-4dc2-9d39-249776447a62.png">
<p align= "center">Figure-2</p>
</p>
  
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
