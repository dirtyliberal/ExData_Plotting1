##Put into R memory the data set, stringsAsFactors = FALSE more and more becoming important option
hpc <- read.csv("~/Rprogramming/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";",stringsAsFactors = FALSE)
## subset the data from dates  2007-02-01 and 2007-02-02, using OR here is important
hpc<-hpc[(hpc$Date == "1/2/2007")|(hpc$Date == "2/2/2007"),]

hist(as.numeric((hpc$Global_active_power)),col="red",main ="Global Active Power",
     xlab="Global Active Power (kilowatts)",width = 480, height = 500, units = "px")
dev.copy(png,filename="plot1.png")
dev.off()