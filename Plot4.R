#Plot4
par(mfrow = c(2,2))
#Plotting topleft of the 4th plot
with(household_Consum, plot(DateTime, Global_active_power, type = "l", xlab = "",
                       ylab = "Global Active Power", xaxt = "n"))
axis(side = 1, at = c(as.numeric(household_Consum$DateTime[1]),
                      as.numeric(household_Consum$DateTime[1441]),
                      as.numeric(household_Consum$DateTime[2880])),labels = c("Thu","Fri","Sat"))
#Plot topright
with(household_Consum, plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage",
                       xaxt = "n"))
axis(side = 1, at = c(as.numeric(household_Consum$DateTime[1]),
                      as.numeric(household_Consum$DateTime[1441]),
                      as.numeric(household_Consum$DateTime[2880])),labels = c("Thu","Fri","Sat"))
#Plot bottomleft
with(household_Consum, plot(DateTime, Sub_metering_1, type = "n", xaxt = "n",
                       xlab = "", ylab = "Energy sub metering"))
axis(side = 1, at = c(as.numeric(household_Consum$DateTime[1]),
                      as.numeric(household_Consum$DateTime[1441]),
                      as.numeric(household_Consum$DateTime[2880])),labels = c("Thu","Fri","Sat"))
with(household_Consum, lines(DateTime, Sub_metering_1))
with(household_Consum, lines(DateTime, Sub_metering_2, col = "red"))
with(household_Consum, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright",lty = 1, col=c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#Ploting bottom right for plot4
with(household_Consum, plot(DateTime, Global_reactive_power, type= "l", xlab = "datetime", 
                       ylab = "Global_reactive_power", xaxt = "n"))
axis(side = 1, at = c(as.numeric(household_Consum$DateTime[1]),
                      as.numeric(household_Consum$DateTime[1441]),
                      as.numeric(household_Consum$DateTime[2880])),labels = c("Thu","Fri","Sat"))
#Saving Plot 4.png
dev.copy(device = png, width = 480, height = 480, file = "Plot4.png")
