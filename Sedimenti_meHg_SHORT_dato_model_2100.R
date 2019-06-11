#-------------------------------data from literature---------------------------------------
setwd('C:\\Users\\gi\\Downloads')
setwd('H:/Il mio Drive/MERCURIO/Venezia/')
setwd('G:/Il mio Drive/MERCURIO/Venezia/')
dati<-read.table('MeHg_data_depths.txt',  header=T);str(dati)

#setwd('C:/Users/Acer/Desktop/NewVenice20/z20')
#setwd('C:\\Users\\gi\\Desktop\\2156')
#setwd('C:\\Users\\gi\\Desktop\\NNN14')
#setwd('H:\\2154')
#setwd('C:\\Users\\Acer\\Desktop\\in_high_50_88b')
setwd('C:\\Users\\gi\\Dropbox\\sim_NaOH')
#setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max2\\naoh2')
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\year')     #sim_cl
setwd('C:\\Users\\gi\\Downloads')
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\REference_Ok\\year')     #sim_cl

mehg<-read.csv('Methyl_Hg.csv', skip=1, header = T)
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
str(mehg)

hg<-read.csv('Total_Hg.csv', skip=1, header = T)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

layerA<-dati[(dati$depth<=5),]
layerB<-dati[(dati$depth>5 & dati$depth<=10),]
layerC<-dati[(dati$depth>10 & dati$depth<=20),]

library(lattice)
xyplot(mehg ~ box, data=dati)
xyplot(mehg ~ year, data=dati)

box6_dat<-filter(dati,box==6)
box6_dat_05<-box6_dat[1:11,]
box6_dat_06m<-box6_dat[12:16,]
box6_dat_06n<-box6_dat[17:22,]
boxplot(box6_dat_05$mehg,box6_dat_06m$mehg,box6_dat_06n$mehg)

ord_d<-dati[order(year,month),]
#sort by mpg (ascending) and cyl (descending)
newdata <- mtcars[order(mpg, -cyl),] 

library(dplyr)
box1<-filter(dati,box==1) 
box2<-filter(dati,box==2) 
box3<-filter(dati,box==3) 
box6<-filter(dati,box==6) 
box7<-filter(dati,box==7) 

box1_2005<-filter(box1,year==2005)
box1_2008<-filter(box1,year==2008)
box1_2009<-filter(box1,year==2009)

box2_2008<-filter(box2,year==2008)
box2_2009<-filter(box2,year==2009)

box3_2005<-box3
box7$year

box6_2005<-filter(box6,year==2005)
box6_2006<-filter(box6,year==2006)

box7_2005<-filter(box7,year==2005)
box7_2006<-filter(box7,year==2006)

a<-data.frame(mehg$dsn1,mehg$sn1);b<-data.frame(mehg$dsn2,mehg$sn2)
c<-data.frame(mehg$dsn3,mehg$sn3);d<-data.frame(mehg$dsn4,mehg$sn4)
e<-data.frame(mehg$dsn5,mehg$sn5);f<-data.frame(mehg$dsc6,mehg$sc6)
g<-data.frame(mehg$dsc7,mehg$sc7);h<-data.frame(mehg$dss8,mehg$ss8)
i<-data.frame(mehg$dss9,mehg$ss9);l<-data.frame(mehg$dss10,mehg$ss10)
media1<-rowMeans(a);media2<-rowMeans(b);media3<-rowMeans(c);media4<-rowMeans(d);media5<-rowMeans(e);
media6<-rowMeans(f); media7<-rowMeans(g); media8<-rowMeans(h); media9<-rowMeans(i); media10<-rowMeans(l)

