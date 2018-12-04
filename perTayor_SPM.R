setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN20')

tots<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(tots)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

POM<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

plot(POM$wn1/tots$wn1)
plot(POM$wn2/tots$wn2)
plot(POM$wc6/tots$wc6)

time.steps <- tots[,1]
#time.steps2 <- trunc(time.steps, 0)
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
tots1<- cbind(TEMPO, tots)
rdate<-as.Date(tots1$TEMPO, tz= "GMT", format="%Y")

#ACQUE modeled da 2001 a 2010  [1230:735] --> [1215:1250]  [1239:1332]

rdate1<-rdate[1226:1309]
rdate2<-rdate[1220:1320]

b1_y1<-filter(box1, box1$ANNO ==2002)
b1_y2<-filter(box1, box1$ANNO ==2003)
b1_y3<-filter(box1, box1$ANNO ==2004)
b1_y4<-filter(box1, box1$ANNO ==2005)

b2_y1<-filter(box2, box2$ANNO ==2002)
b2_y2<-filter(box2, box2$ANNO ==2003)
b2_y3<-filter(box2, box2$ANNO ==2004)
b2_y4<-filter(box2, box2$ANNO ==2005)
#.NO dati per 2008 (nessun box)
# box 1,2,3,4,5,6,7,8, 9, 10 no dati 2006 -2007
b3_y1<-filter(box3, box3$ANNO ==2002)
b3_y2<-filter(box3, box3$ANNO ==2003)
b3_y3<-filter(box3, box3$ANNO ==2004)
b3_y4<-filter(box3, box3$ANNO ==2005)

b4_y1<-filter(box4, box4$ANNO ==2002)
b4_y2<-filter(box4, box4$ANNO ==2003)
b4_y3<-rep(0,12)  #no data
b4_y4<-rep(0,12)#no data

b5_y1<-filter(box5, box5$ANNO ==2002)
b5_y2<-filter(box5, box5$ANNO ==2003)
b5_y3<-filter(box5, box5$ANNO ==2004)
b5_y4<-filter(box5, box5$ANNO ==2005)

b6_y1<-filter(box6, box6$ANNO ==2002)
b6_y2<-filter(box6, box6$ANNO ==2003)
b6_y3<-filter(box6, box6$ANNO ==2004)
b6_y4<-filter(box6, box6$ANNO ==2005)

b7_y1<-filter(box7, box7$ANNO ==2002)
b7_y2<-filter(box7, box7$ANNO ==2003)
b7_y3<-filter(box7, box7$ANNO ==2004)
b7_y4<-filter(box7, box7$ANNO ==2005)

b8_y1<-filter(box8, box8$ANNO ==2002)
b8_y2<-filter(box8, box8$ANNO ==2003)
b8_y3<-filter(box8, box8$ANNO ==2004)
b8_y4<-filter(box8, box8$ANNO ==2005)

b9_y1<-filter(box9, box9$ANNO ==2002)
b9_y2<-filter(box9, box9$ANNO ==2003)
b9_y3<-filter(box9, box9$ANNO ==2004)
b9_y4<-filter(box9, box9$ANNO ==2005)


b10_y1<-filter(box10, box10$ANNO ==2002)
b10_y2<-filter(box10, box10$ANNO ==2003)
b10_y3<-filter(box10, box10$ANNO ==2004)
b10_y4<-filter(box10, box10$ANNO ==2005)

b1_y4$MESE

mean(data$value[data$factor == "a"])


mont_mean_b1_y1<-c(mean(b1_y1$TSS[b1_y1$MESE == 1]),mean(b1_y1$TSS[b1_y1$MESE == 2]),mean(b1_y1$TSS[b1_y1$MESE == 3]),mean(b1_y1$TSS[b1_y1$MESE == 4]),
                   mean(b1_y1$TSS[b1_y1$MESE == 5]),mean(b1_y1$TSS[b1_y1$MESE == 6]),mean(b1_y1$TSS[b1_y1$MESE == 7]),mean(b1_y1$TSS[b1_y1$MESE == 8]),
                   mean(b1_y1$TSS[b1_y1$MESE == 9]),mean(b1_y1$TSS[b1_y1$MESE == 10]),mean(b1_y1$TSS[b1_y1$MESE == 11]),mean(b1_y1$TSS[b1_y1$MESE == 12]))

mont_mean_b1_y2<-c(mean(b1_y2$TSS[b1_y2$MESE == 1]),mean(b1_y2$TSS[b1_y2$MESE == 2]),mean(b1_y2$TSS[b1_y2$MESE == 3]),mean(b1_y2$TSS[b1_y2$MESE == 4]),
                   mean(b1_y2$TSS[b1_y2$MESE == 5]),mean(b1_y2$TSS[b1_y2$MESE == 6]),mean(b1_y2$TSS[b1_y2$MESE == 7]),mean(b1_y2$TSS[b1_y2$MESE == 8]),
                   mean(b1_y2$TSS[b1_y2$MESE == 9]),mean(b1_y2$TSS[b1_y2$MESE == 10]),mean(b1_y2$TSS[b1_y2$MESE == 11]),mean(b1_y2$TSS[b1_y2$MESE == 12]))

