epc <- read.csv("./data/household_power_consumption.txt", sep=";")
epc1<-epc[epc$Date == "1/2/2007" | epc$Date == "2/2/2007",]
epc1$Global_active_powerPP<-as.numeric(as.character(epc1$Global_active_power))
epc1$DatePP<-strptime(epc1$Date,format="%e/%m/%Y")
epc1$DateTimePP<-paste(epc1$DatePP,epc1$Time)
epc1$DateTimePP<-strptime(epc1$DateTimePP, format="%Y-%m-%d %H:%M:%S")


par(mar=c(3,4,2,1),mfcol=c(1,1))
plot(epc1$DateTimePP,epc1$Global_active_powerPP,type="l",ylab="Global Active Power (kilowatts)",xlab="")