time.steps <- mehg[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
str(rdate)


#png('Time_hg_sediment_ns11d.png'
#width = 1000*1.5, height = 530*1.5, 
#provare mult*1.5 dimensioni plot
#   units = "px")
#par(mfrow=c(2,5),mar=c(3,1,1,1), oma=c(0,4,3,1), bty='n')
png('Time_MEhg_sediment_2.png',
    width = 28, height = 15,res=400,     # width = 32, height = 18,res=400,
    units = "cm")
par(mfrow=c(2,5),mar=c(3,2,1,1), 
    oma=c(0,3,3,1), bty='n', mgp=c(3.5,1.5,0))
ax<-seq(from=1980, to=2030, by=1)
llab<-seq(from=1980, to=2030, by=50)
plot(rdate,mehg$sn1,
     type='l', col='#313695',ylim=c(0,5), ylab=' ',
     lwd=2,main='Box1',lty=3,xlim=c(rdate[2],rdate[203]),
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
mtext('MMHg (ng/g)', side = 2, line=3.4, cex=1.3)
par(new=T)
plot(rdate,mehg$dsn1,ylim=c(0,5), type='l', col='#313695',     #
     lty=1,lwd=2,main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[2],rdate[203]),
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate,mehg$osn1,ylim=c(0,5), type='l', col='#313695',
     lty=5,lwd=1,main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[2],rdate[203]),
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
#text(1020,1200,'1977', cex=1.3)
#text(9700,1200,'1997', cex=1.3)
par(new=T)
boxplot(box1_2005$mehg,box1_2008$mehg,box1_2009$mehg,
        ylim=c(0,5),        col='#31369588', ylab=' ', range=F,
        boxwex=1700, xaxt='n',yaxt='n', xlim=c(rdate[2],rdate[203]),
        at=c(c1,c2,c3))   #0.23,0.45
v_text<-c('10cm','15cm','10cm')
x=c(c1-2500,c2-541,c5+2500)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.)  # 10 c
par(new=T)
plot(rdate,media1,ylim=c(0,5), type='l', col='gray10',
     lwd=1.7, main=' ', xaxt='n',yaxt='n',xlim=c(rdate[2],rdate[203]),
     ylab=' ',xlab= '', cex.lab=2 , 
     cex.main=1.7 , lty=1,cex.axis=1.6)

c1<-rdate[106]
c2<-rdate[110]
c3<-rdate[112]
c5<-rdate[108]
plot(rdate,mehg$sn2,ylim=c(0,5), type='l', col='#4575b4',lwd=2,
     main='Box2',ylab= '',lty=3, xaxt='n',yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)

x=c(c1-1000,c2-541,c5+500+950)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.) 
# 10 c#text(9700,1200,'1997', cex=1.2)
par(new=T)
plot(rdate,mehg$dsn2,ylim=c(0,5), type='l', col='#4575b4',
     lty=1,lwd=2,main=' ',ylab= '',yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate,mehg$osn2,ylim=c(0,5), type='l', col='#4575b4',
     lty=5,lwd=1,main=' ',ylab= '',yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
boxplot(box2_2008$mehg, box2_2009$mehg,ylim=c(0,5),
        col='#4575b488',xlim=c(rdate[2],rdate[203]),
        at=c(c2,c3),
        boxwex=1700,xaxt='n',ylab= '',yaxt='n')
par(new=T)
plot(rdate,media2,ylim=c(0,5), type='l', col='gray10',
     lwd=1.7, main=' ', 
     ylab='Hg (ng/g)', xlab= '',yaxt='n',
     cex.lab=2 , cex.main=1.7 , lty=1,cex.axis=1.6)




plot(rdate,mehg$sn3, ylim=c(0,5), type='l',col='#DDF26B',
     lwd=2,main='Box3', xlab= '', ylab= '', cex.lab=2 , 
     cex.main=1.7,lty=3,yaxt='n', cex.axis=1.6)


x=c(c1-1000,c2-541,c5+500+950)
y=c(3000,-40,3000)
text(x, y, v_text,cex=1.)  # 10 c
par(new=T)
plot(rdate,mehg$dsn3, ylim=c(0,5), type='l',col='#DDF26B',
     lty=1,lwd=2,main=' ',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.7 ,yaxt='n', cex.axis=1.6)
par(new=T)
plot(rdate,mehg$osn3, ylim=c(0,5),lty=5, 
     type='l',col='#DDF26B',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)

par(new=T)
boxplot(box3$mehg ,ylim=c(0,5),col='#DDF26B88',
        xlim=c(rdate[2],rdate[203]),at=c(c1),
        ylab= '',boxwex=1700,xaxt='n',yaxt='n' , range=F)#
par(new=T)  
plot(rdate,media3,ylim=c(0,5), type='l', col='gray10',
     lwd=1.7, main=' ', ylab='Hg (ng/g)',xlab= '', cex.lab=2 ,
     yaxt='n', cex.main=1.7 , lty=1,cex.axis=1.6)

plot(rdate,mehg$sn4, ylim=c(0,5), type='l',col='#abd9e9',lwd=2,main='Box4',
     xlab= '',ylab= '',yaxt='n', cex.lab=2 , cex.main=1.7 ,lty=3, cex.axis=1.6)
x=c(c1-1000,c2-541,c5+500+950)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.)  # 10 c0 c
par(new=T)
plot(rdate,mehg$dsn4, ylim=c(0,5),lty=1, type='l',col='#abd9e9',lwd=2,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate,mehg$osn4, ylim=c(0,5),lty=5, type='l',
     col='#abd9e9',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7, cex.axis=1.6)
