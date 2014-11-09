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
png("plot2.png") #Creates the PNG file
plot(husDfr[,3],type="l",ylab="Global Active Power (killowatts)",xlab="",xaxt="n")
axis(1,at=c(1,nrow(husDfr)/2,nrow(husDfr)),labels=c("Thu","Fri","Sat"))

dev.off()

rm(list=setdiff(ls(),"husDfr"))

