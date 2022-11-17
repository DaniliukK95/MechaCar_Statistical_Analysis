# deliverable 1 - Linear regression to predict MPG

# import dplyr library
library(dplyr)

# import & read MechaCar_mpg.csv as a dataframe
MechaCar_mpg <- read.csv(file= 'MechaCar_mpg.csv', check.names = F,stringsAsFactors = F)

# perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
#(Intercept)      vehicle_length    vehicle_weight     spoiler_angle    ground_clearance      AWD  
#-1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00        -3.411e+00
# mpg=104 + 6.267VL + 0.0012VW + 0.069SA + 3.546GC - 3.411AWD

# determine the p value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))
# p value = 5.35e-11
# r-squared value = 0.7149


# deliverable 2 - Create visualizations for the trip analysis

# import and read CSV
suspension_coil <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# create dataframe of mean, median, variance, and standard dev of the PSI column. use summarize()
total_summary <- suspension_coil %>% summarize( Mean = mean(PSI), 
                                                Median = median(PSI), 
                                                Variance = var(PSI), 
                                                SD = sd(PSI), .groups = 'keep')

# create a dataframe of the mean, median, variance, and standard dev of the PSI column but use summarize() and group_by() 
# to group each manufacturing lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                             Median = median(PSI), 
                                                                             Variance = var(PSI), 
                                                                             SD = sd(PSI) , .groups = 'keep') 


# deliverable 3 - T-Tests on suspension coils

# use t.test() to determine if PSI is different for all lots
t.test(suspension_coil$PSI, mu=1500)

# use t.test() with subset() on each lot
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == 'Lot1'), mu=1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == 'Lot2'), mu=1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == 'Lot3'), mu=1500)
