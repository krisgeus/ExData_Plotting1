## plot3.R
#assignmentsdir <- "/Users/kgeusebroek/dev/xebia/coursera/exdata-002/assessments/week1"
#setwd(assignmentsdir)
data <- read.csv(file="household_power_consumption.txt", header=T, sep=";", colClasses=c("character", "character", "double", "double", "double", "double", "double", "double", "double"), na.string="?")
data_one_and_two_feb_2007 <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

#combine date and time
data_one_and_two_feb_2007$DateTime <- as.POSIXct(paste(data_one_and_two_feb_2007$Date, data_one_and_two_feb_2007$Time), format="%d/%m/%Y %H:%M:%S", tz="UTC")

# the plot
plot(Sub_metering_1 ~ DateTime, data=data_one_and_two_feb_2007, ylab = "Energy sub metering", xlab="", type="l")
lines(Sub_metering_2 ~ DateTime, data=data_one_and_two_feb_2007, lwd=1, col="red")
lines(Sub_metering_3 ~ DateTime, data=data_one_and_two_feb_2007, lwd=1, col="blue")
legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1, text.width=strwidth("                 Sub_metering_1"))
dev.copy(png, filename="ExData_Plotting1/plot3.png", width=480, height=480)
dev.off()
