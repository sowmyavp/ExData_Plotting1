# plot data
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(data_table$DateTime, data_table$GlobalActivePower, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts)")
dev.off()