mont_mean_b1_y3<-c(mean(b1_y3$TSS[b1_y3$MESE == 1]),mean(b1_y3$TSS[b1_y3$MESE == 2]),mean(b1_y3$TSS[b1_y3$MESE == 3]),mean(b1_y3$TSS[b1_y3$MESE == 4]),
                   mean(b1_y3$TSS[b1_y3$MESE == 5]),mean(b1_y3$TSS[b1_y3$MESE == 6]),mean(b1_y3$TSS[b1_y3$MESE == 7]),mean(b1_y3$TSS[b1_y3$MESE == 8]),
                   mean(b1_y3$TSS[b1_y3$MESE == 9]),mean(b1_y3$TSS[b1_y3$MESE == 10]),mean(b1_y3$TSS[b1_y3$MESE == 11]),mean(b1_y3$TSS[b1_y3$MESE == 12]))

mont_mean_b1_y4<-c(mean(b1_y4$TSS[b1_y4$MESE == 1]),mean(b1_y4$TSS[b1_y4$MESE == 2]),mean(b1_y4$TSS[b1_y4$MESE == 3]),mean(b1_y4$TSS[b1_y4$MESE == 4]),
                   mean(b1_y4$TSS[b1_y4$MESE == 5]),mean(b1_y4$TSS[b1_y4$MESE == 6]),mean(b1_y4$TSS[b1_y4$MESE == 7]),mean(b1_y4$TSS[b1_y4$MESE == 8]),
                   mean(b1_y4$TSS[b1_y4$MESE == 9]),mean(b1_y4$TSS[b1_y4$MESE == 10]),mean(b1_y4$TSS[b1_y4$MESE == 11]),mean(b1_y4$TSS[b1_y4$MESE == 12]))

mont_mean_b2_y1<-c(mean(b2_y1$TSS[b2_y1$MESE == 1]),mean(b2_y1$TSS[b2_y1$MESE == 2]),mean(b2_y1$TSS[b2_y1$MESE == 3]),mean(b2_y1$TSS[b2_y1$MESE == 4]),
                   mean(b2_y1$TSS[b2_y1$MESE == 5]),mean(b2_y1$TSS[b2_y1$MESE == 6]),mean(b2_y1$TSS[b2_y1$MESE == 7]),mean(b2_y1$TSS[b2_y1$MESE == 8]),
                   mean(b2_y1$TSS[b2_y1$MESE == 9]),mean(b2_y1$TSS[b2_y1$MESE == 10]),mean(b2_y1$TSS[b2_y1$MESE == 11]),mean(b2_y1$TSS[b2_y1$MESE == 12]))

mont_mean_b2_y2<-c(mean(b2_y2$TSS[b2_y2$MESE == 1]),mean(b2_y2$TSS[b2_y2$MESE == 2]),mean(b2_y2$TSS[b2_y2$MESE == 3]),mean(b2_y2$TSS[b2_y2$MESE == 4]),
                   mean(b2_y2$TSS[b2_y2$MESE == 5]),mean(b2_y2$TSS[b2_y2$MESE == 6]),mean(b2_y2$TSS[b2_y2$MESE == 7]),mean(b2_y2$TSS[b2_y2$MESE == 8]),
                   mean(b2_y2$TSS[b2_y2$MESE == 9]),mean(b2_y2$TSS[b2_y2$MESE == 10]),mean(b2_y2$TSS[b2_y2$MESE == 11]),mean(b2_y2$TSS[b2_y2$MESE == 12]))

mont_mean_b2_y3<-c(mean(b2_y3$TSS[b2_y3$MESE == 1]),mean(b2_y3$TSS[b2_y3$MESE == 2]),mean(b2_y3$TSS[b2_y3$MESE == 3]),mean(b2_y3$TSS[b2_y3$MESE == 4]),
                   mean(b2_y3$TSS[b2_y3$MESE == 5]),mean(b2_y3$TSS[b2_y3$MESE == 6]),mean(b2_y3$TSS[b2_y3$MESE == 7]),mean(b2_y3$TSS[b2_y3$MESE == 8]),
                   mean(b2_y3$TSS[b2_y3$MESE == 9]),mean(b2_y3$TSS[b2_y3$MESE == 10]),mean(b2_y3$TSS[b2_y3$MESE == 11]),mean(b2_y3$TSS[b2_y3$MESE == 12]))

