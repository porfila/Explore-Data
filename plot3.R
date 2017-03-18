epc <- read.csv("./data/household_power_consumption.txt", sep=";")
epc1<-epc[epc$Date == "1/2/2007" | epc$Date == "2/2/2007",]
epc1$Global_active_powerPP<-as.numeric(as.character(epc1$Global_active_power))
epc1$DatePP<-strptime(epc1$Date,format="%e/%m/%Y")
epc1$DateTimePP<-paste(epc1$DatePP,epc1$Time)
epc1$DateTimePP<-strptime(epc1$DateTimePP, format="%Y-%m-%d %H:%M:%S")


epc1$Sub_metering_1PP<-as.numeric(as.character(epc1$Sub_metering_1))
epc1$Sub_metering_2PP<-as.numeric(as.character(epc1$Sub_metering_2))
epc1$Sub_metering_3PP<-as.numeric(as.character(epc1$Sub_metering_3))


par(mar=c(3,4,2,1),mfcol=c(1,1))
plot(epc1$DateTimePP,epc1$Sub_metering_1PP, type="n",ylab="Energy sub metering",xlab="")
points(epc1$DateTimePP,epc1$Sub_metering_1PP, type="l")
points(epc1$DateTimePP,epc1$Sub_metering_2PP, type="l",col="red")
points(epc1$DateTimePP,epc1$Sub_metering_3PP, type="l",col="blue")