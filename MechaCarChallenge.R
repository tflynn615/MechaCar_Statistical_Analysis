library(dplyr)


## MechaCar Linear Regression 
MechaCar <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =MechaCar))

##Suspension Coil Visualizations 
sus_coil <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

total_summary <- sus_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

lot_summary <- sus_coil %>% group_by(sus_coil$Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

## T Test 
t.test(sus_coil$PSI, mu=mean(sus_coil$PSI))

t.test(sus_coil$PSI, mu=mean(sus_coil$PSI), subset = (sus_coil$Manufacturing_Lot == "Lot1"))

t.test(sus_coil$PSI, mu=mean(sus_coil$PSI), subset = (sus_coil$Manufacturing_Lot == "Lot2"))

t.test(sus_coil$PSI, mu=mean(sus_coil$PSI), subset = (sus_coil$Manufacturing_Lot == "Lot3"))