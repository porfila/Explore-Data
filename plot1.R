#Exploratory Data Analysys Project EPC Electrical Power Consumption
epc <- read.csv("./data/household_power_consumption.txt", sep=";")

epc1<-epc[epc$Date == "1/2/2007" | epc$Date == "2/2/2007",]
gap1<-epc1$Global_active_power
gap2<-as.character(gap1)
gap3<-as.numeric(gap2)
par(mar=c(4,4,1,2),mfcol=c(1,1))
hist(gap3,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
