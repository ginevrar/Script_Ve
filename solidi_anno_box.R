#setwd('C:/Users/Gi/Desktop/NNN56')
#setwd('C:/Users/Acer/Dropbox/NNN61/PiuRes4')
# setwd('C:/Users/gi/Dropbox/NewVenice20/z8')
 #setwd('C:/Users/Acer/Dropbox/NewVenice20/u')
###setwd('C:/Users/Acer/Desktop/NewVenice20/z17')
##setwd('C:/Users/Acer/Desktop/NewVenice20/z20')
#setwd('C:\\Users\\Acer\\Desktop\\NWBad\\NewVenice21\\2124')
setwd('C:\\Users\\gi\\Desktop\\2127')


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




png('TSS_allboxes_year_07__6.png',width = 21, height = 26,
    units = "cm", res=400)

par(mfrow=c(10,4),mar=c(.4,.1,1.5,0.0),
    oma=c(2.3,5.8,1.5,1), bty='n')

plot(rdate[1227:1238],tots$wn1[1227:1238], type='l', 
     main='2002', col='red', ylab='', ylim=c(0,90))
par(new=T)
plot(jitter(b1_y1$MESE), b1_y1$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
#mtext('box1',side=2, outer=T)
mtext(text='box1',side=2, line=2.7, las=2)

plot(rdate[1239:1250],tots$wn1[1239:1250], type='l', ylab='',main='2003', col='red', ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b1_y2$MESE), b1_y2$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1251:1262],tots$wn1[1251:1262], type='l',ylab='', main='2004', col='red', ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b1_y3$MESE), b1_y3$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1263:1274],tots$wn1[1263:1274], type='l',ylab='', main='2005', col='red', ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b1_y4$MESE), b1_y4$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')



plot(rdate[1227:1238],tots$wn2[1227:1238], type='l',ylab='',col='red', ylim=c(0,90))
par(new=T)
plot(jitter(b2_y1$MESE), b2_y1$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
mtext(text='box2',side=2, line=2.7, las=2)

plot(rdate[1239:1250],tots$wn2[1239:1250], type='l',ylab='', col='red', ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b2_y2$MESE), b2_y2$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n',  ylim=c(0,90), yaxt='n')

plot(rdate[1251:1262],tots$wn2[1251:1262], type='l', col='red', ylab='', ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b2_y3$MESE), b2_y3$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1263:1274],tots$wn2[1263:1274], type='l', col='red', ylab='', ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b2_y4$MESE), b2_y4$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')


plot(rdate[1227:1238],tots$wn2[1227:1238], type='l', col='red', ylab='',  ylim=c(0,90))
par(new=T)
plot(jitter(b3_y1$MESE), b3_y1$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90))
mtext(text='box3',side=2, line=2.7, las=2)

plot(rdate[1239:1250],tots$wn2[1239:1250], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b3_y2$MESE), b3_y2$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1251:1262],tots$wn2[1251:1262], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b3_y3$MESE), b3_y3$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1263:1274],tots$wn4[1263:1274], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b3_y4$MESE), b3_y4$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')


plot(rdate[1227:1238],tots$wn4[1227:1238], type='l', col='red', ylab='',  ylim=c(0,90))
par(new=T)
plot(jitter(b4_y1$MESE), b4_y1$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
mtext(text='box4',side=2, line=2.7, las=2)

plot(rdate[1239:1250],tots$wn2[1239:1250], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b4_y2$MESE), b4_y2$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1251:1262],tots$wn3[1251:1262], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')


plot(rdate[1263:1274],tots$wn3[1263:1274], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')



plot(rdate[1227:1238],tots$wn5[1227:1238], type='l', col='red', ylab='',  ylim=c(0,90))
par(new=T)
plot(jitter(b5_y1$MESE), b5_y1$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
mtext(text='box5',side=2, line=2.7, las=2)

plot(rdate[1239:1250],tots$wn5[1239:1250], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b5_y2$MESE), b5_y2$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1251:1262],tots$wn5[1251:1262], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b5_y3$MESE), b5_y3$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1263:1274],tots$wn5[1263:1274], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b5_y4$MESE), b5_y4$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')


plot(rdate[1227:1238],tots$wc6[1227:1238], type='l', col='red', ylab='',  ylim=c(0,90))
par(new=T)
plot(jitter(b6_y1$MESE), b6_y1$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90))
mtext(text='box6',side=2, line=2.7, las=2)

plot(rdate[1239:1250],tots$wc6[1239:1250], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b6_y2$MESE), b6_y2$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1251:1262],tots$wc6[1251:1262], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b6_y3$MESE), b6_y3$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1263:1274],tots$wc6[1263:1274], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b6_y4$MESE), b6_y4$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')


