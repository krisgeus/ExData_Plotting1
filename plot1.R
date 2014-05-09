## plot1.R
#assignmentsdir <- "/Users/kgeusebroek/dev/xebia/coursera/exdata-002/assessments/week1"
#setwd(assignmentsdir)
data <- read.csv(file="household_power_consumption.txt", header=T, sep=";", colClasses=c("character", "character", "double", "double", "double", "double", "double", "double", "double"), na.string="?")
data_one_and_two_feb_2007 <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
hist(data_one_and_two_feb_2007$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.copy(png, filename="ExData_Plotting1/plot1.png", width=480, height=480)
dev.off()
