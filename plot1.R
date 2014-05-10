if(!file.exists("getData.R")) stop("File getData.R not found in Working Directory!")

source("getData.R")

png("figure/plot1.png")
hist(data$Global_active_power, main = "Global active power", ylab = "Frequency", xlab = "Global active power (kilowatts)", col="Red")
dev.off()