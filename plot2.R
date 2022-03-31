#Plot2
with(household_Consum, plot(DateTime, Global_active_power, type = "l", xlab = "",
                       ylab = "Global Active Power (kilowatts)", xaxt = "n"))
axis(side = 1, at = c(as.numeric(household_Consum$DateTime[1]),
                      as.numeric(household_Consum$DateTime[1441]),
                      as.numeric(household_Consum$DateTime[2880])),labels = c("Thu","Fri","Sat"))
                      
#Save a copy of plot 2
dev.copy(device = png, width = 480, height = 480, file = "Plot2.png")
