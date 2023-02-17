# MechaCar_Statistical_Analysis
The purpose of this lesson was to famliarize ourselves with R through RStudio, and provide a fictional car company, MechaCar, with an analytic review of their production data.  

## Linear Regression to Predict MPG
The goal of our multiple linear regression was to determine which variables in the given dataset predict the miles per gallon (mpg) of the a fictional prototype. 
![deliverable1](/photos/part1deliverable.png)

Our first analysis showed that two variables (vehicle length and and ground clearance), pass a confidence test of .05 or lower (the significance level we chose for this analysis), meaning that they are most likely non-random variance. This is enough information to reject the null hypothesis that ground clearance and vehicle length do not have a significant affect on mpg.  

The P-value for the regression came out to 5.35e-11, which passes a confidence test, and shows us that the slope of the model cannot be 0.  

Although the r-squared value is 0.6825, suggesting that while there are important factors not included in the dataset provided, our regression model fairly accurately predicts the effect that the variables in our dataset have.  

## Summary Statistics on Suspension Coils
Our next analysis involved manipulating data about the weight capacities of suspension coils, both in total as well as across three different manufacturing lots.  

### Total PSI Statistics
Specifications for the MechaCar we were given state that it is important that the variance of the pressure in suspension coils does not exceed 100 pounds per square inch (PSI).
![deliverable2a](/photos/part2deliverabletotal.png)
For the total we can see that the variance is 62.293 PSI, which is lower than the specified variance we were given. However, this looked significantly different after we broke the information down by lot.

### PSI Statistics by Manufacturing Lot 
![deliverable2b](/photos/part2deliverablelot.png)
While Lots 1 and 2 both had variances well with the limitations, Lot 3's variance was much higher at 170.28 PSI, suggesting discrepencies in their manufacturing processes compared to 1 and 2.  

## T-Test on Suspension Coils
Lastly,  we were tasked with determining if the PSI readings (both in total as well as between the three manufacturing lots) were statistically different from the population mean.  Having a p-value of above our signifiance level of 0.05 would conclude that the sample mean is not likely to be significantly different from the population mean 

### Total PSI T-Test 
![deliverable3](/photos/part3deliverabletotal.png)
Our initial t-test yielded a p-value of approximately 0.06, which is above our significance level of 0.05.  For our total sample,  the mean should not be significantly different.  

### PSI T-Test by Manufacturing Lot

#### Lot 1 and 2 
![deliverable3a](/photos/part3deliverablelot1.png)
![deliverable3b](/photos/part3deliverablelot2.png)
Lot 1 (p-value: 1) and Lot 2 (p-value:0.6072) both had p-values that lead us to conclude that their sample mean should not differ significantly from the population mean. 

#### Lot 3
Our manufacturing issues initially identified in our summary statistics for Lot 3, continued in our T-test results.  
![deliverable3c](/photos/part3deliverablelot3.png)
It was the only lot with a p-value below our significance level (p-value:0.04168)

## Comparing the MechaCar to the Competition

