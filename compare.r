setwd("/media/bryn/DATADRIVE1/cancer/data/161130 - compare rachel and mary sets/")

mary=read.csv("mary.csv", na.strings=c("","NA"))
rachel = read.csv("rachel.csv", na.strings=c("","NA"))

commonNHSnums<- intersect(mary$NHS.Number,rachel$NHS.num.encry)
#convert the vector into a dataframe
commonNHSnums<- as.data.frame(commonNHSnums)


#find the unique IDs in each of the lists by finding setdiff between list and common nums
maryunique=setdiff(mary$NHS.Number,commonNHSnums$commonNHSnums)
maryunique<-as.data.frame(maryunique)
rachelunique=setdiff(rachel$NHS.num.encry,commonNHSnums$commonNHSnums)
rachelunique<-as.data.frame(rachelunique)