mont_mean_b2_y4<-c(mean(b2_y4$TSS[b2_y4$MESE == 1]),mean(b2_y4$TSS[b2_y4$MESE == 2]),mean(b2_y4$TSS[b2_y4$MESE == 3]),mean(b2_y4$TSS[b2_y4$MESE == 4]),
                   mean(b2_y4$TSS[b2_y4$MESE == 5]),mean(b2_y4$TSS[b2_y4$MESE == 6]),mean(b2_y4$TSS[b2_y4$MESE == 7]),mean(b2_y4$TSS[b2_y4$MESE == 8]),
                   mean(b2_y4$TSS[b2_y4$MESE == 9]),mean(b2_y4$TSS[b2_y4$MESE == 10]),mean(b2_y4$TSS[b2_y4$MESE == 11]),mean(b2_y4$TSS[b2_y4$MESE == 12]))




mont_mean_b3_y1<-c(mean(b3_y1$TSS[b3_y1$MESE == 1]),mean(b3_y1$TSS[b3_y1$MESE == 2]),mean(b3_y1$TSS[b3_y1$MESE == 3]),mean(b3_y1$TSS[b3_y1$MESE == 4]),
                   mean(b3_y1$TSS[b3_y1$MESE == 5]),mean(b3_y1$TSS[b3_y1$MESE == 6]),mean(b3_y1$TSS[b3_y1$MESE == 7]),mean(b3_y1$TSS[b3_y1$MESE == 8]),
                   mean(b3_y1$TSS[b3_y1$MESE == 9]),mean(b3_y1$TSS[b3_y1$MESE == 10]),mean(b3_y1$TSS[b3_y1$MESE == 11]),mean(b3_y1$TSS[b3_y1$MESE == 12]))

mont_mean_b3_y2<-c(mean(b3_y2$TSS[b3_y2$MESE == 1]),mean(b3_y2$TSS[b3_y2$MESE == 2]),mean(b3_y2$TSS[b3_y2$MESE == 3]),mean(b3_y2$TSS[b3_y2$MESE == 4]),
                   mean(b3_y2$TSS[b3_y2$MESE == 5]),mean(b3_y2$TSS[b3_y2$MESE == 6]),mean(b3_y2$TSS[b3_y2$MESE == 7]),mean(b3_y2$TSS[b3_y2$MESE == 8]),
                   mean(b3_y2$TSS[b3_y2$MESE == 9]),mean(b3_y2$TSS[b3_y2$MESE == 10]),mean(b3_y2$TSS[b3_y2$MESE == 11]),mean(b3_y2$TSS[b3_y2$MESE == 12]))

mont_mean_b3_y3<-c(mean(b3_y3$TSS[b3_y3$MESE == 1]),mean(b3_y3$TSS[b3_y3$MESE == 2]),mean(b3_y3$TSS[b3_y3$MESE == 3]),mean(b3_y3$TSS[b3_y3$MESE == 4]),
                   mean(b3_y3$TSS[b3_y3$MESE == 5]),mean(b3_y3$TSS[b3_y3$MESE == 6]),mean(b3_y3$TSS[b3_y3$MESE == 7]),mean(b3_y3$TSS[b3_y3$MESE == 8]),
                   mean(b3_y3$TSS[b3_y3$MESE == 9]),mean(b3_y3$TSS[b3_y3$MESE == 10]),
                                                         mean(b3_y3$TSS[b3_y3$MESE == 11]),mean(b3_y3$TSS[b3_y3$MESE == 12]))

mont_mean_b3_y4<-c(mean(b3_y4$TSS[b3_y4$MESE == 1]),mean(b3_y4$TSS[b3_y4$MESE == 2]),mean(b3_y4$TSS[b3_y4$MESE == 3]),mean(b3_y4$TSS[b3_y4$MESE == 4]),
                   mean(b3_y4$TSS[b3_y4$MESE == 5]),mean(b3_y4$TSS[b3_y4$MESE == 6]),mean(b3_y4$TSS[b3_y4$MESE == 7]),mean(b3_y4$TSS[b3_y4$MESE == 8]),
                   mean(b3_y4$TSS[b3_y4$MESE == 9]),mean(b3_y4$TSS[b3_y4$MESE == 10]),mean(b3_y4$TSS[b3_y4$MESE == 11]),mean(b3_y4$TSS[b3_y4$MESE == 12]))

mont_mean_b4_y1<-c(mean(b4_y1$TSS[b4_y1$MESE == 1]),mean(b4_y1$TSS[b4_y1$MESE == 2]),mean(b4_y1$TSS[b4_y1$MESE == 3]),mean(b4_y1$TSS[b4_y1$MESE == 4]),
                   mean(b4_y1$TSS[b4_y1$MESE == 5]),mean(b4_y1$TSS[b4_y1$MESE == 6]),mean(b4_y1$TSS[b4_y1$MESE == 7]),mean(b4_y1$TSS[b4_y1$MESE == 8]),
                   mean(b4_y1$TSS[b4_y1$MESE == 9]),mean(b4_y1$TSS[b4_y1$MESE == 10]),
                   mean(b4_y1$TSS[b4_y1$MESE == 11]),mean(b4_y1$TSS[b4_y1$MESE == 12]))

