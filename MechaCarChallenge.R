library(dplyr)

mecha_car <- read.csv('./MechaCar_mpg.csv')

summary(lm(mpg ~ vehicle_length + vehicle_weight + 
     spoiler_angle + ground_clearance +
     AWD, data = mecha_car))

sus_coil <- read.csv('./Suspension_Coil.csv')

total_summary <- sus_coil %>% 
  summarize(Mean=mean(PSI), Median=median(PSI),
            Variance=var(PSI), SD=sd(PSI))

lot_summary <- sus_coil %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI),
            Variance=var(PSI), SD=sd(PSI), 
            .groups = 'keep')

t.test(sus_coil$PSI,mu=1500)

t.test(subset(sus_coil, 
              Manufacturing_Lot == 'Lot1')$PSI,
       mu=1500)

t.test(subset(sus_coil, 
              Manufacturing_Lot == 'Lot2')$PSI,
       mu=1500)

t.test(subset(sus_coil, 
              Manufacturing_Lot == 'Lot3')$PSI,
       mu=1500)