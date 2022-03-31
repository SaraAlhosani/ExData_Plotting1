#Download the file and read csv
household_Consum <- read.csv("C:/Users/200062/Downloads/household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE)

#Change dmy and hms variables
household_Consumhousehold_Consum$Date <- as.Date(household_Consum$Date, format = "%d/%m/%Y")
household_Consum$DateTime <- strptime(paste(household_Consum$Date,household_Consum$Time),
                                 format = "%Y-%m-%d %H:%M:%S")
#Select data from "2007-2-1" to "2007-2-2"
household_Consum <-household_Consum[household_Consum$Date >= "2007-2-1" & household_Consum$Date <= "2007-2-2",]


household_Consum[,3] <- as.numeric(household_Consum[,3])
household_Consum[,4] <- as.numeric(household_Consum[,4])
household_Consum[,5] <- as.numeric(household_Consum[,5])
household_Consum[,6] <- as.numeric(household_Consum[,6])
household_Consum[,7] <- as.numeric(household_Consum[,7])
household_Consum[,8] <- as.numeric(household_Consum[,8])

#Using with function to create the first plot histogram
with(household_Consum, hist(Global_active_power, xlab = "Global Active Power (kilowatts)",
                       col = "red", main = "Global Active Power"))
                       
##Saving a copy of the plot as a PNG file
dev.copy(device = png, width = 480, height = 480, file = "Plot1.png")
