#Load data
data = read.table("household_power_consumption.txt", sep = ";", header = T)
datasub = data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

#Make plot 4
png("plot4.png", width = 480)
par(mfrow=c(2,2))

#Make first plot
plot(as.numeric(paste(datasub$Global_active_power)),ylab = "Global Active Power",
     main = c(""),type = "l",xaxt = "n",xlab = "")
axis(1,at=c(1,1441,2880),labels = c("Thu","Fri","Sat"))

#Make second plot
plot(as.numeric(paste(datasub$Voltage)),ylab = "Voltage",
     main = c(""),type = "l",xaxt = "n",xlab = "datetime")
axis(1,at=c(1,1441,2880),labels = c("Thu","Fri","Sat"))

#Make third plot
plot(as.numeric(paste(datasub$Sub_metering_1)),ylab = "Energy sub metering",
     main = c(""),type = "l",xaxt = "n",xlab = "")
axis(1,at=c(1,1441,2880),labels = c("Thu","Fri","Sat"))
lines(as.numeric(paste(datasub$Sub_metering_2)),col=2)
lines(as.numeric(paste(datasub$Sub_metering_3)),col=4)
legend("topright",bty="n",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,col=c(1,2,4))

#Make fourth plot
plot(as.numeric(paste(datasub$Global_reactive_power)),ylab = "Global_reactive_power",
     main = c(""),type = "l",xaxt = "n",xlab = "datetime")
axis(1,at=c(1,1441,2880),labels = c("Thu","Fri","Sat"))

dev.off()