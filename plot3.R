###############################
#
# Create Plot 3
#
###############################

# Load the data
source("load_data.R")

# Setup the environment
plot3 <- paste(getwd(), "/pics/plot3.png", sep = "")

# Create the plot
if(!file.exists(plot3)){
  png("pics/plot3.png", width = 480, height = 480)
  plot(inputData$Time, inputData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(inputData$Time, inputData$Sub_metering_2, type="l", col="red")
  lines(inputData$Time, inputData$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  dev.off()
} else {
  plot(inputData$Time, inputData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(inputData$Time, inputData$Sub_metering_2, type="l", col="red")
  lines(inputData$Time, inputData$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
}
