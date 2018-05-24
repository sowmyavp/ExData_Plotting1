# set the directory to cloned folder
setwd("ExData_Plotting1")

# download and unzip source data
if(!file.exists("data")){
  dir.create("data")
}
fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl, destfile = "./data/Electric_power_consumption_data.zip")
unzip("./data/Electric_power_consumption_data.zip", exdir = "./data")

# Read data
data_table <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character", 
                         "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), 
                         na.strings = "?")

# Clean data
colnames(data_table) <- c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
                          'SubMetering1','SubMetering2','SubMetering3')
data_table <- data_table[data_table$Date == "1/2/2007" | data_table$Date == "2/2/2007",]
data_table$DateTime <- strptime(paste(data_table$Date, data_table$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data_table <- data_table[,c(10,3:9)]