mont_mean_b4_y2<-c(mean(b4_y2$TSS[b4_y2$MESE == 1]),mean(b4_y2$TSS[b4_y2$MESE == 2]),mean(b4_y2$TSS[b4_y2$MESE == 3]),mean(b4_y2$TSS[b4_y2$MESE == 4]),
                   mean(b4_y2$TSS[b4_y2$MESE == 5]),mean(b4_y2$TSS[b4_y2$MESE == 6]),mean(b4_y2$TSS[b4_y2$MESE == 7]),mean(b4_y2$TSS[b4_y2$MESE == 8]),
                   mean(b4_y2$TSS[b4_y2$MESE == 9]),mean(b4_y2$TSS[b4_y2$MESE == 10]),
                mean(b4_y2$TSS[b4_y2$MESE == 11]), mean(b4_y2$TSS[b4_y2$MESE == 12]))

mont_mean_b4_y3<-rep(NA,12)
mont_mean_b4_y4<-rep(NA,12)


mont_mean_b5_y1<-c(mean(b5_y1$TSS[b5_y1$MESE == 1]),mean(b5_y1$TSS[b5_y1$MESE == 2]),mean(b5_y1$TSS[b5_y1$MESE == 3]),mean(b5_y1$TSS[b5_y1$MESE == 4]),
                   mean(b5_y1$TSS[b5_y1$MESE == 5]),mean(b5_y1$TSS[b5_y1$MESE == 6]),mean(b5_y1$TSS[b5_y1$MESE == 7]),mean(b5_y1$TSS[b5_y1$MESE == 8]),
                   mean(b5_y1$TSS[b5_y1$MESE == 9]),mean(b5_y1$TSS[b5_y1$MESE == 10]),
                   mean(b5_y1$TSS[b5_y1$MESE == 11]),mean(b5_y1$TSS[b5_y1$MESE == 12]))

mont_mean_b5_y2<-c(mean(b5_y2$TSS[b5_y2$MESE == 1]),mean(b5_y2$TSS[b5_y2$MESE == 2]),mean(b5_y2$TSS[b5_y2$MESE == 3]),mean(b5_y2$TSS[b5_y2$MESE == 4]),
                   mean(b5_y2$TSS[b5_y2$MESE == 5]),mean(b5_y2$TSS[b5_y2$MESE == 6]),mean(b5_y2$TSS[b5_y2$MESE == 7]),mean(b5_y2$TSS[b5_y2$MESE == 8]),
                   mean(b5_y2$TSS[b5_y2$MESE == 9]),mean(b5_y2$TSS[b5_y2$MESE == 10]),
          mean(b5_y2$TSS[b5_y2$MESE == 11]),mean(b5_y2$TSS[b5_y2$MESE == 12]))

mont_mean_b5_y3<-c(mean(b5_y3$TSS[b5_y3$MESE == 1]),mean(b5_y3$TSS[b5_y3$MESE == 2]),mean(b5_y3$TSS[b5_y3$MESE == 3]),mean(b5_y3$TSS[b5_y3$MESE == 4]),
                   mean(b5_y3$TSS[b5_y3$MESE == 5]),mean(b5_y3$TSS[b5_y3$MESE == 6]),mean(b5_y3$TSS[b5_y3$MESE == 7]),mean(b5_y3$TSS[b5_y3$MESE == 8]),
                   mean(b5_y3$TSS[b5_y3$MESE == 9]),mean(b5_y3$TSS[b5_y3$MESE == 10]),
        mean(b5_y3$TSS[b5_y3$MESE == 11]),mean(b5_y3$TSS[b5_y3$MESE == 12]))

mont_mean_b5_y4<-c(mean(b5_y4$TSS[b5_y4$MESE == 1]),mean(b5_y4$TSS[b5_y4$MESE == 2]),mean(b5_y4$TSS[b5_y4$MESE == 3]),mean(b5_y4$TSS[b5_y4$MESE == 4]),
                   mean(b5_y4$TSS[b5_y4$MESE == 5]),mean(b5_y4$TSS[b5_y4$MESE == 6]),mean(b5_y4$TSS[b5_y4$MESE == 7]),
                   mean(b5_y4$TSS[b5_y4$MESE == 8]), mean(b5_y4$TSS[b5_y4$MESE == 9]),mean(b5_y4$TSS[b5_y4$MESE == 10]),
            mean(b5_y4$TSS[b5_y4$MESE == 11]),mean(b5_y4$TSS[b5_y4$MESE == 12]))


mont_mean_b6_y1<-c(mean(b6_y1$TSS[b6_y1$MESE == 1]),mean(b6_y1$TSS[b6_y1$MESE == 2]),mean(b6_y1$TSS[b6_y1$MESE == 3]),mean(b6_y1$TSS[b6_y1$MESE == 4]),
                   mean(b6_y1$TSS[b6_y1$MESE == 5]),mean(b6_y1$TSS[b6_y1$MESE == 6]),mean(b6_y1$TSS[b6_y1$MESE == 7]),mean(b6_y1$TSS[b6_y1$MESE == 8]),
                   mean(b6_y1$TSS[b6_y1$MESE == 9]),mean(b6_y1$TSS[b6_y1$MESE == 10]),
                   mean(b6_y1$TSS[b6_y1$MESE == 11]),mean(b6_y1$TSS[b6_y1$MESE == 12]))

