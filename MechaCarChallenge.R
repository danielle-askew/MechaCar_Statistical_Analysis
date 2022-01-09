#Deliverable 1: Linear Regression to Predict MPG
library(dplyr)
#Read CSV File
MechaCarChallenge <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
#generate multiple linear regression model
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCarChallenge)
#summary
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCarChallenge))

#Deliverable 2: Create Visualizations for the Trip Analysis
#Read CSV File
TripAnalysis <- read.csv(file="Suspension_Coil.csv ", check.names = F, stringsAsFactors = F)
#Create Summary
total_summary <- TripAnalysis %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
#Each lot summary 
lot_summary <- TripAnalysis %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
total_summary
lot_summary

#Deliverable 3: T-Tests on Suspension Coils
t.test(TripAnalysis$PSI, mu=1500)

t.test(subset(TripAnalysis,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(TripAnalysis,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(TripAnalysis,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)