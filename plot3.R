if(!file.exists("getData.R")) stop("File getData.R not found in Working Directory!")

source("getData.R")

png("figure/plot3.png")
plot(data$DateTime,data$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab="")
lines(data$DateTime,data$Sub_metering_2, col="Red")
lines(data$DateTime,data$Sub_metering_3, col="Blue")
legend("topright", legend = names(data)[7:9], lty = 1, col = c("Black","Red","Blue"))
dev.off()
