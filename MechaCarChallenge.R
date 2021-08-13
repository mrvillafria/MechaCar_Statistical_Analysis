library(dplyr)

###### Deliverable 1 ######

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg) #create linear model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg)) #generate summary statistics


###### Deliverable 2 ######

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD=sd(PSI), .groups = 'keep')


###### Deliverable 3 ######

t.test(Suspension_Coil['PSI'], mu=1500)

lot1 <- Suspension_Coil %>% subset(Manufacturing_Lot == "Lot1")
t.test(lot1['PSI'], mu=1500)

lot2 <- Suspension_Coil %>% subset(Manufacturing_Lot == "Lot2")
t.test(lot2['PSI'], mu=1500)

lot3 <- Suspension_Coil %>% subset(Manufacturing_Lot == "Lot3")
t.test(lot3['PSI'], mu=1500)

