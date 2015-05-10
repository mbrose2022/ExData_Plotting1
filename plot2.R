png("plot2.png", width=480, height=480, bg="white")
plot(power$Time, power$Global_active_power, type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")
dev.off()