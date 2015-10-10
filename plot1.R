## Coursera Exploratory Data Analysis: Project 1, Plot 1

## Load required data. Assumes 
source("getdata.R")

## Open plot device
png(filename = "plot1.png", width = 480, height = 480)

##Generate histogram
hist(dataSubset$Global_active_power, breaks = 12, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency", ylim = c(0, 1200))

## Shutdown device
dev.off()

