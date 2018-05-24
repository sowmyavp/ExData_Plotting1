# plot data
png(filename = "plot3.png", width = 480, height = 480, units = "px")
plot(data_table$DateTime, data_table$SubMetering1, type = "l", xlab = " ", ylab = "Energy sub metering")
lines(data_table$DateTime, data_table$SubMetering2, col = "red")
lines(data_table$DateTime, data_table$SubMetering3, col = "blue")

# add legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, lwd = 2)
dev.off()