library(dplyr) # importing dplyr library
library(tidyverse) # importing tidyverse library
mchcars<-read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F) # reading MechaCar_mpg.csv
head(mchcars) # displying the columns 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mchcars) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mchcars) )

