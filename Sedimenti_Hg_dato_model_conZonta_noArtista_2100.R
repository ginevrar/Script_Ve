setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10')     #sim_cl

1900-2101;2426/12;# plot da 2424 a 2020  12*80
2424-960
mehg<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
str(mehg)

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hgD<-read.csv('Dissolved_Divalent_Hg.csv',skip=1)
names(hgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hgP<-read.csv('Total_Sorbed_Divalent_Hg.csv',skip=1)
names(hgP)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

mehgP<-read.csv('Total_Sorbed_Methyl_Hg.csv',skip=1)
names(mehgP)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

nord_hg<-c(mean(hg$wn1), mean(hg$wn2),mean(hg$wn3),mean(hg$wn4),mean(hg$wn5))
centr_hg<-c(mean(hg$wc6), mean(hg$wc7), NA, NA, NA)
sud_hg<-c(mean(hg$ws8), mean(hg$ws9), mean(hg$ws10), NA, NA)
#a<-hg$sn2

time.steps <- hg[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
tail(rdate)

# Dati 1995 CVN, MAV  -  15 cm
box1<-c(0.8,0.6,0.9)*1000
box2<-c(0.8,0.8,0.8,0.7,0.3,0.4,1,0.7)*1000
box3<-c(1.1,0.2,1.4,0.4,0.2)*1000
box4<-c(1,0.6,0.8)*1000
box5<-c(0.8,0.2,0.7,1.2,0.6,1,0.7,0.3,0.6)*1000
box6<-c(0.8,0.9,1.5,0.9,0.9,1.4,1.6,1.3,0.9,1.9,0.7,0.2,1.3)*1000
box7<-c(1.5,0.9,0.2,1.2,0.7,0.5,0.3,0.7,0.2,0.1,0.1,0.3,0.4,0.5,0.4,0.1,0.6,0.8,0.7)*1000
box8<-c(0.8,0.3,0.3,0.5)*1000
box9<-c(0.5,0.1,0.1,0.4)*1000
box10<-c(0.7,0.1,0.1)*1000

c1<-rdate[929]   # 1977-04-16  # donazz       10 cm
c2<-rdate[1147]  # 1995-06-13  # MAV          15 cm
c3<-rdate[1267]  # 2005-06-11" # Han          12 cm
c4<-rdate[1320]  # 2009-11-09  # Guedron      8 cm
c5<-rdate[1298]   #2008-06-10  # Zonta        5 cm

### Dati del 1977 (Donazzolo, 1987) - 10 cm
box1_77<-c(0.49, 0.5,0.51, 0.44,0.46,0.41,0.22,0.12,0.54,0.26)*1000
box2_77<-c(0.62,1.03,0.84,0.68,0.91,0.84,0.42,0.93,0.34,0.52,
           0.52,0.05,0.14,0.4,0.35,0.98, 0.97,0.62, 0.44,0.79)*1000
box3_77<-c(0.85,0.3, 0.47, 0.1,0.1,0.1, 0.73,0.48,0.31)*1000
box4_77<-c(0.44,0.79,0.33)*1000
box5_77<-c(1.7,2.5,1.53,0.24,0.52,0.78,0.78,0.7)*1000
box6_77<-c(0.3,0.33,0.51,1.92,1.72,1.56, 2.2,1.28,3.82,                #3.82 aggiunto da PAvoni (riportato da Masiol check)
           1.06, 1,1.5,2.23,3.42, 1.56, 1.8, 1.28, 1.57, 1.57, 
           1.57,1.73,3.02,1.44,0.69,3.37,2,0.86,1.25,
           3.46,2.19,1.83,1.93,0.91,0.98,2.1,1.72)*1000
box7_77<-c(0.1,0.1,0.74,0.8,0.37,0.8,0.46,0.55,0.31,0.35,0.82,0.53,0.05,0.44,
           0.91, 0.4,0.54,0.66,0.66,0.78,1.09,0.98,0.31,0.64,0.32,
           0.05,0.05,0.12,0.05,0.25,0.12,0.34,0.14,0.33,0.72,0.31,0.2,0.5)*1000
box8_77<-c(0.54,0.57,0.27,0.37,0.21,0.19,0.23,0.19)*1000
box9_77<-c(0.05,0.05,0.05,0.13,0.31,0.16,0.2)*1000
box10_77<-c(0.63,0.18,0.05,0.26,0.17,0.29,0.38,0.26,0.49,0.05,0.1,0.12)*1000

# 2005 Han et al; 2008-2009 Guedron et al

box1_2005<-c(593.18,466.02,753.73,478.37,638.21) 


box3_2005<-c(197,197,207,216,226) 
box6_2005<-c(1141.57,1221.61,1380.16,1342.04,1038.93,
             550.82, 786.885,1032.79,1091.8, 1140.98,
             683,644,595,507,605)

box7_2005<-c( 468.97,558.00,549.46,404.27, 454.97)

a<-data.frame(hg$dsn1,hg$sn1);b<-data.frame(hg$dsn2,hg$sn2)
c<-data.frame(hg$dsn3,hg$sn3);d<-data.frame(hg$dsn4,hg$sn4)
e<-data.frame(hg$dsn5,hg$sn5);f<-data.frame(hg$dsc6,hg$sc6)
g<-data.frame(hg$dsc7,hg$sc7);h<-data.frame(hg$dss8,hg$ss8)
i<-data.frame(hg$dss9,hg$ss9);l<-data.frame(hg$dss10,hg$ss10)
media1<-rowMeans(a);media2<-rowMeans(b);media3<-rowMeans(c);media4<-rowMeans(d);media5<-rowMeans(e);
media6<-rowMeans(f); media7<-rowMeans(g); media8<-rowMeans(h); media9<-rowMeans(i); media10<-rowMeans(l)


Zonta1<-c(box1_A_hg$Hg, box1_B_hg$Hg)
Zonta2<-c(box2_A_hg$Hg, box2_B_hg$Hg)
Zonta3<-c(box3_A_hg$Hg, box3_B_hg$Hg)
Zonta4<-c(box4_A_hg$Hg, box4_B_hg$Hg)
Zonta5<-c(box5_A_hg$Hg, box5_B_hg$Hg)
Zonta6<-c(box6_A_hg$Hg, box6_B_hg$Hg)
Zonta7<-c(box7_A_hg$Hg, box7_B_hg$Hg)
Zonta8<-c(box8_A_hg$Hg, box8_B_hg$Hg)
Zonta9<-c(box9_A_hg$Hg, box9_B_hg$Hg)
Zonta10<-c(box10_A_hg$Hg, box10_B_hg$Hg)

#png('Time_hg_sediment_ns11d.png'
#width = 1000*1.5, height = 530*1.5, 
#provare mult*1.5 dimensioni plot
 #   units = "px")
#par(mfrow=c(2,5),mar=c(3,1,1,1), oma=c(0,4,3,1), bty='n')
png('Time_hg_sediment_fin92b_oks_buona48_2100_53bb__8hilmnohilcciiDDEF.png',
    width = 28, height = 15,res=400,     # width = 32, height = 18,res=400,
    units = "cm")
par(mfrow=c(2,5),mar=c(3,2,1,1), 
    oma=c(0,3,3,1), bty='n', mgp=c(3.5,1.5,0))

plot(rdate[2: 2424],hg$sn1[2: 2424],ylim=c(-50,5000),
     type='l', col='#313695', ylab=' ',
     lwd=2,main='Box1',lty=3,
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
mtext('Hg (ng/g)', side = 2, line=3.4, cex=1.3)
par(new=T)
plot(rdate[2: 2424],hg$dsn1[2: 2424],ylim=c(-50,5000), type='l', col='#313695',     #
     lty=1,lwd=2,main=' ',ylab= '',xaxt='n',yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate[2: 2424],hg$osn1[2: 2424],ylim=c(-50,5000), type='l', col='#313695',
     lty=5,lwd=1,main=' ',ylab= '',xaxt='n',yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
#text(1020,1200,'1977', cex=1.3)
#text(9700,1200,'1997', cex=1.3)
par(new=T)
boxplot(box1_77,box1,Zonta1,ylim=c(-50,5000),
        col='#31369588', ylab=' ', range=F,
        boxwex=2700, xaxt='n',yaxt='n', xlim=c(rdate[2],rdate[2424]),
        at=c(c1,c2,c5))   #0.23,0.45
v_text<-c('10cm','15cm','10cm')
x=c(c1-2500,c2-541,c5+2500)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.)  # 10 c
par(new=T)
plot(rdate[2: 2424],media1[2: 2424],ylim=c(-50,5000), type='l', col='gray10',
     lwd=1.7, main=' ', xaxt='n',yaxt='n',
     ylab=' ',xlab= '', cex.lab=2 , 
     cex.main=1.7 , lty=1,cex.axis=1.6)

plot(rdate[2: 2424],hg$sn2[2: 2424],ylim=c(-50,5000), type='l', col='#4575b4',lwd=2,
     main='Box2',ylab= '',lty=3, xaxt='n',yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
 
x=c(c1-1000,c2-541,c5+500+950)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.) 
# 10 c#text(9700,1200,'1997', cex=1.2)
par(new=T)
plot(rdate[2: 2424],hg$dsn2[2: 2424],ylim=c(-50,5000), type='l', col='#4575b4',
     lty=1,lwd=2,main=' ',ylab= '',yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate[2: 2424],hg$osn2[2: 2424],ylim=c(-50,5000), type='l', col='#4575b4',
     lty=5,lwd=1,main=' ',ylab= '',yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
boxplot(box2_77,box2, Zonta2,ylim=c(-50,5000),
        col='#4575b488',xlim=c(rdate[2],rdate[2424]),
        at=c(c1,c2,c5),
        boxwex=2700,xaxt='n',ylab= '',yaxt='n')
par(new=T)
plot(rdate[2: 2424],media2[2: 2424],ylim=c(-50,5000), type='l', col='gray10',
     lwd=1.7, main=' ', 
     ylab='Hg (ng/g)', xlab= '',yaxt='n',
     cex.lab=2 , cex.main=1.7 , lty=1,cex.axis=1.6)


plot(rdate[2: 2424],hg$sn4[2: 2424], ylim=c(-50,5000), type='l',col='#abd9e9',lwd=2,main='Box4',
     xlab= '',ylab= '',yaxt='n', cex.lab=2 , cex.main=1.7 ,lty=3, cex.axis=1.6)
 x=c(c1-1000,c2-541,c5+500+950)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.)  # 10 c0 c
par(new=T)
plot(rdate[2: 2424],hg$dsn4[2: 2424], ylim=c(-50,5000),lty=1, type='l',col='#abd9e9',lwd=2,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate[2: 2424],hg$osn4[2: 2424], ylim=c(-50,5000),lty=5, type='l',
     col='#abd9e9',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7, cex.axis=1.6)
par(new=T)
boxplot(box4_77, box4, Zonta4, ylim=c(-50,5000),
        col='#abd9e988',xlim=c(rdate[2],rdate[2424]),at=c(c1,c2,c5),
        range=F,
        boxwex=2700,xaxt='n',ylab= '',yaxt='n')
par(new=T)
plot(rdate[2: 2424],media4[2: 2424],ylim=c(-50,5000), type='l', col='gray10',
     lwd=1.7, main=' ', 
     ylab='Hg (ng/g)',xlab= '', cex.lab=2 ,
     yaxt='n', cex.main=1.7 , lty=1,cex.axis=1.6)

plot(rdate[2: 2424],hg$sn3[2: 2424], ylim=c(-50,5000), type='l',col='#DDF26B',
     lwd=2,main='Box3', xlab= '', ylab= '', cex.lab=2 , 
     cex.main=1.7,lty=3,yaxt='n', cex.axis=1.6)


x=c(c1-1000,c2-541,c5+500+950)
y=c(3000,-40,3000)
text(x, y, v_text,cex=1.)  # 10 c
par(new=T)
plot(rdate[2: 2424],hg$dsn3[2: 2424], ylim=c(-50,5000), type='l',col='#DDF26B',
     lty=1,lwd=2,main=' ',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.7 ,yaxt='n', cex.axis=1.6)
par(new=T)
plot(rdate[2: 2424],hg$osn3[2: 2424], ylim=c(-50,5000),lty=5, 
     type='l',col='#DDF26B',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)

par(new=T)
boxplot(box3_77,box3,Zonta3,ylim=c(-50,5000),col='#DDF26B88',
        xlim=c(rdate[2],rdate[2424]),at=c(c1,c2,c5),
        ylab= '',boxwex=2700,xaxt='n',yaxt='n' , range=F)#
par(new=T)  
plot(rdate[2: 2424],media3[2: 2424],ylim=c(-50,5000), type='l', col='gray10',
     lwd=1.7, main=' ', ylab='Hg (ng/g)',xlab= '', cex.lab=2 ,
     yaxt='n', cex.main=1.7 , lty=1,cex.axis=1.6)

plot(rdate[2: 2424],hg$sn5[2: 2424], ylim=c(-50,5000), type='l',col='#e5e572',lwd=2, main='Box5',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.7 , lty=3,yaxt='n', cex.axis=1.6)
 x=c(c1-1000,c2-541,c5+500+950)
y=c(3000,-40,3000)
text(x, y, v_text,cex=1.)  # 10 

par(new=T)
plot(rdate[2: 2424],hg$dsn5[2: 2424], ylim=c(-50,5000), type='l',col='#e5e572',
     lty=1,lwd=2, main='Box5',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.7 ,yaxt='n', 
     cex.axis=1.6)
par(new=T)
plot(rdate[2: 2424],hg$osn5[2: 2424], ylim=c(-50,5000),lty=5, type='l',
     col='#e5e572',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)

par(new=T)
boxplot(box5_77,box5,Zonta5, ylim=c(-50,5000),col='#e5e57288',ylab= '',varwidth = F,
        xlim=c(rdate[2],rdate[2424]),at=c(c1,c2,c5), range=F,
        boxwex=2700,xaxt='n',yaxt='n')
par(new=T)
plot(rdate[2: 2424],media5[2: 2424],ylim=c(-50,5000), type='l',
     col='gray10',lwd=1.7, main=' ', 
     ylab='Hg (ng/g)',xlab= '', cex.lab=2 ,
     yaxt='n', cex.main=1.7 , lty=1,cex.axis=1.6)

 
#par(mar=c(3,5,2,0))   
plot(rdate[2: 2424],hg$sc6[2: 2424], ylim=c(-50,5000),
     type='l',col='#fed976',lwd=2,yaxt='n', main=' ',
     ylab=' ',xlab= '',xaxt='n',
     cex.lab=1.03 , lty=3, cex.main=1.7 , cex.axis=1.6)#
mtext('Hg (ng/g)', side = 2, line=3.4, cex=1.3)
 x=c(c1-1000,c2-541,c5+500+950)
y=c(4300,-40,4300)
text(x, y, v_text,cex=1.)  # 10 c

par(new=T)
plot(rdate[2: 2424],hg$dsc6[2: 2424], ylim=c(-50,5000), type='l',
     col='#fed976',lty=1,yaxt='n',lwd=2, main='Box6',
     ylab='Hg (ng/g)',xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)#
par(new=T)
plot(rdate[2: 2424], hg$osc6[2: 2424], ylim=c(-50,5000),lty=5, type='l',
     col='#fed976',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)
par(new=T)
boxplot(box6_77,box6,Zonta6, ylim=c(-50,5000),col='#fed97688', ylab=' ', 
          xlim=c(rdate[2],rdate[2424]),at=c(c1,c2,c5),range=F,
        boxwex=2700,xaxt='n',yaxt='n', outline=F)
par(new=T)
plot(rdate[2: 2424],media6[2: 2424],ylim=c(-50,5000), type='l', col='gray10',lwd=1.7, 
     main=' ', ylab='Hg (ng/g)',xlab= '', cex.lab=2, cex.main=1.7, 
     lty=1,cex.axis=1.6)

#par(mar=c(3,2,2,3))
plot(rdate[2: 2424],hg$sc7[2: 2424], ylim=c(-50,5000),type='l',ylab= '',col='#f79220',
     lwd=2,  main='Box7',lty=3,yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
 x=c(c1-1000,c2-541,c5+500)
y=c(2000,-40,2000)
text(x, y, v_text,cex=1.)  # 10 c
par(new=T)
plot(rdate[2: 2424],hg$dsc7[2: 2424], ylim=c(-50,5000),type='l',ylab= '',
     col='#f79220',lty=1,lwd=2,  main=' ',
     xlab= '', cex.lab=2 , cex.main=1.7 ,yaxt='n', cex.axis=1.6)
par(new=T)
plot(rdate[2: 2424],hg$osc7[2: 2424], ylim=c(-50,5000),lty=5,
     type='l',col='#f79220',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)
par(new=T)
boxplot(box7_77,box7,Zonta7,ylim=c(-50,5000),col='#f7922088',
        xlim=c(rdate[2],rdate[2424]),at=c(c1,c2,c5),
        ylab= '',boxwex=2700,xaxt='n',yaxt='n' , range=F)#
par(new=T)
plot(rdate[2: 2424],media7[2: 2424],ylim=c(-50,5000), type='l', col='gray10',
     lwd=1.7, main=' ', ylab='Hg (ng/g)',xlab= '',yaxt='n', 
     cex.lab=2 , cex.main=1.7 , lty=1,cex.axis=1.6)

plot(rdate[2: 2424],hg$ss8[2: 2424], ylim=c(-50,5000), type='l',ylab= '', 
     col='#f46d43',lwd=2, main='Box8',lty=3,yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
 x=c(c1-1000,c2-541,c5+500)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.) 
par(new=T)
plot(rdate[2: 2424],hg$dss8[2: 2424], ylim=c(-50,5000), type='l',ylab= '',yaxt='n',
     lty=1, col='#f46d43',lwd=2, main='Box8',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate[2: 2424],hg$oss8[2: 2424], ylim=c(-50,5000),lty=5,
     type='l',col='#f46d43',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', cex.main=1.7 , cex.axis=1.6)
par(new=T)
boxplot(box8_77, box8,Zonta8,ylim=c(-50,5000),col='#f46d4388',
        xlim=c(rdate[2],rdate[2424]),at=c(c1, c2,c5),
        boxwex=2700,xaxt='n',ylab= '', yaxt='n', range=F)
par(new=T)
plot(rdate[2: 2424],media8[2: 2424],ylim=c(-50,5000), type='l', col='gray10',
     lwd=1.7, main=' ', ylab='Hg (ng/g)',xlab= '', 
     cex.lab=2 ,yaxt='n', cex.main=1.7 , lty=1,cex.axis=1.6)

plot(rdate[2: 2424],hg$ss9[2: 2424], ylim=c(-50,5000), type='l',
     col='#d73027',ylab= '',lwd=2, main=' ',lty=3,yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)

x=c(c1-1000,c2-541,c5+500)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.) 
par(new=T)
plot(rdate[2: 2424],hg$dss9[2: 2424], ylim=c(-50,5000), type='l',col='#d73027',ylab= '',
     lty=1,lwd=2, main='Box9',yaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate[2: 2424],hg$oss9[2: 2424], ylim=c(-50,5000),lty=5, 
     type='l',col='#d73027',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,yaxt='n', 
     cex.main=1.7 , cex.axis=1.6)
par(new=T)
boxplot(box9_77, box9,Zonta9, ylim=c(-50,5000),col='#d7302788',
        xlim=c(rdate[2],rdate[2424]),at=c(c1, c2,c5),
        boxwex=2700,ylab= '',xaxt='n',yaxt='n', range=F)
par(new=T)
plot(rdate[2: 2424],media9[2: 2424],ylim=c(-50,5000), type='l', col='gray10',lwd=1.7,
     main=' ', ylab='Hg (ng/g)',xlab= '', cex.lab=2 ,yaxt='n', 
     cex.main=2 , lty=1,cex.axis=1.6)

plot(rdate[2: 2424],hg$ss10[2: 2424], ylim=c(-50,5000), 
     type='l',col='#a50028',
     ylab= '',lwd=2, main='Box10',lty=3,yaxt='n',xaxt='n',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
 
x=c(c1-1000,c2-541,c5+500)
y=c(1500,-40,1500)
text(x, y, v_text,cex=1.) 

par(new=T)
plot(rdate[2: 2424],hg$dss10[2: 2424], ylim=c(-50,5000),
     type='l',yaxt='n',xaxt='n',
     col='#a50028',lty=1,ylab= '',lwd=2, main='Box10',
     xlab= '', cex.lab=2 , cex.main=1.7 , cex.axis=1.6)
par(new=T)
plot(rdate[2: 2424],hg$oss10[2: 2424], ylim=c(-50,5000),lty=5, 
     type='l',col='#a50028',lwd=1,main=' ',
     xlab= '',ylab= '', cex.lab=2 ,xaxt='n',yaxt='n', 
     cex.main=1.7 , cex.axis=1.6)
par(new=T)
boxplot(box10_77,box10,Zonta10, ylim=c(-50,5000),xlim=c(rdate[2],rdate[2424]),
        at=c(c1,c2,c5), range=F,xaxt='n',
        col='#a5002888',boxwex=2700,xaxt='n',yaxt='n')
par(new=T)
plot(rdate[2: 2424],media10[2: 2424],ylim=c(-50,5000),
     type='l', col='gray10',
     lwd=1.7, main=' ', ylab='Hg (ng/g)',xlab= '', cex.lab=2,
      yaxt='n', cex.main=1.7 , lty=1,cex.axis=1.6)
dev.off()

head(rdate[2: 2424])
tail(rdate[2: 2424])
tail(rdate)
str(rdate)


#________________________________ Fine plot Sediment hg vs time ________________________________
