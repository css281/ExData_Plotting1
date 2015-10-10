## Coursera Exploratory Data Analysis: Project 1

## Set source url
source_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

## Download source zip to current working directory and extract to data sub-directory
## Once source is downloaded, overwrites any existing extracted output file with same name
target_zip <- "./household_power_consumption.zip"
if(!file.exists(target_zip)){
        download.file(source_url, target_zip, mode="wb")
        print('Extracting data...')
        unzip(target_zip, list = FALSE, overwrite = TRUE, exdir = "./data")
}

## Read the input dataset
input_file <- "./data/household_power_consumption.txt"
data <- read.table(input_file, header = TRUE, sep = ";", colClasses = c(rep("character",2), rep("numeric",7)), na = "?")

## Subset data for the two required dates
dataSubset <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]

## Format the datetime strings
dataSubset$DateTime <- strptime(paste(dataSubset$Date, dataSubset$Time), "%d/%m/%Y %H:%M:%S")