mont_mean_b6_y2<-c(mean(b6_y2$TSS[b6_y2$MESE == 1]),mean(b6_y2$TSS[b6_y2$MESE == 2]),mean(b6_y2$TSS[b6_y2$MESE == 3]),mean(b6_y2$TSS[b6_y2$MESE == 4]),
                   mean(b6_y2$TSS[b6_y2$MESE == 5]),mean(b6_y2$TSS[b6_y2$MESE == 6]),mean(b6_y2$TSS[b6_y2$MESE == 7]),mean(b6_y2$TSS[b6_y2$MESE == 8]),
                   mean(b6_y2$TSS[b6_y2$MESE == 9]),mean(b6_y2$TSS[b6_y2$MESE == 10]),
mean(b6_y2$TSS[b6_y2$MESE == 11]),mean(b6_y2$TSS[b6_y2$MESE == 12]))

mont_mean_b6_y3<-c(mean(b6_y3$TSS[b6_y3$MESE == 1]),mean(b6_y3$TSS[b6_y3$MESE == 2]),mean(b6_y3$TSS[b6_y3$MESE == 3]),mean(b6_y3$TSS[b6_y3$MESE == 4]),
                   mean(b6_y3$TSS[b6_y3$MESE == 5]),mean(b6_y3$TSS[b6_y3$MESE == 6]),mean(b6_y3$TSS[b6_y3$MESE == 7]),mean(b6_y3$TSS[b6_y3$MESE == 8]),
                   mean(b6_y3$TSS[b6_y3$MESE == 9]),mean(b6_y3$TSS[b6_y3$MESE == 10]),
mean(b6_y3$TSS[b6_y3$MESE == 11]),mean(b6_y3$TSS[b6_y3$MESE == 12]))

mont_mean_b6_y4<-c(mean(b6_y4$TSS[b6_y4$MESE == 1]),mean(b6_y4$TSS[b6_y4$MESE == 2]),mean(b6_y4$TSS[b6_y4$MESE == 3]),mean(b6_y4$TSS[b6_y4$MESE == 4]),
                   mean(b6_y4$TSS[b6_y4$MESE == 5]),mean(b6_y4$TSS[b6_y4$MESE == 6]),mean(b6_y4$TSS[b6_y4$MESE == 7]),mean(b6_y4$TSS[b6_y4$MESE == 8]),
                   mean(b6_y4$TSS[b6_y4$MESE == 9]),mean(b6_y4$TSS[b6_y4$MESE == 10]),
mean(b6_y4$TSS[b6_y4$MESE == 11]),mean(b6_y4$TSS[b6_y4$MESE == 12]))


mont_mean_b7_y1<-c(mean(b7_y1$TSS[b7_y1$MESE == 1]),mean(b7_y1$TSS[b7_y1$MESE == 2]),mean(b7_y1$TSS[b7_y1$MESE == 3]),mean(b7_y1$TSS[b7_y1$MESE == 4]),
                   mean(b7_y1$TSS[b7_y1$MESE == 5]),mean(b7_y1$TSS[b7_y1$MESE == 6]),mean(b7_y1$TSS[b7_y1$MESE == 7]),mean(b7_y1$TSS[b7_y1$MESE == 8]),
                   mean(b7_y1$TSS[b7_y1$MESE == 9]),mean(b7_y1$TSS[b7_y1$MESE == 10]),
mean(b7_y1$TSS[b7_y1$MESE == 11]),mean(b7_y1$TSS[b7_y1$MESE == 12]))

mont_mean_b7_y2<-c(mean(b7_y2$TSS[b7_y2$MESE == 1]),mean(b7_y2$TSS[b7_y2$MESE == 2]),mean(b7_y2$TSS[b7_y2$MESE == 3]),mean(b7_y2$TSS[b7_y2$MESE == 4]),
                   mean(b7_y2$TSS[b7_y2$MESE == 5]),mean(b7_y2$TSS[b7_y2$MESE == 6]),mean(b7_y2$TSS[b7_y2$MESE == 7]),mean(b7_y2$TSS[b7_y2$MESE == 8]),
                   mean(b7_y2$TSS[b7_y2$MESE == 9]),mean(b7_y2$TSS[b7_y2$MESE == 10]),
mean(b7_y2$TSS[b7_y2$MESE == 11]),mean(b7_y2$TSS[b7_y2$MESE == 12]))

