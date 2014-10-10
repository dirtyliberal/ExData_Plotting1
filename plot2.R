##Put into R memory the data set, stringsAsFactors = FALSE more and more becoming important option
##hpc <- read.csv("~/Rprogramming/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";",stringsAsFactors = FALSE)
## subset the data from dates  2007-02-01 and 2007-02-02, using OR here is important
hpc<-hpc[(hpc$Date == "1/2/2007")|(hpc$Date == "2/2/2007"),]

##convert the date and time columns into one 
tmp <- strptime(paste(hpc$Date,hpc$Time), "%d/%m/%Y %H:%M:%S")

plot(tmp,hpc$Global_active_power,ylab="Global Active Power (kilowatts)",xlab = "",type = "l")

dev.copy(png,filename="plot2.png")
dev.off()