## Coursera Exploratory Data Analysis: Project 1, Plot 2

## Load required data
source("getdata.R")

## Open plot device
png(filename = "plot2.png", width = 480, height = 480)

## Generate plot
plot(dataSubset$DateTime, dataSubset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

## Shutdown device
dev.off()