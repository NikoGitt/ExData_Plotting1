# Exploratory Data Analysis
# Course Project 1
#setwd

getwd()
setwd()
# Read
Hus<-read.csv("household_power_consumption.txt",sep=";", stringsAsFactors=FALSE)
head(Hus)
Hus[1,1]
sub1<-which(Hus[,1]=="1/2/2007")
sub2<-which(Hus[,1]=="2/2/2007")
hus<-Hus[sub1,] 
hus2<-Hus[sub2,]
husDfr<-rbind(hus,hus2)
png("plot3.png") #Creates the PNG file

plot(husDfr[,7],type="l",col="black",ylim=c(0,38),yaxt="n",xlab="",ylab="",xaxt="n")
par(new=T)
plot(husDfr[,8],type="l",col="red",ylim=c(0,38),yaxt="n",xlab="",ylab="",xaxt="n")
par(new=T)
plot(husDfr[,9],type="l",col="blue",ylim=c(0,38),xlab="",ylab="Energy sub metering",xaxt="n")
axis(1,at=c(1,nrow(husDfr)/2,nrow(husDfr)),labels=c("Thu","Fri","Sat"))
legend("topright",colnames(husDfr)[7:9],lty=1,col=c("black","red","blue"))



dev.off()

rm(list=setdiff(ls(),"husDfr"))
