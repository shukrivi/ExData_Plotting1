setwd("C:/Users/HP/Downloads")
my_data = read.delim("household_power_consumption.txt",sep = ";")
my_df = my_data[my_data$Date %in% c("1/2/2007","2/2/2007"),]
day = strptime(paste(my_df$Date,my_df$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
plot(day,as.numeric(my_df$Global_active_power),"l",xlab = "",ylab = "Global Active Power (kilowatts)")
