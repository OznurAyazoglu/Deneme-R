dfr<- read.csv("https://raw.githubusercontent.com/ulklc/covid19-timeseries/master/countryReport/raw/rawReport.csv", sep =",")
library(dplyr)
library(lubridate)
date<-today()-1
yesterday<-today()-2
Ccurrent <-subset(dfr,ymd(day)==date)
Cyesterday <-subset(dfr,ymd(day)==yesterday)
confirmed<-Ccurrent['confirmed']-Cyesterday ['confirmed']
recovered<-Ccurrent['recovered']-Cyesterday ['recovered']
death<-Ccurrent['death']-Cyesterday['death']
counrty<-Ccurrent['countryName']
data.frame(counrty,confirmed,recovered,death)