par(new=T)
plot(rdate,media4,ylim=c(0,5), type='l', col='gray10',
     lwd=1.7, main=' ', 
     ylab='Hg (ng/g)',xlab= '', cex.lab=2 ,
     yaxt='n', cex.main=1.7 , lty=1,cex.axis=1.6)
plot(rdate,mehg$sn5, ylim=c(0,5), type='l',col='#e5e572',lwd=2, main='Box5',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.7 , lty=3,yaxt='n', cex.axis=1.6)
x=c(c1-1000,c2-541,c5+500+950)
y=c(3000,-40,3000)
text(x, y, v_text,cex=1.)  # 10 

par(new=T)
plot(rdate,mehg$dsn5, ylim=c(0,5), type='l',col='#e5e572',
     lty=1,lwd=2, main='Box5',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.7 ,yaxt='n', 
     cex.axis=1.6)
par(new=T)
plot(rdate,mehg$osn5, ylim=c(0,5),lty=5, type='l',
     col='#e5e572',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate,media5,ylim=c(0,5), type='l',
     col='gray10',lwd=1.7, main=' ', 
     ylab='Hg (ng/g)',xlab= '', cex.lab=2 ,
     yaxt='n', cex.main=1.7 , lty=1,cex.axis=1.6)


#par(mar=c(3,5,2,0))   
plot(rdate,mehg$sc6, ylim=c(0,5),
     type='l',col='#fed976',lwd=2,yaxt='n', main=' ',
     ylab=' ',xlab= '',xaxt='n',
     cex.lab=1.03 , lty=3, cex.main=1.7 , cex.axis=1.6)#
mtext('MMHg (ng/g)', side = 2, line=3.4, cex=1.3)
x=c(c1-1000,c2-541,c5+500+950)
y=c(4300,-40,4300)
text(x, y, v_text,cex=1.)  # 10 c

par(new=T)
plot(rdate,mehg$dsc6, ylim=c(0,5), type='l',
     col='#fed976',lty=1,yaxt='n',lwd=2, main='Box6',
     ylab='Hg (ng/g)',xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)#
par(new=T)
plot(rdate, mehg$osc6, ylim=c(0,5),lty=5, type='l',
     col='#fed976',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)
par(new=T)
boxplot(box6_2005$mehg, box6_2006$mehg, ylim=c(0,5),col='#fed97688', ylab=' ', 
        xlim=c(rdate[2],rdate[203]),at=c(c1,c5),range=F,
        boxwex=1700,xaxt='n',yaxt='n', outline=F)
par(new=T)
plot(rdate,media6,ylim=c(0,5), type='l', col='gray10',lwd=1.7, 
     main=' ', ylab='Hg (ng/g)',xlab= '', cex.lab=2, cex.main=1.7, 
     lty=1,cex.axis=1.6)