mont_mean_b7_y3<-c(mean(b7_y3$TSS[b7_y3$MESE == 1]),mean(b7_y3$TSS[b7_y3$MESE == 2]),mean(b7_y3$TSS[b7_y3$MESE == 3]),mean(b7_y3$TSS[b7_y3$MESE == 4]),
                   mean(b7_y3$TSS[b7_y3$MESE == 5]),mean(b7_y3$TSS[b7_y3$MESE == 6]),mean(b7_y3$TSS[b7_y3$MESE == 7]),mean(b7_y3$TSS[b7_y3$MESE == 8]),
                   mean(b7_y3$TSS[b7_y3$MESE == 9]),mean(b7_y3$TSS[b7_y3$MESE == 10]),
mean(b7_y3$TSS[b7_y3$MESE == 11]),mean(b7_y3$TSS[b7_y3$MESE == 12]))

mont_mean_b7_y4<-c(mean(b7_y4$TSS[b7_y4$MESE == 1]),mean(b7_y4$TSS[b7_y4$MESE == 2]),mean(b7_y4$TSS[b7_y4$MESE == 3]),mean(b7_y4$TSS[b7_y4$MESE == 4]),
                   mean(b7_y4$TSS[b7_y4$MESE == 5]),mean(b7_y4$TSS[b7_y4$MESE == 6]),mean(b7_y4$TSS[b7_y4$MESE == 7]),mean(b7_y4$TSS[b7_y4$MESE == 8]),
                   mean(b7_y4$TSS[b7_y4$MESE == 9]),mean(b7_y4$TSS[b7_y4$MESE == 10]),
                   mean(b7_y4$TSS[b7_y4$MESE == 11]),mean(b7_y4$TSS[b7_y4$MESE == 12]))

mont_mean_b8_y1<-c(mean(b8_y1$TSS[b8_y1$MESE == 1]),mean(b8_y1$TSS[b8_y1$MESE == 2]),mean(b8_y1$TSS[b8_y1$MESE == 3]),mean(b8_y1$TSS[b8_y1$MESE == 4]),
                   mean(b8_y1$TSS[b8_y1$MESE == 5]),mean(b8_y1$TSS[b8_y1$MESE == 6]),mean(b8_y1$TSS[b8_y1$MESE == 7]),mean(b8_y1$TSS[b8_y1$MESE == 8]),
                   mean(b8_y1$TSS[b8_y1$MESE == 9]),mean(b8_y1$TSS[b8_y1$MESE == 10]),
                   mean(b8_y1$TSS[b8_y1$MESE == 11]),mean(b8_y1$TSS[b8_y1$MESE == 12]))

mont_mean_b8_y2<-c(mean(b8_y2$TSS[b8_y2$MESE == 1]),mean(b8_y2$TSS[b8_y2$MESE == 2]),mean(b8_y2$TSS[b8_y2$MESE == 3]),mean(b8_y2$TSS[b8_y2$MESE == 4]),
                   mean(b8_y2$TSS[b8_y2$MESE == 5]),mean(b8_y2$TSS[b8_y2$MESE == 6]),mean(b8_y2$TSS[b8_y2$MESE == 7]),mean(b8_y2$TSS[b8_y2$MESE == 8]),
                   mean(b8_y2$TSS[b8_y2$MESE == 9]),mean(b8_y2$TSS[b8_y2$MESE == 10]),
                   mean(b8_y2$TSS[b8_y2$MESE == 11]),mean(b8_y2$TSS[b8_y2$MESE == 12]))


mont_mean_b8_y3<-c(mean(b8_y3$TSS[b8_y3$MESE == 1]),mean(b8_y3$TSS[b8_y3$MESE == 2]),mean(b8_y3$TSS[b8_y3$MESE == 3]),mean(b8_y3$TSS[b8_y3$MESE == 4]),
                   mean(b8_y3$TSS[b8_y3$MESE == 5]),mean(b8_y3$TSS[b8_y3$MESE == 6]),mean(b8_y3$TSS[b8_y3$MESE == 7]),mean(b8_y3$TSS[b8_y3$MESE == 8]),
                   mean(b8_y3$TSS[b8_y3$MESE == 9]),mean(b8_y3$TSS[b8_y3$MESE == 10]),
                   mean(b8_y3$TSS[b8_y3$MESE == 11]),mean(b8_y3$TSS[b8_y3$MESE == 12]))


mont_mean_b8_y4<-c(mean(b8_y4$TSS[b8_y4$MESE == 1]),mean(b8_y4$TSS[b8_y4$MESE == 2]),mean(b8_y4$TSS[b8_y4$MESE == 3]),mean(b8_y4$TSS[b8_y4$MESE == 4]),
                   mean(b8_y4$TSS[b8_y4$MESE == 5]),mean(b8_y4$TSS[b8_y4$MESE == 6]),mean(b8_y4$TSS[b8_y4$MESE == 7]),mean(b8_y4$TSS[b8_y4$MESE == 8]),
                   mean(b8_y4$TSS[b8_y4$MESE == 9]),mean(b8_y4$TSS[b8_y4$MESE == 10]),
                   mean(b8_y4$TSS[b8_y4$MESE == 11]),mean(b8_y4$TSS[b8_y4$MESE == 12]))


