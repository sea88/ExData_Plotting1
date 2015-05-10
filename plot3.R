#Load data
data = read.table("household_power_consumption.txt", sep = ";", header = T)
datasub = data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

#Make plot 3
png("plot3.png",width = 480)

plot(as.numeric(paste(datasub$Sub_metering_1)),ylab = "Energy sub metering",
     main = c(""),type = "l",xaxt = "n",xlab = "")
axis(1,at=c(1,1441,2880),labels = c("Thu","Fri","Sat"))
lines(as.numeric(paste(datasub$Sub_metering_2)),col=2)
lines(as.numeric(paste(datasub$Sub_metering_3)),col=4)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,col=c(1,2,4))

dev.off()