plot(rdate[1227:1238],tots$wc7[1227:1238], type='l', col='red', ylab='',  ylim=c(0,90))
par(new=T)
plot(jitter(b7_y1$MESE), b7_y1$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
mtext(text='box7',side=2, line=2.7, las=2)

plot(rdate[1239:1250],tots$wc7[1239:1250], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b7_y2$MESE), b7_y2$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1251:1262],tots$wc7[1251:1262], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b7_y3$MESE), b7_y3$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1263:1274],tots$wc7[1263:1274], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b7_y4$MESE), b7_y4$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')



plot(rdate[1227:1238],tots$ws8[1227:1238], type='l', col='red', ylab='',  ylim=c(0,90))
par(new=T)
plot(jitter(b8_y1$MESE), b8_y1$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
mtext(text='box8',side=2, line=2.7, las=2)

plot(rdate[1239:1250],tots$ws8[1239:1250], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b8_y2$MESE), b8_y2$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1251:1262],tots$ws8[1251:1262], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b8_y3$MESE), b8_y3$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1263:1274],tots$ws8[1263:1274], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b8_y4$MESE), b8_y4$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')




plot(rdate[1227:1238],tots$ws9[1227:1238], type='l', col='red', ylab='',  ylim=c(0,90))
par(new=T)
plot(jitter(b9_y1$MESE), b9_y1$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
mtext(text='box9',side=2, line=2.7, las=2)

plot(rdate[1239:1250],tots$ws9[1239:1250], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b9_y2$MESE), b9_y2$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1251:1262],tots$ws9[1251:1262], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b9_y3$MESE), b9_y3$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1263:1274],tots$ws9[1263:1274], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b9_y4$MESE), b9_y4$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')



plot(rdate[1227:1238],tots$ws10[1227:1238], type='l', col='red', ylab='',  ylim=c(0,90))
par(new=T)
plot(jitter(b10_y1$MESE), b10_y1$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
mtext(text='box10',side=2, line=2.7, las=2)

plot(rdate[1239:1250],tots$ws10[1239:1250], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b10_y2$MESE), b10_y2$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1251:1262],tots$ws10[1251:1262], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b10_y3$MESE), b10_y3$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate[1263:1274],tots$ws10[1263:1274], type='l', col='red', ylab='',  ylim=c(0,90), yaxt='n')
par(new=T)
plot(jitter(b10_y4$MESE), b10_y4$TSS, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

dev.off()






png('POM_allboxes_year_07__6.png',width = 21, height = 26,
    units = "cm", res=400)

par(mfrow=c(10,4),mar=c(.4,.1,1.5,0.0),
    oma=c(2.3,5.8,1.5,1), bty='n')

plot(rdate[1227:1238],POM$wn1[1227:1238], type='l', 
     main='2002', col='green', ylab='', ylim=c(0,8))
par(new=T)
plot(jitter(b1_y1$MESE), b1_y1$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')
#mtext('box1',side=2, outer=T)
mtext(text='box1',side=2, line=2.7, las=2)

plot(rdate[1239:1250],POM$wn1[1239:1250], type='l', ylab='',main='2003', col='green', ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b1_y2$MESE), b1_y2$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1251:1262],POM$wn1[1251:1262], type='l',ylab='', main='2004', col='green', ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b1_y3$MESE), b1_y3$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1263:1274],POM$wn1[1263:1274], type='l',ylab='', main='2005', col='green', ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b1_y4$MESE), b1_y4$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')



plot(rdate[1227:1238],POM$wn2[1227:1238], type='l',ylab='',col='green', ylim=c(0,8))
par(new=T)
plot(jitter(b2_y1$MESE), b2_y1$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')
mtext(text='box2',side=2, line=2.7, las=2)

plot(rdate[1239:1250],POM$wn2[1239:1250], type='l',ylab='', col='green', ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b2_y2$MESE), b2_y2$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n',  ylim=c(0,8), yaxt='n')

plot(rdate[1251:1262],POM$wn2[1251:1262], type='l', col='green', ylab='', ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b2_y3$MESE), b2_y3$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1263:1274],POM$wn2[1263:1274], type='l', col='green', ylab='', ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b2_y4$MESE), b2_y4$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')


plot(rdate[1227:1238],POM$wn3[1227:1238], type='l', col='green', ylab='',  ylim=c(0,8))
par(new=T)
plot(jitter(b3_y1$MESE), b3_y1$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8))
mtext(text='box3',side=2, line=2.7, las=2)

plot(rdate[1239:1250],POM$wn3[1239:1250], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b3_y2$MESE), b3_y2$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1251:1262],POM$wn3[1251:1262], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b3_y3$MESE), b3_y3$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1263:1274],POM$wn3[1263:1274], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b3_y4$MESE), b3_y4$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')


