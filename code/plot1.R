mydata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
t1<-mydata[mydata$Date == "1/2/2007" | mydata$Date == "2/2/2007",]
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(t1$Global_active_power, main="Global Active Power",col="red", xlab="Global Active Power (kilowatts)")
dev.off()

