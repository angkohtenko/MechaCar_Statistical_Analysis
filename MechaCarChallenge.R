# import dplyr package
library(dplyr)

# Import and read dataset as a dataframe
MechaCar <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# linear regression
model <- lm(MechaCar$mpg ~ MechaCar$vehicle_length + 
           MechaCar$vehicle_weight + 
           MechaCar$spoiler_angle +
           MechaCar$ground_clearance +
           MechaCar$AWD, MechaCar)

summary(model)
