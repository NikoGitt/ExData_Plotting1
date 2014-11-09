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
png("plot1.png") #Creates the PNG file
hist(as.numeric(husDfr[,3]),col="red",main=("Global Active Power"),xlab="Global Active Power (Killowatts)")
dev.off()

rm(list=setdiff(ls(),"husDfr"))


