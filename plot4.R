if(!file.exists("getData.R")) stop("File getData.R not found in Working Directory!")

source("getData.R")


png("figure/plot4.png")
par(mfrow=c(2, 2))
#plot1
plot(data$DateTime,data$Global_active_power, type="l", ylab = "Global active power", xlab="")
#plot2
plot(data$DateTime,data$Voltage, type="l", ylab = "Voltage", xlab="datetime")
#plot3
plot(data$DateTime,data$Sub_metering_1, type="l", ylab = "Global active power", xlab="")
lines(data$DateTime,data$Sub_metering_2, col="Red")
lines(data$DateTime,data$Sub_metering_3, col="Blue")
legend("topright", bty = "n", legend = names(data)[7:9], lty = 1, col = c("Black","Red","Blue"))
#plot4
plot(data$DateTime,data$Global_reactive_power, type="l", xlab="datetime", ylab = "Global_reactive_power")
dev.off()
