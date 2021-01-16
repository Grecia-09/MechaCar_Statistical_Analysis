# Deliverable 1

library(dplyr) #load dplyr package

# Performing Linear Regression on MPG data
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # read the file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MechaCar) # perform linear regression

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)) # perform summary

# Deliverable 2

# Creating visualizations for the Trip Analysis
Suspension_Coil <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F) # read the file

summarize_demo <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI)) # get a total summary

lot_demo <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI)) # create a lot summrary

# Deliverable 3

# Performing t-test
t.test(Suspension_Coil$PSI,mu = 1500) # perform t-test across all lots
Lot1 <- subset(Suspension_Coil, Manufacturing_Lot=='Lot1') # Create subset for lot 1 cars
t.test(x=Lot1$PSI, mu=1500) # t test on lot 1 cars' PSI with a mean of 1500
Lot2 <- subset(Suspension_Coil, Manufacturing_Lot=='Lot2') # Create subset for lot 2 cars
t.test(x=Lot2$PSI, mu=1500) # t test on lot 1 cars' PSI with a mean of 1500
Lot3 <- subset(Suspension_Coil, Manufacturing_Lot=='Lot3') # Create subset for lot 3 cars
t.test(x=Lot3$PSI, mu=1500) # t test on lot 1 cars' PSI with a mean of 1500




