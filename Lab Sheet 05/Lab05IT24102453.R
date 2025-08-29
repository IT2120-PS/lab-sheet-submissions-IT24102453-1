##Exercise 
##01.
setwd("C:/Users/it24102453/Desktop/IT24102453/Lab05")
Delivery_Times<-read.table("Exercise.txt",header=TRUE,sep = ",")
fix(Delivery_Times)
attach(Delivery_Times)

##02.
names(Delivery_Times)<-c("x1")
attach(Delivery_Times)
hist(x1,main="histogram for deliver times")
histogram<-hist(x1,main="Histogram for delivery times",breaks=seq(20,70,length=10),right=FALSE)

##04
breaks<-round(histogram$breaks)
freq<-histogram$counts
mids<-histogram$mids

cum.freq<-cumsum(freq)
new<-c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}
