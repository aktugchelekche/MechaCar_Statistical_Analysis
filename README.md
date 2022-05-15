# MechaCar Statistical Analysis

A Statistical analysis on automobile performance with R. 

## Overview
In this project, I will perform a statistical analysis on production data to discover cause of production troubles that blocking the manufacturing team’s progress. My goal to perform following statistical tests and models :

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

# Results 
## Linear Regression to Predict MPG


<p align = "center">
<img width="50%" alt="Screen Shot 2022-05-15 at 10 19 10 AM" src="https://user-images.githubusercontent.com/98676400/168480287-616cad2b-962e-4e0c-9d58-d6e6f4ad22e9.png">
<p align= "center"><code>Figure-1</code></p>
</p>

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
In order to answer this question, we have to refer to one of the most important constant in statistics which is known as  <code> p-value </code> probability value. In nutshell, if the p-value is below 0.05 is statistically unlikely to provide random amounts of variance to the linear model, implies that those variables have a significant impact on <code>mpg</code>. According to Figure 1 : 
* Ground clearance <code>p-value = 5.21 x 10<sup>-8</sup> </code>,
* Vehicle length <code>p-value = 2.60 x 10<sup>-12</sup></code>,
* Intercept <code>p-value = 5.08 x 10<sup>-8</sup></code>

a non-random amount of variance to the mpg values in the dataset. Since the intercept is statistically significant, that implies we can assume that there are other variables and factors can have significant impact to the variation in mpg that have not been included in the model. 

#### Is the slope of the linear model considered to be zero? Why or why not?

From the Linear Regression model the  <code> p-value</code> of our statistic is <code>5.35 x 10<sup>-11<sup></code>, much lower than significance level of <code>0.05%</code>. Thus,there are sufficient evidence to <strong>reject the null hypothesis H<sub>0</sub> :The slope of the linear model is zero</strong>. 
We can conclude that there is a strong linear relationship between variables and mpg of MechaCar prototype. Figure-2 would is showing the linear relation between <code> MPG ~ Vehicle Length </code>. 
  
<p align = "center">
<img width="50%" alt="Screen Shot 2022-05-15 at 10 19 10 AM" src="https://user-images.githubusercontent.com/98676400/168482006-9650fd8e-6038-4dc2-9d39-249776447a62.png">
  <p align= "center"><code>Figure-2</code></p>
</p>
  
#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  
To quantify how well our linear model can be used to predict future observations, our linear regression functions will calculate an r-squared value. The <code>r-squared (r2)</code> value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points. In most cases, the r-squared value will range between 0 and 1 and can be used as a probability metric to determine the likelihood that future data points will fit the linear model.
Yes, from <code>Figure-1</code> we can see that <code>r-squared = 0.7149 </code> which indicates that our model does predict the mpg of the MechaCar prototype with some relative effectiveness.
  
## Summary Statistics on Suspension Coils
  
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  

<p align = "center">
<img width="50%" alt="Screen Shot 2022-05-15 at 10 19 10 AM" src="https://user-images.githubusercontent.com/98676400/168491310-4d663588-10fc-4acb-b4a7-e4613438a9e2.png">
  <p align= "center"><code>Figure-3</code></p>
</p>

Since the variance of the suspension coils must be less than  100 pounds per square inch then the current manufacturing data meet this design specification for all manufacturing lots in total as <code> 62.29356</code> in <code> Figure-3</code>


<p align = "center">
<img width="50%" alt="Screen Shot 2022-05-15 at 10 19 10 AM" src="https://user-images.githubusercontent.com/98676400/168491489-6d84acd0-ce56-40cd-a88d-2cd1d188c4e8.png">
  <p align= "center"><code>Figure-4</code></p>
</p>

However, when we created a summary for each individual lot , we can observe that <code> Lot 3</code> exceed the limit of 100 pounds PSI as <code> 170.286 </code> in <code> Figure-4 </code> . 

## T-Tests on Suspension Coils

One-sample t-test is to determine whether there is a statistical difference between the means of a sample dataset (suspension coil data set) and a population dataset with a given mean of 1,500 PSI.