mont_mean_b9_y1<-c(mean(b9_y1$TSS[b9_y1$MESE == 1]),mean(b9_y1$TSS[b9_y1$MESE == 2]),mean(b9_y1$TSS[b9_y1$MESE == 3]),mean(b9_y1$TSS[b9_y1$MESE == 4]),
                   mean(b9_y1$TSS[b9_y1$MESE == 5]),mean(b9_y1$TSS[b9_y1$MESE == 6]),mean(b9_y1$TSS[b9_y1$MESE == 7]),mean(b9_y1$TSS[b9_y1$MESE == 8]),
                   mean(b9_y1$TSS[b9_y1$MESE == 9]),mean(b9_y1$TSS[b9_y1$MESE == 10]),
                   mean(b9_y1$TSS[b9_y1$MESE == 11]),mean(b9_y1$TSS[b9_y1$MESE == 12]))

mont_mean_b9_y2<-c(mean(b9_y2$TSS[b9_y2$MESE == 1]),mean(b9_y2$TSS[b9_y2$MESE == 2]),mean(b9_y2$TSS[b9_y2$MESE == 3]),mean(b9_y2$TSS[b9_y2$MESE == 4]),
                   mean(b9_y2$TSS[b9_y2$MESE == 5]),mean(b9_y2$TSS[b9_y2$MESE == 6]),mean(b9_y2$TSS[b9_y2$MESE == 7]),mean(b9_y2$TSS[b9_y2$MESE == 8]),
                   mean(b9_y2$TSS[b9_y2$MESE == 9]),mean(b9_y2$TSS[b9_y2$MESE == 10]),
mean(b9_y2$TSS[b9_y2$MESE == 11]),mean(b9_y2$TSS[b9_y2$MESE == 12]))

mont_mean_b9_y3<-c(mean(b9_y3$TSS[b9_y3$MESE == 1]),mean(b9_y3$TSS[b9_y3$MESE == 2]),mean(b9_y3$TSS[b9_y3$MESE == 3]),mean(b9_y3$TSS[b9_y3$MESE == 4]),
                   mean(b9_y3$TSS[b9_y3$MESE == 5]),mean(b9_y3$TSS[b9_y3$MESE == 6]),mean(b9_y3$TSS[b9_y3$MESE == 7]),mean(b9_y3$TSS[b9_y3$MESE == 8]),
                   mean(b9_y3$TSS[b9_y3$MESE == 9]),mean(b9_y3$TSS[b9_y3$MESE == 10]),
mean(b9_y3$TSS[b9_y3$MESE == 11]),mean(b9_y3$TSS[b9_y3$MESE == 12]))

mont_mean_b9_y4<-c(mean(b9_y4$TSS[b9_y4$MESE == 1]),mean(b9_y4$TSS[b9_y4$MESE == 2]),mean(b9_y4$TSS[b9_y4$MESE == 3]),mean(b9_y4$TSS[b9_y4$MESE == 4]),
                   mean(b9_y4$TSS[b9_y4$MESE == 5]),mean(b9_y4$TSS[b9_y4$MESE == 6]),mean(b9_y4$TSS[b9_y4$MESE == 7]),mean(b9_y4$TSS[b9_y4$MESE == 8]),
                   mean(b9_y4$TSS[b9_y4$MESE == 9]),mean(b9_y4$TSS[b9_y4$MESE == 10]),
                   mean(b9_y4$TSS[b9_y4$MESE == 11]),mean(b9_y4$TSS[b9_y4$MESE == 12]))

mont_mean_b10_y1<-c(mean(b10_y1$TSS[b10_y1$MESE == 1]),mean(b10_y1$TSS[b10_y1$MESE == 2]),mean(b10_y1$TSS[b10_y1$MESE == 3]),mean(b10_y1$TSS[b10_y1$MESE == 4]),
                    mean(b10_y1$TSS[b10_y1$MESE == 5]),mean(b10_y1$TSS[b10_y1$MESE == 6]),mean(b10_y1$TSS[b10_y1$MESE == 7]),mean(b10_y1$TSS[b10_y1$MESE == 8]),
                    mean(b10_y1$TSS[b10_y1$MESE == 9]),mean(b10_y1$TSS[b10_y1$MESE == 10]),
                    mean(b10_y1$TSS[b10_y1$MESE == 11]),mean(b10_y1$TSS[b10_y1$MESE == 12]))


mont_mean_b10_y2<-c(mean(b10_y2$TSS[b10_y2$MESE == 1]),mean(b10_y2$TSS[b10_y2$MESE == 2]),mean(b10_y2$TSS[b10_y2$MESE == 3]),mean(b10_y2$TSS[b10_y2$MESE == 4]),
                    mean(b10_y2$TSS[b10_y2$MESE == 5]),mean(b10_y2$TSS[b10_y2$MESE == 6]),mean(b10_y2$TSS[b10_y2$MESE == 7]),mean(b10_y2$TSS[b10_y2$MESE == 8]),
                    mean(b10_y2$TSS[b10_y2$MESE == 9]),mean(b10_y2$TSS[b10_y2$MESE == 10]),
mean(b10_y2$TSS[b10_y2$MESE == 11]),mean(b10_y2$TSS[b10_y2$MESE == 12]))

