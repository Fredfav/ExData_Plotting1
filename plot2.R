###############################
#
# Create Plot 2 
#
###############################

# Load the data
source("load_data.R")

# Setup the environment
plot2 <- paste(getwd(), "/pics/plot2.png", sep = "")

# Create the plot
if(!file.exists(plot2)){
  png("pics/plot2.png", width = 480, height = 480)
  plot(inputData$Time, inputData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.off()
} else {
  plot(inputData$Time, inputData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}
