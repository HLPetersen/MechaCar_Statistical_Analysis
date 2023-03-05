#Load dplyr
library(dplyr);

#Read csv as a dataframe
Mechacar_mpg<- read.csv(file="~/Projects/MechaCar_Statistical_Analysis/MechaCar_mpg.csv", stringsAsFactors = T);

#Perform multiple linear regression on dataframe. 
model<-lm(MechaCar_mpg$mpg~MechaCar_mpg$vehicle_length+MechaCar_mpg$vehicle_weight+MechaCar_mpg$spoiler_angle+MechaCar_mpg$ground_clearance+MechaCar_mpg$AWD,data=MechaCar_mpg)

#Summarize the model.
summary(model);