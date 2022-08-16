# Deliverable 1
library(dplyr)
mecha_car_table <- read.csv('./Resources/MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_table))


# Deliverable 2
suspension_coil_table <- read.csv('./Resources/Suspension_Coil.csv', check.names=F, stringsAsFactors=F)
total_summary <- summarize(suspension_coil_table, mean(PSI), median(PSI), var(PSI), sd(PSI))

grouped_coils <- suspension_coil_table %>% group_by(Manufacturing_Lot)
lot_summary <- summarize(grouped_coils, mean(PSI), median(PSI), var(PSI), sd(PSI))


# Deliverable 3
t.test(suspension_coil_table[["PSI"]], mu=1500)
lot_1 <- subset(suspension_coil_table, Manufacturing_Lot == 'Lot1')
t.test(lot_1[["PSI"]], mu=1500)
lot_2 <- subset(suspension_coil_table, Manufacturing_Lot == 'Lot2')
t.test(lot_2[["PSI"]], mu=1500)
lot_3 <- subset(suspension_coil_table, Manufacturing_Lot == 'Lot3')
t.test(lot_3[["PSI"]], mu=1500)
