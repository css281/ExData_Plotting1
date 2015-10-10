## Coursera Exploratory Data Analysis: Project 1, Plot 4

## Load required data
source("getdata.R")

## Open plot device
png(filename = "plot4.png", width = 480, height = 480)

## Set parameters to enable figures to be drawn in a 2x2 array by rows
par(mfrow = c(2, 2))

## Plot on top left
plot(dataSubset$DateTime, dataSubset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

## Plot on top right
plot(dataSubset$DateTime, dataSubset$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

## Plot on bottom left, ensure legend has no border using bty
plot(dataSubset$DateTime, dataSubset$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(dataSubset$DateTime, dataSubset$Sub_metering_2, type="l", col = "red")
lines(dataSubset$DateTime, dataSubset$Sub_metering_3, type="l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), bty = "n", lwd = 1)

## Plot on bottom right
plot(dataSubset$DateTime, dataSubset$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

## Shutdown device
dev.off()


