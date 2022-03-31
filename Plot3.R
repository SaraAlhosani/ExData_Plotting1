#Plot3
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
#Save plot3.png
dev.copy(device = png, width = 480, height = 480, file = "Plot3.png")
