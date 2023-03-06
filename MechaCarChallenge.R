#Load dplyr
library(dplyr);

#Read csv as a dataframe
Mechacar_mpg<- read.csv(file="~/Projects/MechaCar_Statistical_Analysis/MechaCar_mpg.csv", stringsAsFactors = T);

#Perform multiple linear regression on dataframe. 
model<-lm(MechaCar_mpg$mpg~MechaCar_mpg$vehicle_length+MechaCar_mpg$vehicle_weight+MechaCar_mpg$spoiler_angle+MechaCar_mpg$ground_clearance+MechaCar_mpg$AWD,data=MechaCar_mpg)

#Summarize the model.
summary(model);

#Read csv as a dataframe
Suspension_Coil<- read.csv(file="~/Projects/MechaCar_Statistical_Analysis/Suspension_coil.csv", stringsAsFactors = F);

#Create a summary dataframe from the supsension coil csv.
total_summary = summarize(Suspension_Coil, Mean=mean(Suspension_Coil$PSI), Median=median(Suspension_Coil$PSI), Variance = var(Suspension_Coil$PSI), SD = sd(Suspension_Coil$PSI));

#Create a lot summary dataframe that organizes mean, median, variance, and standard deviation by lot number.
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance= var(PSI), SD = sd(PSI))

#Run a t-test on all of the data to see if the mean is statistically different from the mean of 1500
t.test(x=Suspension_Coil$PSI, mu=1500);

#Run a t-test on each of the different lots to see if the mean is statistically different from the population mean.
t.test(x=subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=='Lot1'), mu=1500);
t.test(x=subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=='Lot2'), mu=1500);
t.test(x=subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=='Lot3'), mu=1500);
