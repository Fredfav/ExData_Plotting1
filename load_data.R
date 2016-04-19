###############################
#
# Setup the working environment and
# Download the dataset: Electric power consumption 
#
###############################

library(httr) 

# Setup the working environment
input <- "input"
if(!file.exists(input)){
  dir.create(input)
} 
pics <- "pics" 
if(!file.exists(pics)){
  dir.create(pics)
}

# Download the data file
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

ZIPfile <- paste(getwd(), "/input/household_power_consumption.zip", sep = "")
if(!file.exists(ZIPfile)){
  download.file(fileURL, ZIPfile, method="curl", mode="wb")
}

# Unzip the data file
TXTfile <- paste(getwd(), "/input/household_power_consumption.txt", sep = "")
if(!file.exists(TXTfile)){
  unzip(ZIPfile, list = FALSE, overwrite = FALSE, exdir = input)
}

# Prepare a RDS file to retreive only the needed data
inputRDS <- paste(getwd(), "/input/inputRDS.rds", sep = "")
if(!file.exists(inputRDS)){
  input <- "input/household_power_consumption.txt"
  inputData <- read.table(input, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
  inputData$Time <- strptime(paste(inputData$Date, inputData$Time), "%d/%m/%Y %H:%M:%S")
  inputData$Date <- as.Date(inputData$Date, "%d/%m/%Y")
  period <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  inputData <- subset(inputData, Date %in% period)
  inputRDS <- paste(getwd(), "/", "input", "/", "inputRDS", ".rds", sep="")
  saveRDS(inputData, inputRDS)
} else {
  input <- "input/inputRDS.rds"
  inputData <- readRDS(input)
}