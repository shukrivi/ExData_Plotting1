setwd("C:/Users/HP/Downloads")
my_data = read.delim("household_power_consumption.txt",sep = ";")
my_df = my_data[my_data$Date %in% c("1/2/2007","2/2/2007"),]
day = strptime(paste(my_df$Date,my_df$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
plot(day,as.numeric(my_df$Sub_metering_1),"l",xlab = "",ylab = "Energy sub metering")
lines(day,as.numeric(my_df$Sub_metering_2),"l",col = "red")
lines(day,as.numeric(my_df$Sub_metering_3),"l",col = "blue")
legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_3"),lty = 1,col = c("black","red","blue"))
