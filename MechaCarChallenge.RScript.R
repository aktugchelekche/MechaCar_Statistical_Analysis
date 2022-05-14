library(dplyr) # importing dplyr library
library(tidyverse) # importing tidyverse library
mchcars<-read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F) # reading MechaCar_mpg.csv
head(mchcars) # displying the columns 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mchcars) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mchcars) )


suscoil<-read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F) # reading Suscoil.csv

total_summary <-suscoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep' )
total_summary # Creating Summary Statistics 

lot_summary <- suscoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep' )
# Grouping By Lot 

sample_suscoil <- suscoil %>% sample_n(50) # Creating Sample Set for t_Test 
t.test(suscoil$PSI, mu =1500)


lot1 <- suscoil %>% subset(Manufacturing_Lot=="Lot1") #t-test lot1 against population mean = 1500 PSI
t.test(lot1$PSI, mu=1500)

lot2 <- suscoil %>% subset(Manufacturing_Lot=="Lot2") #t-test lot2 against population mean = 1500 PSI
t.test(lot2$PSI, mu=1500)

lot3 <- suscoil %>% subset(Manufacturing_Lot=="Lot3") #t-test lot3 against population mean = 1500 PSI
t.test(lot3$PSI, mu=1500)




