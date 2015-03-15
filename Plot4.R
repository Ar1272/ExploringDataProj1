

library(sqldf)

file<-c("./Course4/household_power_consumption.txt")

data_subset <- read.csv.sql(file, header= T, sep = ";", sql = "select * from file where (Date == '1/2/2007' OR Date == '2/2/2007')")

data_subset[data_subset == ?] <- NA

 par(mfrow = c(2,2))
 plot( a$dateTime, a$Global_active_power, type="l", ylab = "Global Active Power (Kilowatts)")
 plot( a$dateTime, a$Voltage, type="l", ylab = "Global Active Power (Kilowatts)", xlab="datetime")
 plot(data_subset$dateTime, data_subset$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
 lines(data_subset$dateTime, data_subset$Sub_metering_2, type="l", col="red")
 lines(data_subset$dateTime, data_subset$Sub_metering_3, type="l", col="blue")
 legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lwd=0.75, bty="n")
 plot(data_subset$dateTime, data_subset$Global_reactive_power, type="l", ylab="Global_reactive_power",xlab="datetime")
 dev.copy(png,file="plot4.png", height=600, width=600)

 dev.off()

