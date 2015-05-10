## Code for loading and subsetting data set

```require(lubridate)

power <- read.table('household_power_consumption.txt', header=TRUE,
  sep=';', na.strings='?',
  colClasses=c(rep('character', 2), 
  rep('numeric', 7)))

power$Time <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")
power$Date <- as.Date(power$Date, "%d/%m/%Y")

power<-power[year(power$Date) == 2007, ]
power<-power[month(power$Date) == 2, ]
feb1<-power[day(power$Date) == 1, ]
feb2<-power[day(power$Date) == 2, ]
power <- rbind(feb1, feb2)
rm(feb1, feb2)```
