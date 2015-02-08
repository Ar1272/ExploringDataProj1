

library(sqldf)

file<-c("./Course4/household_power_consumption.txt")

data_subset <- read.csv.sql(file, header= T, sep = ";", sql = "select * from file where (Date == '1/2/2007' OR Date == '2/2/2007')")

data_subset[data_subset == ?] <- NA

hist(data_subset$Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")


dev.copy(png,file="plot2.png")

dev.off()