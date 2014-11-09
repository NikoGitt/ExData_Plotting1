# Exploratory Data Analysis
# Course Project 1
#setwd

getwd()
setwd()
# Read the file
Hus<-read.csv("household_power_consumption.txt",sep=";", stringsAsFactors=FALSE)
head(Hus)
Hus[1,1]
sub1<-which(Hus[,1]=="1/2/2007")
sub2<-which(Hus[,1]=="2/2/2007")
hus<-Hus[sub1,] 
hus2<-Hus[sub2,]
husDfr<-rbind(hus,hus2)
#Plot 1
png("plot4.png") #Creates the PNG file
par(mfrow=c(2,2))
plot(husDfr[,3],type="l",ylab="Global Active Power",xlab="",xaxt="n")
axis(1,at=c(1,nrow(husDfr)/2,nrow(husDfr)),labels=c("Thu","Fri","Sat"))
##########

#plot 2
plot(husDfr[,5],type="l",ylab="Voltage",xlab="datetime",xaxt="n")
axis(1,at=c(1,nrow(husDfr)/2,nrow(husDfr)),labels=c("Thu","Fri","Sat"))

#Plot 3
plot(husDfr[,7],type="l",col="black",ylim=c(0,38),yaxt="n",xlab="",ylab="",xaxt="n")
par(new=T)
plot(husDfr[,8],type="l",col="red",ylim=c(0,38),yaxt="n",xlab="",ylab="",xaxt="n")
par(new=T)
plot(husDfr[,9],type="l",col="blue",ylim=c(0,38),xlab="",ylab="Energy sub metering",xaxt="n")
axis(1,at=c(1,nrow(husDfr)/2,nrow(husDfr)),labels=c("Thu","Fri","Sat"))
legend("topright",colnames(husDfr)[7:9],lty=1,col=c("black","red","blue"),box.lty=0)

box()
#Plot 4
plot(husDfr[,4],type="l",ylab="Global_reactive_power",xlab="datetime",xaxt="n")
axis(1,at=c(1,nrow(husDfr)/2,nrow(husDfr)),labels=c("Thu","Fri","Sat"))

dev.off()

rm(list=setdiff(ls(),"husDfr"))
