# import dependencies
library(dplyr)

# Deliverable 1:
# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechacar_data <- read.csv("Resources/MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)

head(mechacar_data)

# Perform linear regression using the lm() function
mechacar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_data)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(mechacar_lm)


# Deliverable: 2
suspension_coil <- read.csv("Resources/Suspension_Coil.csv",stringsAsFactors = F,check.names = F)

head(suspension_coil)

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot 
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')


# Deliverable 3

# write an RScript using the t.test() function to determine if the PSI across all manufacturing lots 
t.test(suspension_coil$PSI,mu = 1500)

# Lot1
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Lot2
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Lot3
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
