data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data.1 <- subset(data, as.Date("2007-02-01", format = "%Y-%m-%d") <= data[, 1] & data[, 1] <= as.Date("2007-02-02", format = "%Y-%m-%d")  )
data.1$Global_active_power <- as.numeric(data.1$Global_active_power)

png("plot1.png", width = 480, height = 480)
with(data.1, hist(Global_active_power, col = "red", main = "Global Active Power",xlab = "Global Active Power (kilowatts)"))
dev.off()