#par(mar=c(3,2,2,3))
plot(rdate,mehg$sc7, ylim=c(0,5),type='l',ylab= '',col='#f79220',
     lwd=2,  main='Box7',lty=3,yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
x=c(c1-1000,c2-541,c5+500)
y=c(2000,-40,2000)
text(x, y, v_text,cex=1.)  # 10 c
par(new=T)
plot(rdate,mehg$dsc7, ylim=c(0,5),type='l',ylab= '',
     col='#f79220',lty=1,lwd=2,  main=' ',
     xlab= '', cex.lab=2 , cex.main=1.7 ,yaxt='n', cex.axis=1.6)
par(new=T)
plot(rdate,mehg$osc7, ylim=c(0,5),lty=5,
     type='l',col='#f79220',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)
par(new=T)
boxplot(box7_2005$mehg, box7_2006$mehg,ylim=c(0,5),col='#f7922088',
        xlim=c(rdate[2],rdate[203]),at=c(c1,c5),
        ylab= '',boxwex=1700,xaxt='n',yaxt='n' , range=F)#
par(new=T)
plot(rdate,media7,ylim=c(0,5), type='l', col='gray10',
     lwd=1.7, main=' ', ylab='Hg (ng/g)',xlab= '',yaxt='n', 
     cex.lab=2 , cex.main=1.7 , lty=1,cex.axis=1.6)

plot(rdate,mehg$ss8, ylim=c(0,5), type='l',ylab= '', 
     col='#f46d43',lwd=2, main='Box8',lty=3,yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
x=c(c1-1000,c2-541,c5+500)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.) 
par(new=T)
plot(rdate,mehg$dss8, ylim=c(0,5), type='l',ylab= '',yaxt='n',
     lty=1, col='#f46d43',lwd=2, main='Box8',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate,mehg$oss8, ylim=c(0,5),lty=5,
     type='l',col='#f46d43',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)
par(new=T)
boxplot(box8_77, box8,Zonta8,ylim=c(0,5),col='#f46d4388',
        xlim=c(rdate[2],rdate[2424]),at=c(c1, c2,c5),
        boxwex=1700,xaxt='n',ylab= '', yaxt='n', range=F)
par(new=T)
plot(rdate,media8,ylim=c(0,5), type='l', col='gray10',
     lwd=1.7, main=' ', ylab='Hg (ng/g)',xlab= '', 
     cex.lab=2 ,yaxt='n', cex.main=1.7 , lty=1,cex.axis=1.6)

plot(rdate,mehg$ss9, ylim=c(0,5), type='l',
     col='#d73027',ylab= '',lwd=2, main=' ',lty=3,yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)

x=c(c1-1000,c2-541,c5+500)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.) 
par(new=T)
plot(rdate,mehg$dss9, ylim=c(0,5), type='l',col='#d73027',ylab= '',
     lty=1,lwd=2, main='Box9',yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate,mehg$oss9, ylim=c(0,5),lty=5, 
     type='l',col='#d73027',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', 
     cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate,media9,ylim=c(0,5), type='l', col='gray10',lwd=1.7,
     main=' ', ylab='Hg (ng/g)',xlab= '', cex.lab=2 ,yaxt='n', 
     cex.main=2 , lty=1,cex.axis=1.6)

plot(rdate,mehg$ss10, ylim=c(0,5), 
     type='l',col='#a50028',
     ylab= '',lwd=2, main='Box10',lty=3,yaxt='n',xaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)

x=c(c1-1000,c2-541,c5+500)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.) 

par(new=T)
plot(rdate,mehg$dss10, ylim=c(0,5),
     type='l',yaxt='n',xaxt='n',
     col='#a50028',lty=1,ylab= '',lwd=2, main='Box10',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate,mehg$oss10, ylim=c(0,5),lty=5, 
     type='l',col='#a50028',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,xaxt='n',yaxt='n', 
     cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate,media10,ylim=c(0,5),
     type='l', col='gray10',
     lwd=1.7, main=' ', ylab='Hg (ng/g)',xlab= '', cex.lab=2,
     yaxt='n', cex.main=1.7 , lty=1,cex.axis=1.6)
dev.off()

head(rdate[2: 2424])
tail(rdate[2: 2424])
tail(rdate)
str(rdate)

