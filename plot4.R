source("loaddata.R")

png("plot4.png", width = 480, height = 480, bg = "white")

par(mfrow=c(2,2))
# First
plot(power$Time, power$Global_active_power, type="l", 
     xlab="", 
     ylab="Global Active Power")

# Second
plot(power$Time, power$Voltage, type="l", 
     ylab="Voltage", xlab="datetime")

# Third
plot(power$Time, power$Sub_metering_1, type="l", 
     xlab="", ylab="Energy sub metering")
lines(power$Time, power$Sub_metering_2, col="red")
lines(power$Time, power$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1, bty="n", cex=.5)

# Fourth
plot(power$Time, power$Global_reactive_power, 
     type="l", ylab="Global_reactive_power", 
     xlab="datetime")

dev.off()