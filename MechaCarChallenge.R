# Deliverable 1
library(dplyr)
mecha_car_table <- read.csv('MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_table))

# Deliverable 2
suspension_coil_table <- read.csv('Suspension_Coil.csv', check.names=F, stringsAsFactors=F)
total_summary <- summarize(suspension_coil_table, mean(PSI), median(PSI), var(PSI), sd(PSI))

#grouped_coils <- group_by(suspension_coil_table, Manufacturing_Lot)
grouped_coils <- suspension_coil_table %>% group_by(Manufacturing_Lot)
lot_summary <- summarize(grouped_coils, mean(PSI), median(PSI), var(PSI), sd(PSI))
