plot1 <- function() {

    #Load the data
    data <- read.table("household_power_consumption.txt", sep = ";",
                       na.strings = "?", colClasses = "character")

    #Reduce the working set to two days
    data$V1 <- as.Date(strptime(data$V1,format = "%d/%m/%Y"))
    work <- data[data$V1 == as.Date("2007-02-01") | data$V1 == as.Date("2007-02-02"),]

    #Create a 480x480 png
    png(filename = "plot1.png", width = 480, height = 480)

    #Draw a histogram of the Global Active Power
    hist(as.numeric(work$V3), main = "Global Active Power",
         xlab = "Global Active Power (kilowatts)",col = "red")

    #Close graphics device
    dev.off()

}

plot1()