mont_mean_b10_y3<-c(mean(b10_y3$TSS[b10_y3$MESE == 1]),mean(b10_y3$TSS[b10_y3$MESE == 2]),mean(b10_y3$TSS[b10_y3$MESE == 3]),mean(b10_y3$TSS[b10_y3$MESE == 4]),
                    mean(b10_y3$TSS[b10_y3$MESE == 5]),mean(b10_y3$TSS[b10_y3$MESE == 6]),mean(b10_y3$TSS[b10_y3$MESE == 7]),mean(b10_y3$TSS[b10_y3$MESE == 8]),
                    mean(b10_y3$TSS[b10_y3$MESE == 9]),mean(b10_y3$TSS[b10_y3$MESE == 10]),
mean(b10_y3$TSS[b10_y3$MESE == 11]),mean(b10_y3$TSS[b10_y3$MESE == 12]))

mont_mean_b10_y4<-c(mean(b10_y4$TSS[b10_y4$MESE == 1]),mean(b10_y4$TSS[b10_y4$MESE == 2]),mean(b10_y4$TSS[b10_y4$MESE == 3]),mean(b10_y4$TSS[b10_y4$MESE == 4]),
                    mean(b10_y4$TSS[b10_y4$MESE == 5]),mean(b10_y4$TSS[b10_y4$MESE == 6]),mean(b10_y4$TSS[b10_y4$MESE == 7]),mean(b10_y4$TSS[b10_y4$MESE == 8]),
                    mean(b10_y4$TSS[b10_y4$MESE == 9]),mean(b10_y4$TSS[b10_y4$MESE == 10]),
mean(b10_y4$TSS[b10_y4$MESE == 11]),mean(b10_y4$TSS[b10_y4$MESE == 12]))

medie_mese_anno<-c(mont_mean_b1_y1,mont_mean_b1_y2,mont_mean_b1_y3,mont_mean_b1_y4,
                   mont_mean_b2_y1,mont_mean_b2_y2,mont_mean_b2_y3,mont_mean_b2_y4,
                   mont_mean_b3_y1,mont_mean_b3_y2,mont_mean_b3_y3,mont_mean_b3_y4,
                   mont_mean_b4_y1,mont_mean_b4_y2,mont_mean_b4_y3,mont_mean_b4_y4,
                   mont_mean_b5_y1,mont_mean_b5_y2,mont_mean_b5_y3,mont_mean_b5_y4,
                   mont_mean_b6_y1,mont_mean_b6_y2,mont_mean_b6_y3,mont_mean_b6_y4,
                   mont_mean_b7_y1,mont_mean_b7_y2,mont_mean_b7_y3,mont_mean_b7_y4,
                   mont_mean_b8_y1,mont_mean_b8_y2,mont_mean_b8_y3,mont_mean_b8_y4,
                   mont_mean_b9_y1,mont_mean_b9_y2,mont_mean_b9_y3,mont_mean_b9_y4,
                   mont_mean_b10_y1,mont_mean_b10_y2,mont_mean_b10_y3,mont_mean_b10_y4)


medie_mese_Mod<-c(tots$wn1[1227:1238], tots$wn1[1239:1250],tots$wn1[1251:1262],tots$wn1[1263:1274],
                  tots$wn2[1227:1238], tots$wn2[1239:1250],tots$wn2[1251:1262],tots$wn2[1263:1274],
                  tots$wn3[1227:1238], tots$wn3[1239:1250],tots$wn3[1251:1262],tots$wn3[1263:1274],
                  tots$wn4[1227:1238], tots$wn4[1239:1250],tots$wn4[1251:1262],tots$wn4[1263:1274],
                  tots$wn5[1227:1238], tots$wn5[1239:1250],tots$wn5[1251:1262],tots$wn5[1263:1274],
                  tots$wc6[1227:1238], tots$wc6[1239:1250],tots$wc6[1251:1262],tots$wc6[1263:1274],
                  tots$wc7[1227:1238], tots$wc7[1239:1250],tots$wc7[1251:1262],tots$wc7[1263:1274],
                  tots$ws8[1227:1238], tots$ws8[1239:1250],tots$ws8[1251:1262],tots$ws8[1263:1274],
                  tots$ws9[1227:1238], tots$ws9[1239:1250],tots$ws9[1251:1262],tots$ws9[1263:1274],
                  tots$ws10[1227:1238], tots$ws10[1239:1250],tots$ws10[1251:1262],tots$ws10[1263:1274])

dd_SPM<-medie_mese_anno
mm_SPM<-medie_mese_Mod

plot(dd_SPM,mm_SPM)
str(dd_POM)

SPM_dm<-cbind(dd_SPM,mm_SPM)

write.table(SPM_dm, file='SPM_perTaylorD.txt')
getwd()
