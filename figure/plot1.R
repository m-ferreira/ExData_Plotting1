#reading "household_power_consumption.txt" dataset
data <- read.table(file.choose(), na.strings = "?")

#png device
png(filename = "plot1.png", width = 480, height = 480, units='px')
#plot 1
with(data, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))

dev.off() #closing device to allow window display
with(data, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))