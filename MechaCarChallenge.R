
#Challenge 1
#Read CSV
mechacar <- read.csv(file='MechaCar_mpg.csv',check.names=F, stringsAsFactors = F)

#Run Regression on the data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechacar)

#Run Summary on the regression of Data
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechacar))

summary(lm(mpg ~ vehicle_weight,data = mechacar))

#Challenge 2
#Read CSV
sus_coil <- read.csv(file='Suspension_Coil.csv',check.names=F, stringsAsFactors = F)

#create a summary for the suspension coil's PSI column
total_summary <- sus_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')


#create a summary of the data by lot
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#Challenge 3
#create sample of the total population
sample_data <- sus_coil %>% sample_n(30)

#compare sample versus population
t.test(log10(sample_data$PSI),mu=mean(log10(sus_coil$PSI)))

#Create samples of Lots
lot1 <- sus_coil %>% filter(Manufacturing_Lot=="Lot1")
lot2 <- sus_coil %>% filter(Manufacturing_Lot=="Lot2")
lot3 <- sus_coil %>% filter(Manufacturing_Lot=="Lot3")

#compare lot1 versus population
t.test(log10(lot1$PSI),mu=mean(log10(sus_coil$PSI)))

#compare Lot2 versus population
t.test(log10(lot2$PSI),mu=mean(log10(sus_coil$PSI)))

#compare lot3 versus population
t.test(log10(lot3$PSI),mu=mean(log10(sus_coil$PSI)))