H<sub>0</sub>: No difference between the suspension coil data set mean and its presumed population mean of 1,500 PSI.

H<sub>a</sub>: There is a statistical difference between the mean of suspension coil data set and its presumed population mean of 1,500 PSI.

In order to decide which Hypothesis we can reject or fail to reject, we need to calculate <code>p-value </code> of each observation and if the  <code>p-value</code> is lower than the significance level <code>0.005</code> we can reject the null hypothesis and accept H<sub>a</sub> .

<table>
  <tr>
    <td><strong>Cumulative T-test on Suspension Coils</strong>: As we can see from the cumulative T-test<code> p-value = 0.06028</code> that is quite higher than <code>0.05</code> thus we fail to reject the null hypothesis that the the mean of the sample and its presumed population mean not statistically different</td>
    <td><img width="900" alt="Screen Shot 2022-05-15 at 3 05 37 PM" src="https://user-images.githubusercontent.com/98676400/168491796-ccd3ae70-d5a2-45ef-bf6c-69f335c611d5.png"></td>
  </tr>
  <tr>
  <td><strong>T-test on Suspension Coils Lot 1 </strong>: As we can see from the cumulative T-test<code> p-value = 1</code> that is quite higher than <code>0.05</code> thus we fail to reject the null hypothesis that the the mean of the sample and its presumed population mean not statistically different </td>
    <td><img width="428" alt="Screen Shot 2022-05-15 at 3 06 19 PM" src="https://user-images.githubusercontent.com/98676400/168491826-580b1806-1ca8-481e-80f9-f8371cedde17.png"></td>
  </tr>
  <tr>
  <td><strong>T-test on Suspension Coils Lot 2</strong>: As we can see from the cumulative T-test<code> p-value = 0.6072</code> that is quite higher than <code>0.05</code> thus we fail to reject the null hypothesis that the the mean of the sample and its presumed population mean not statistically different</td>
    <td><img width="418" alt="Screen Shot 2022-05-15 at 3 08 17 PM" src="https://user-images.githubusercontent.com/98676400/168491881-2d48905c-4973-42f2-94f5-a66e1fb9a868.png"></td>
  </tr>
  <tr>
  <td><strong>T-test on Suspension Coils Lot 3</strong>: As we can see from the cumulative T-test<code> p-value = 0.04168</code> that is quite less than <code>0.05</code> thus we can reject the null hypothesis that the the mean of the sample and its presumed population mean are statistically different. This lot might be the cause of production troubles and need more attention to find the issue. </td>
    <td><img width="417" alt="Screen Shot 2022-05-15 at 3 08 53 PM" src="https://user-images.githubusercontent.com/98676400/168491895-3289d7d0-59e6-4885-a1e4-5fbd42e7b63e.png"></td>
  </tr>
</table>

## Study Design: MechaCar vs Competition

In order to compare the performance of the MechaCar against the competition, we can refer to few different  variables such as ,  fuel efficiency, horsepower, safety rating,carbon waste and emissions system.

#### What metric or metrics are you going to test?

The metrics are horsepower and highway fuel efficiencies.

#### What is the null hypothesis or alternative hypothesis?

H<sub>0</sub>: The means of fuel efficiency of all groups are equal.
H<sub>a</sub>: There is at least one mean that has different fuel efficiency from all other groups.

#### What statistical test would you use to test the hypothesis? And why?
Using a one-way ANOVA test would be a good fit for this analysis since we are working on a single variable with multiple groups. Here we can assign  single dependent variable fuel efficiency means across a single independent variable horse power with multiple groups. Depends on <code> p-value</code> we can either we reject the null hypothesis, conclude that at least one of the means of fuel efficiency is different from all other groups.
#### What data is needed to run the statistical test?
Following data is needed to run this statistical test,

* VIN number
* Horse Power data
* Fuel Efficiency data

# Resources 

Data Source:

* MechaCar_mpg.csv
* Suspension_Coil.csv

Software:

* RStudio
* Languages: R

