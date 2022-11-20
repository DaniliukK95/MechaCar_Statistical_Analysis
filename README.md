# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
![D1_LR](https://github.com/DaniliukK95/MechaCar_Statistical_Analysis/blob/main/images/D1_LR.png)
![D1_SUM](https://github.com/DaniliukK95/MechaCar_Statistical_Analysis/blob/main/images/D1_SUM.png)

- Which variables/coefficients provided a non-random amount of variance to the MPG values in the dataset?
The vehicle length and ground clearance have p-values of 2.60e-12 and 5.21e-08 respectively. This means that they contribute non-random amounts of variance to the MPG values. So, they have the most significant impact on the MPG. 

- Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero. This is because the p-value is 5.35e-11 which is very small compared to the significance level of 0.05.

- Does this linear model predict MPG of MechaCar prototypes effectively? Why or why not?
With the r-squared value alone of 0.7149, this linear model is effective. But the r-squared value cannot be counted on alone. There can be other variables not included in the dataset which can contribute to the variation. 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![D2_TS](https://github.com/DaniliukK95/MechaCar_Statistical_Analysis/blob/main/images/D2_TS.png)
![D2_LS](https://github.com/DaniliukK95/MechaCar_Statistical_Analysis/blob/main/images/D2_LS.png)

The first image uploaded uses the data from all the lots to calculate the values. It is the total summary. With this table, we get a variance of 62.29356 PSI. This is within the tolerance specifications of not exceeding 100 PSI. The second image uploaded looks at the lots separately. Using this information, we can see that Lot3 exceeds the specifications coming in at 170 PSI. So together, the data as one would meet the specifications, but as individual lots, only Lot3 does not meet the specifications. 

## T-Tests on Suspension Coils
![D3_TT](https://github.com/DaniliukK95/MechaCar_Statistical_Analysis/blob/main/images/D3_TT.png)
![D3_TL1](https://github.com/DaniliukK95/MechaCar_Statistical_Analysis/blob/main/images/D3_TL1.png)
![D3_TL2](https://github.com/DaniliukK95/MechaCar_Statistical_Analysis/blob/main/images/D3_TL2.png)
![D3_TL3](https://github.com/DaniliukK95/MechaCar_Statistical_Analysis/blob/main/images/D3_TL3.png)

In this part of the analysis, we performed t-tests to determine if the mean from the total of all the manufacturing lots along with each individual lot, was significantly different from the population mean of 1500 PSI. We used the accepted p-value of 0.05. The first image above is the t-test of the total of all the lots. The second image is the t-test of Lot1 only. Then the third and fourth image are the t-tests of Lot2 and Lot3 respectively. 

The Hypothesis for all the t-tests can be presented as: 
- Null Hypothesis (Ho): There is no significant difference between the mean PSI of said manufacturing lot or lots from the population mean of 1500 PSI.
- Alternative Hypothesis (Ha): There is a significant difference between the mean PSI of said manufacturing lot or lots from the population mean of 1500 PSI. 

In the first image, we can see that the p-value is 0.06 which is greater than 0.05 and therefore we REJECT the null hypothesis for all the manufacturing lots. 
In the second image (Lot1), the p-value is 1.0 which is greater than 0.05 and therefore we reject the null hypothesis. 
Similarly in the third image for Lot2, the p-value is 0.6 which is once again greater than 0.05 and therefore we reject the null hypothesis. 
The final picture is the t-test of Lot3 which 0.04. This lot is the only one that is less than 0.05 and so for this lot, we FAIL to reject the null hypothesis. 
Overall, there is not enough evidence to reject the null hypothesis which suggests the two means are statistically similar. 

## Study Design: MechaCar vs Competition
A great analysis for any company is to compare itself to its competition. This is a strong way to advertise the strengths of your company/product and to also find ways to improve certain weaknesses. A study that can be used to quantify MechaCar’s performance to others, is cost. Is the car worth the price compared to the competition?  

1) What metrics will be tested?
- The current retail price of the vehicle against highway fuel efficiency, maintenance cost, and resale value

2) What is the null hypothesis and alternative hypothesis?
- Null Hypothesis (Ho): The MechaCar is priced correctly with the metrics considered.
- Alternative Hypothesis (Ha): The MechaCar is not priced correctly with the metrics considered. 

3) What statistical test will be used?
- We will use a multiple linear regression test to see how the independent variables (highway fuel efficiency, maintenance cost, resale value) will impact the dependent variable (current retail price). This test will help us see any impact that each metric or if all the metrics impact the retail price of the vehicle.

4) What data is needed to run the test?
- We need to collect data from the metrics mentioned above to run this test. We would use the data from MechaCar and its competitors. A random sample and the larger the size will also produce more reliable results.
