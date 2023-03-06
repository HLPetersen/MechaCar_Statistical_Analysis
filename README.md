# <b> MechaCar Analysis </b>
## <b> Overview of Analysis </b>
This analysis is based on two sets of data, MechaCar_mpg.csv and Suspension_Coil.csv. The first dataset contains information on 50 different MechaCar prototypes. The second dataset contains information on the psi of the suspension coils on 150 different vehicles made in three different manufacturing lots of 50 vehicles each. 

## Linear Regression to Predict MPG
The mechacar_mpg.csv file contains information about 50 prototypes. The information includes the vehicle length, vehicle weight, the spoiler angle, ground clearance, whether the car is all wheel drive or not, and the miles per gallon each car achieves on average. The file was used to create a multiple regression model of the variables' effects on mpg for the prototypes. 
    
<img width="453" alt="summary of linear regression model" src="https://user-images.githubusercontent.com/116980760/222988772-01f451f3-29c9-4404-91e5-5b44926eff31.PNG">

The variables that have the most impact on fuel economy are vehicle length and ground clearance. They are the only two variables that provide a non-random amount of variance to the mpg values in the dataset. The p-value of the regression is 5.35 x 10<sup>-11</sup> so there is significant evidence to reject the null hypothesis, which is to say that the slope is not zero. 71% of the response variable can be attributed to the variables and the p-value shows that the overall regression has statistical significance. 

## Summary Statistics on Suspension Coils 
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
The design specifications for the suspension coils say that the variance must not be more than 100 pounds per square inch. For all of lots together, it meets this specification with the variance approximately 62.29 psi.

<img width="350" alt="summarystatstable" src="https://user-images.githubusercontent.com/116980760/223024248-7ee00b82-b330-4da5-8e26-117269f2efd0.PNG">

For the lots individually, lot 1 and lot 2 have psi variance of approximately 0.98 and 7.47 respectively, but lot 3 exceeds the limit with a variance of about 170.29.

<img width="453" alt="lot summary" src="https://user-images.githubusercontent.com/116980760/223024258-68adb4a1-d3a4-4cb8-9930-f13404a2c2b2.PNG">

##  T-Tests on Suspension Coils
### All Manufacturing Lots
The p-value for all manufacturing lots together is approximately 0.06 which is greater than the significance level of 0.05. There is not enough evidence to reject the null hypothesis. Thus, the two means are statistically similar.

<img width="335" alt="all" src="https://user-images.githubusercontent.com/116980760/223031266-540a7392-f72d-44ea-8a06-4e670e4152a3.PNG">

### Lot 1
The p-value for only the manufacturing lot 1 is 1, so the two means are statistically similar.

<img width="488" alt="Lot1" src="https://user-images.githubusercontent.com/116980760/223030412-faf7ba61-8c30-4c46-b043-4c9fa48e7ddb.PNG">

### Lot 2
Like Lot 1, Lot 2 has a p-value that is greater than 0.05, it is about 0.61, so the means are statistically similar.

<img width="483" alt="Lot2" src="https://user-images.githubusercontent.com/116980760/223030450-fe994fff-ec6a-43cf-8022-d8e9bc185398.PNG">


### Lot 3
Lot 3 is the only lot that would allow rejecting the null hypothesis as its p-value is 0.04 which is less than 0.05; therefore, the means are statistically different. 

<img width="486" alt="Lot3" src="https://user-images.githubusercontent.com/116980760/223030497-233cc4db-e381-4294-85bf-80967ce0017d.PNG">

## Study Design: MechaCar vs Competition
A study should be conducted comparing the MechaCar with a similar type of car. The cars in the study could be divided by the company that manufactures the cars. Most consumers are interested in the lifetime cost per mile of a car. This variable is both continuous and numerical where the car manufacturer will be categorical. The best test to quantify this difference would be the one-way analysis of variance test. The null hypothesis is that the means are statistically similar and the alternative hypothesis is at least one of the means is different than the rest. The first step will be identifying a similar car to the MechaCar for comparison. Then information will need to be found on all the costs associated with each type of car (initial cost, maintenance, fuel economy, average miles over the lifetime of the car, insurance costs, repair costs, and registration fees based on an average user as a standard for both cars.)
