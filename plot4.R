png(filename = "plot4.png", width = 480, height = 480, units = "px")

# set number of plots per row and column
par(mfrow = c(2,2))

# plot (1,1)
plot(data_table$DateTime, data_table$GlobalActivePower, type = "l", xlab = " ", ylab = "Global Active Power")

# plot(1,2)
plot(data_table$DateTime, data_table$Voltage, type = "l", xlab = "DateTime", ylab = "Voltage")

# plot(2,1)
plot(data_table$DateTime, data_table$SubMetering1, type = "l", xlab = " ", ylab = "Energy sub metering")
lines(data_table$DateTime, data_table$SubMetering2, col = "red")
lines(data_table$DateTime, data_table$SubMetering3, col = "blue")
# add legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, lwd = 2)

# plot(2,2)
plot(data_table$DateTime, data_table$GlobalReactivePower, type = "l", xlab = "DateTime", ylab = "Global_reactive_power")

dev.off()