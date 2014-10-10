##Put into R memory the data set, stringsAsFactors = FALSE more and more becoming important option
hpc <- read.csv("~/Rprogramming/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";",stringsAsFactors = FALSE)
## subset the data from dates  2007-02-01 and 2007-02-02, using OR here is important
hpc<-hpc[(hpc$Date == "1/2/2007")|(hpc$Date == "2/2/2007"),]

##convert the date and time columns into one 
tmp <- strptime(paste(hpc$Date,hpc$Time), "%d/%m/%Y %H:%M:%S")

plot(tmp,hpc$Sub_metering_1,type = "l",xlab="",ylab = "Energy sub metering",col="black")
lines(tmp,hpc$Sub_metering_2,type = "l",xlab="",ylab = "",col="red")
lines(tmp,hpc$Sub_metering_3,type = "l",xlab="",ylab = "",col="blue")

legend("topright", col =c ("black","red","blue"),lty=c(1,1),
       legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,filename="plot3.png")
dev.off()