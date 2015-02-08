library(sqldf)

file<-c("./Course4/household_power_consumption.txt")

data_subset <- read.csv.sql(file, header= T, sep = ";", sql = "select * from file where (Date == '1/2/2007' OR Date == '2/2/2007')")

data_subset[data_subset == ?] <- NA

data_subset$dateTime<-strptime(paste(data_subset$Date, data_subset$Time), format = "%d/%m/%Y %H:%M:%S")

plot( data_subset$dateTime, data_subset$Global_active_power, type="l", ylab = "Global Active Power (Kilowatts)")

dev.copy(png,file="plot2.png")

dev.off()