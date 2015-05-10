#Load data
data = read.table("household_power_consumption.txt", sep = ";", header = T)
datasub = data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

#Make a histogram
png("plot1.png", width = 480)

hist(as.numeric(paste(datasub$Global_active_power)),xlab = "Global Active Power (kilowatts)",
     col = 2, main = c("Global Active Power"))

dev.off()