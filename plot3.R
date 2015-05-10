source("loaddata.R")

png("plot3.png", width = 480, height = 480, bg="white")
plot(power$Time, power$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(power$Time, power$Sub_metering_2, col="red")
lines(power$Time, power$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)
dev.off()