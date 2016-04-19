###############################
#
# Create Plot 4
#
###############################

# Load the data
#source("load_data.R")

# Setup the environment
plot4 <- paste(getwd(), "/pics/plot4.png", sep = "")

# Create the plot
if(!file.exists(plot4)){
  png("pics/plot4.png", width = 480, height = 480)
  par(mfrow=c(2,2))	
  plot(inputData$Time, inputData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
  plot(inputData$Time, inputData$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
  plot(inputData$Time, inputData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(inputData$Time, inputData$Sub_metering_2, type="l", col="red")
  lines(inputData$Time, inputData$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  plot(inputData$Time, inputData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
  dev.off()
} else {
  par(mfrow=c(2,2))	
  plot(inputData$Time, inputData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
  plot(inputData$Time, inputData$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
  plot(inputData$Time, inputData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(inputData$Time, inputData$Sub_metering_2, type="l", col="red")
  lines(inputData$Time, inputData$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  plot(inputData$Time, inputData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
}