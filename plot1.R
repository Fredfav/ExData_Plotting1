###############################
#
# Create Plot 1 
#
###############################

# Load the data
source("load_data.R")

# Setup the environment
plot1 <- paste(getwd(), "/pics/plot1.png", sep = "")

# Create the plot
if(!file.exists(plot1)){
  png("pics/plot1.png", width = 480, height = 480)
  hist(inputData$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
  dev.off()
} else {
  hist(inputData$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}
