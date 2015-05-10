#Load data
data = read.table("household_power_consumption.txt", sep = ";", header = T)
datasub = data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

#Make plot 2
png("plot2.png", width = 480)
plot(as.numeric(paste(datasub$Global_active_power)),ylab = "Global Active Power (kilowatts)",
     main = c(""),type = "l",xaxt = "n",xlab = "")
axis(1,at=c(1,1441,2880),labels = c("Thu","Fri","Sat"))

dev.off()