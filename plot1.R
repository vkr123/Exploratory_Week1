power = read.table("household_power_consumption.txt", header=TRUE, sep = ";")
power$Date <- as.Date(power$Date, "%d/%m/%Y")
sub<-power[power$Date=="2007-02-01" | power$Date=="2007-02-02",]
sub$Global_active_power<-as.numeric(as.vector(sub$Global_active_power))
png("plot1.png", width = 480, height = 480, units = "px")
hist(sub$Global_active_power, col='red', ylab="Frequency", xlab = "Global Active Power (kilowatts)", main="Global Active Power")
dev.off()