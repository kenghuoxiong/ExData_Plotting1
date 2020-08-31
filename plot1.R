download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="data.zip")
unzip ("data.zip", exdir = ".")
ori_data<-read.table("household_power_consumption.txt", header=TRUE, sep=";")
data<-ori_data[which(ori_data$Date=="1/2/2007"|ori_data$Date=="2/2/2007"),]
hist(as.numeric(data$Global_active_power),col = "red",main = "Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off() 