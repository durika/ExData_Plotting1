if(!file.exists("getData.R")) stop("File getData.R not found in Working Directory!")

source("getData.R")

png("figure/plot2.png")
plot(data$DateTime,data$Global_active_power, type="l", ylab = "Global active power (kilowatts)", xlab="")
dev.off()
