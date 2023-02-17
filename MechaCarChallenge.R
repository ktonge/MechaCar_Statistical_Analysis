# Part 1
## Dependencies and Reading in Data
library(dplyr)
library(tidyverse)
MechaCarMpg <- read.csv(file="MechaCar_mpg.csv",check.names=F, stringsAsFactors = F)

## Linear Regression  
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarMpg) 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarMpg))

# Part 2
## Reading in Data
SuspensionCoil<- read.csv('Suspension_Coil.csv')

## Total Summary
total_summary <- summarize(SuspensionCoil, Mean=mean(PSI), Median=median(PSI),
                           Variance=var(PSI),SD=sd(PSI))
total_summary

## Summary by Lot
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups='keep')
lot_summary

# Part 3
t.test(SuspensionCoil$PSI, mu=1500)

t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)