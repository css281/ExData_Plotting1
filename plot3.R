## Coursera Exploratory Data Analysis: Project 1, Plot 3

## Load required data
source("getdata.R")

## Open plot device
png(filename = "plot3.png", width = 480, height = 480)

## Plot and draw legend
plot(dataSubset$DateTime, dataSubset$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(dataSubset$DateTime, dataSubset$Sub_metering_2, type = "l", col = "red")
lines(dataSubset$DateTime, dataSubset$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1)

## Shutdown device
dev.off()