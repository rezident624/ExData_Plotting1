Sys.setlocale("LC_TIME","English_United States.1252")
data <- read.table('household_power_consumption.txt', header=TRUE, sep=';', stringsAsFactors = FALSE, na.strings = '?', comment.char="", nrow = 100000)
d <- as.Date(data$Date, format = '%d/%m/%Y')
d1 <- as.Date('2007-02-01')
d2 <- as.Date('2007-02-02')
data <- data[d >= d1 & d <= d2,]
png('plot1.png', bg = "transparent")
hist(data$Global_active_power, main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency', col ='red')
dev.off()