filter(dati, ref== 'guedron_2012')
#________________________________ Fine plot Sediment hg vs time ________________________________
## ZOOM
png('BB11.png',height=13, width=18, units = 'cm',res=300)
 par(bty='n',mgp=c(3, 2, 0))
## fig(dist. day , , altezza plot)
  plot(rdate[92:122],mehg$sn1[92:122],lwd=3.5,
     type='l', col='#313695',ylim=c(0,2), ylab=' ',
     lty=3,xlim=c(rdate[92],rdate[122]),
     xlab= '', cex.lab=4.5 ,  cex.axis=2.6)
#axis(side=1, at=ax, labels = TRUE)
#axis(side=1, at=ax,lab=T,  cex.axis=1.2)
par(new=T)
plot(rdate[92:122],mehg$dsn1[92:122],ylim=c(0,2), type='l', col='#313695',     #
     lty=1,lwd=3.5,main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     xlab= '')
par(new=T)
plot(rdate[92:122],mehg$osn1[92:122],ylim=c(0,2), type='l', col='#313695',
     lty=5,lwd=3.5, main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     xlab= '')
par(new=T)
plot(rdate[92:122],media1[92:122],ylim=c(0,2), type='l', col='gray10',
     lwd=3.5, main=' ', xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     ylab=' ',xlab= '', 
     cex.main=1.7 , lty=1,cex.axis=1.6)
par(new=T)
boxplot(box1_2005$mehg,box1_2008$mehg,box1_2009$mehg,lwd=2.6,
        ylim=c(0,2),col='#31369599', ylab=' ', range=F,
        boxwex=600, xaxt='n',yaxt='n', xlim=c(rdate[92],rdate[122]),
        at=c(c1,c2,c3))   #0.23,0.45
dev.off()


png('BB12.png',height=13, width=18, units = 'cm',res=300)
par(bty='n',mgp=c(3, 2, 0))
## fig(dist. day , , altezza plot)
plot(rdate[92:122],mehg$sn2[92:122],
     type='l', col='#4575b4',ylim=c(0,3), ylab=' ',
     lwd=3.5,lty=3,xlim=c(rdate[92],rdate[122]),
     xlab= '', cex.lab=4.5 ,  cex.axis=2.6)
#axis(side=1, at=ax, labels = TRUE)
#axis(side=1, at=ax,lab=T,  cex.axis=1.2)
par(new=T)
plot(rdate[92:122],mehg$dsn2[92:122],ylim=c(0,3), type='l', col='#4575b4',     #
     lty=1,lwd=3.5,main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]), xlab= '' )
par(new=T)
plot(rdate[92:122],mehg$osn2[92:122],ylim=c(0,3), type='l', col='#4575b4',
     lty=5,lwd=3.5,main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]), xlab= '')
par(new=T)
plot(rdate[92:122],media2[92:122],ylim=c(0,3), type='l', col='gray10',
     lwd=3.5, main=' ', xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     ylab=' ',xlab= '' )
par(new=T)
boxplot(box2_2008$mehg,box2_2009$mehg,lwd=2.6,
        ylim=c(0,3),col='#4575b499', ylab=' ', range=F,
        boxwex=600, xaxt='n',yaxt='n', xlim=c(rdate[92],rdate[122]),
        at=c(c2,c3))   #0.23,0.45
dev.off()

png('BB13.png',height=13, width=18, units = 'cm',res=300)
 par(bty='n',mgp=c(3, 2, 0))
## fig(dist. day , , altezza plot)
plot(rdate[92:122],mehg$sn3[92:122],
     type='l', col='#DDF26B',ylim=c(0,2), ylab=' ',
     lwd=4,lty=3,xlim=c(rdate[92],rdate[122]),
     xlab= '', cex.lab=4.5 ,  cex.axis=2.6)
#axis(side=1, at=ax, labels = TRUE)
#axis(side=1, at=ax,lab=T,  cex.axis=1.2)
par(new=T)
plot(rdate[92:122],mehg$dsn3[92:122],ylim=c(0,2), type='l', col='#DDF26B',     #
     lty=1,lwd=3.5,main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     xlab= '', cex.lab=2 )
