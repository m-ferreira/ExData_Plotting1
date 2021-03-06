#reading "household_power_consumption.txt" dataset
data <- read.table(file.choose(), na.strings = "?")

#convert the Date and Time variables to Date/Time classes 
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
#png device
png(filename = "plot2.png", width = 480, height = 480, units='px')

#plot 2
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')

dev.off() #closing device to allow window display
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')