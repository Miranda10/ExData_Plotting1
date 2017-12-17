# read table
setwd("/Users/chenyangshi/Desktop/coursera/exploratory data analytics")
data <- read.table("household_power_consumption.txt",skip=1,sep = ";")
names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subdata <- subset(data, data$Date=="1/2/2017" | data$Date=="2/2/2017")

png(filename = "plot 1.png")

# plot 1 
hist(as.numeric(as.character(data$Global_active_power)),col = "red",main = "Global Active Power",xlab = "Global Active Power(kilowatts)")

dev.off()