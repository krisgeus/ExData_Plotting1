## plot2.R
#assignmentsdir <- "/Users/kgeusebroek/dev/xebia/coursera/exdata-002/assessments/week1"
#setwd(assignmentsdir)
data <- read.csv(file="household_power_consumption.txt", header=T, sep=";", colClasses=c("character", "character", "double", "double", "double", "double", "double", "double", "double"), na.string="?")
data_one_and_two_feb_2007 <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

#combine date and time
data_one_and_two_feb_2007$DateTime <- as.POSIXct(paste(data_one_and_two_feb_2007$Date, data_one_and_two_feb_2007$Time), format="%d/%m/%Y %H:%M:%S", tz="UTC")

# the plot
plot(Global_active_power ~ DateTime, data=data_one_and_two_feb_2007, ylab = "Global Active Power (kilowatts)", xlab="", type="n")
lines(Global_active_power ~ DateTime, data=data_one_and_two_feb_2007, lwd=1)
dev.copy(png, filename="ExData_Plotting1/plot2.png", width=480, height=480)
dev.off()
