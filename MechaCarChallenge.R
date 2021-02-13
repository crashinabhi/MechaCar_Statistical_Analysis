

#Read CSV
mechacar <- read.csv(file='MechaCar_mpg.csv',check.names=F, stringsAsFactors = F)

#Run Regression on the data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechacar)

#Run Summary on the regression of Data
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechacar))