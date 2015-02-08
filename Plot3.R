
library(sqldf)

file<-c("./Course4/household_power_consumption.txt")

data_subset <- read.csv.sql(file, header= T, sep = ";", sql = "select * from file where (Date == '1/2/2007' OR Date == '2/2/2007')")

data_subset[data_subset == ?] <- NA

plot(data_subset$dateTime, data_subset$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")

lines(data_subset$dateTime, data_subset$Sub_metering_2, type="l", col="red")

lines(data_subset$dateTime, data_subset$Sub_metering_3, type="l", col="blue")

legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lwd=0.75)

dev.copy(png,file="plot3.png",height=600, width=600)

dev.off()
