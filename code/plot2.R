mydata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
t1<-mydata[mydata$Date == "1/2/2007" | mydata$Date == "2/2/2007",]
t1$DT<-as.POSIXct(paste(t1$Date, t1$Time), format="%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(t1$DT, t1$Global_active_power, type="l", lwd=2, xlab="", ylab="Global Active Power (kilowatts)")
dev.off()