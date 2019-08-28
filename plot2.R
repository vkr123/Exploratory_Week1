power = read.table("household_power_consumption.txt", header=TRUE, sep = ";")
power$Date <- as.Date(power$Date, "%d/%m/%Y")
sub<-power[power$Date=="2007-02-01" | power$Date=="2007-02-02",]
sub$Global_active_power<-as.numeric(as.vector(sub$Global_active_power))
time_date<-as.POSIXct(paste(sub$Date, sub$Time), format="%Y-%m-%d %H:%M:%S")
png("plot2.png", width = 480, height = 480, units = "px")
plot(time_date, sub$Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab="")
dev.off()