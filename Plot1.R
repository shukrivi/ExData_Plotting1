setwd("C:/Users/HP/Downloads")
my_data <- read.delim("household_power_consumption.txt",sep = ";")
my_df <- my_data[my_data$Date %in% c("1/2/2007","2/2/2007"),]
hist(as.numeric(my_df$Global_active_power),main = "Global Active Power",col = "red",xlab = "Global Active Power (kilowatts)")