plot(rdate[1227:1238],POM$wn4[1227:1238], type='l', col='green', ylab='',  ylim=c(0,8))
par(new=T)
plot(jitter(b4_y1$MESE), b4_y1$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')
mtext(text='box4',side=2, line=2.7, las=2)

plot(rdate[1239:1250],POM$wn4[1239:1250], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b4_y2$MESE), b4_y2$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1251:1262],POM$wn4[1251:1262], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')


plot(rdate[1263:1274],POM$wn4[1263:1274], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')



plot(rdate[1227:1238],POM$wn5[1227:1238], type='l', col='green', ylab='',  ylim=c(0,8))
par(new=T)
plot(jitter(b5_y1$MESE), b5_y1$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')
mtext(text='box5',side=2, line=2.7, las=2)

plot(rdate[1239:1250],POM$wn5[1239:1250], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b5_y2$MESE), b5_y2$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1251:1262],POM$wn5[1251:1262], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b5_y3$MESE), b5_y3$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1263:1274],POM$wn5[1263:1274], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b5_y4$MESE), b5_y4$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')


plot(rdate[1227:1238],POM$wc6[1227:1238], type='l', col='green', ylab='',  ylim=c(0,8))
par(new=T)
plot(jitter(b6_y1$MESE), b6_y1$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8))
mtext(text='box6',side=2, line=2.7, las=2)

plot(rdate[1239:1250],POM$wc6[1239:1250], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b6_y2$MESE), b6_y2$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1251:1262],POM$wc6[1251:1262], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b6_y3$MESE), b6_y3$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1263:1274],POM$wc6[1263:1274], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b6_y4$MESE), b6_y4$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')


plot(rdate[1227:1238],POM$wc7[1227:1238], type='l', col='green', ylab='',  ylim=c(0,8))
par(new=T)
plot(jitter(b7_y1$MESE), b7_y1$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')
mtext(text='box7',side=2, line=2.7, las=2)

plot(rdate[1239:1250],POM$wc7[1239:1250], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b7_y2$MESE), b7_y2$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1251:1262],POM$wc7[1251:1262], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b7_y3$MESE), b7_y3$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1263:1274],POM$wc7[1263:1274], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b7_y4$MESE), b7_y4$POM, pch=19, col='#c4d1c677',
     xlab='', ylab='', xaxt='n', ylim=c(0,8), yaxt='n')



plot(rdate[1227:1238],POM$ws8[1227:1238], type='l', col='green', ylab='',  ylim=c(0,8))
par(new=T)
plot(jitter(b8_y1$MESE), b8_y1$POM, pch=19, col='#c4d1c677',
     xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')
mtext(text='box8',side=2, line=2.7, las=2)

plot(rdate[1239:1250],POM$ws8[1239:1250], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b8_y2$MESE), b8_y2$POM, 
     pch=19, col='#c4d1c677', xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1251:1262],POM$ws8[1251:1262], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b8_y3$MESE), b8_y3$POM, pch=19, 
     col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1263:1274],POM$ws8[1263:1274], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b8_y4$MESE), b8_y4$POM, pch=19, 
     col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')




plot(rdate[1227:1238],POM$ws9[1227:1238], type='l', col='green', ylab='',  ylim=c(0,8))
par(new=T)
plot(jitter(b9_y1$MESE), b9_y1$POM, pch=19, 
     col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')
mtext(text='box9',side=2, line=2.7, las=2)

plot(rdate[1239:1250],POM$ws9[1239:1250], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b9_y2$MESE), b9_y2$POM, pch=19, 
     col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1251:1262],POM$ws9[1251:1262], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b9_y3$MESE), b9_y3$POM, pch=19, 
     col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1263:1274],POM$ws9[1263:1274], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b9_y4$MESE), b9_y4$POM,pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')



plot(rdate[1227:1238],POM$ws10[1227:1238], type='l', col='green', ylab='',  ylim=c(0,8))
par(new=T)
plot(jitter(b10_y1$MESE), b10_y1$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')
mtext(text='box10',side=2, line=2.7, las=2)

plot(rdate[1239:1250],POM$ws10[1239:1250], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b10_y2$MESE), b10_y2$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1251:1262],POM$ws10[1251:1262], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b10_y3$MESE), b10_y3$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

plot(rdate[1263:1274],POM$ws10[1263:1274], type='l', col='green', ylab='',  ylim=c(0,8), yaxt='n')
par(new=T)
plot(jitter(b10_y4$MESE), b10_y4$POM, pch=19, col='#c4d1c677',xlab='', ylab='',xaxt='n', ylim=c(0,8), yaxt='n')

dev.off()

#________________________________ Fine plot solidi anno x anno ________________________________