par(new=T)
plot(rdate[92:122],mehg$osn3[92:122],ylim=c(0,2), type='l', col='#DDF26B',
     lty=5,lwd=3.5,main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     xlab= '', cex.lab=2 )
par(new=T)
plot(rdate[92:122],media3[92:122],ylim=c(0,2), type='l', col='gray10',
     lwd=3.5, main=' ', xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     ylab=' ',xlab= '', cex.lab=2 )
par(new=T)
boxplot(box3$mehg,lwd=2.6,
        ylim=c(0,2),col='#DDF26B88', ylab=' ', range=F,
        boxwex=600, xaxt='n',yaxt='n', xlim=c(rdate[92],rdate[122]),
        at=c(c1))   #0.23,0.45
dev.off()

png('BB16.png',height=13, width=18, units = 'cm',res=300)
 par(bty='n',mgp=c(3, 2, 0))
## fig(dist. day , , altezza plot)
plot(rdate[92:122],mehg$sc6[92:122],
     type='l', col='#fed976',ylim=c(0,5), ylab=' ',
     lwd=3.5,lty=3,xlim=c(rdate[92],rdate[122]),
     xlab= '', cex.lab=4.5 ,  cex.axis=2.6)
#axis(side=1, at=ax, labels = TRUE)
#axis(side=1, at=ax,lab=T,  cex.axis=1.2)
par(new=T)
plot(rdate[92:122],mehg$dsc6[92:122],ylim=c(0,5), type='l', col='#fed976',     #
     lty=1,lwd=3.5,main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     xlab= '', cex.lab=2 )
par(new=T)
plot(rdate[92:122],mehg$osc6[92:122],ylim=c(0,5), type='l', col='#fed976',
     lty=5,lwd=3.5,main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     xlab= '', cex.lab=2 )
par(new=T)
plot(rdate[92:122],media6[92:122],ylim=c(0,5), type='l', col='gray10',
     lwd=3.5, main=' ', xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     ylab=' ',xlab= '', cex.lab=2 )
par(new=T)
boxplot(box6_2005$mehg,box6_2006$mehg,lwd=2.6,
        ylim=c(0,5),col='#fed97688', ylab=' ', range=F,
        boxwex=600, xaxt='n',yaxt='n', xlim=c(rdate[92],rdate[122]),
        at=c(c1,c5))   #0.23,0.45
dev.off()

png('BB17.png',height=13, width=18, units = 'cm',res=300)
 par(bty='n',mgp=c(3, 2, 0))
## fig(dist. day , , altezza plot)
plot(rdate[92:122],mehg$sc7[92:122],
     type='l', col='#f79220',ylim=c(0,2), ylab=' ',
     lwd=3.5,lty=3,xlim=c(rdate[92],rdate[122]),
     xlab= '', cex.lab=4.5 ,  cex.axis=2.6)
#axis(side=1, at=ax, labels = TRUE)
#axis(side=1, at=ax,lab=T,  cex.axis=1.2)
par(new=T)
plot(rdate[92:122],mehg$dsc7[92:122],ylim=c(0,2), type='l', col='#f79220',     #
     lty=1,lwd=3.5,main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     xlab= '', cex.lab=2 )
par(new=T)
plot(rdate[92:122],mehg$osc7[92:122],ylim=c(0,5), type='l', col='#f79220',
     lty=5,lwd=3.5,main=' ',ylab= '',xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     xlab= '', cex.lab=2 )
par(new=T)
plot(rdate[92:122],media7[92:122],ylim=c(0,2), type='l', col='gray10',
     lwd=3.5, main=' ', xaxt='n',yaxt='n',xlim=c(rdate[92],rdate[122]),
     ylab=' ',xlab= '', cex.lab=2 )
par(new=T)
boxplot(box7_2005$mehg,box7_2006$mehg,lwd=2.6,
        ylim=c(0,2),col='#f7922088', ylab=' ', range=F,
        boxwex=600, xaxt='n',yaxt='n', xlim=c(rdate[92],rdate[122]),
        at=c(c1,c5))   #0.23,0.45
dev.off()



