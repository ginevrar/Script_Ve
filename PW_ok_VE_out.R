
setwd('C:/Users/Ginevra/Dropbox/2017_Venice')
art<-read.table('ARTISTA.txt', header=T)
str(art)

art$PW_ngL

pw2_2001<-art[(art$box==2),]
pw4_2001<-art[(art$box==4),]
pw6_2001<-art[(art$box==6),]
pw9_2001<-art[(art$box==9),]
pw10_2001<-art[(art$box==10),]

## tango solo dati stazione B02

pw2_2001<-c(90,30,90,1,1)


summary(pw2_2001$PW_ngL)

dati_pw1<-c(6.07 , 5.30, 5.30, 6.67,3.5, 5.47, 5.90, 8.72, 11.28)   # box1  PW guedron et al. 2012

dati_pw2<-c( 12.69 ,13.78 , 8.26, 13.45, 10.3823,	41.53,6.222,	12.51)# box2  PW guedron e
             

dati_pw6<-c(7.42,29.09,3.01,5.62)               #Kim et al 2011
dati_pw7<-c(7.02065,3.00885,2.20649,4.41298)  #Kim et al 2011


setwd('C:/Users/Ginevra/Dropbox/2017_Venice/114/Buona/nuoviin2')
setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice/res_eutr5')

hgD<-read.csv('Dissolved_Divalent_Hg.csv',skip=1)
names(hgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

mehgD<-read.csv('Dissolved_Methyl_Hg.csv',skip=1)
names(mehgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

time.steps <- hgD[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate

png('Boxes3_6_7_PoreW_53.png',width = 740, height = 480, units = "px")
par(mfrow=c(2,2), mar=c(3,4.5,2,0))
plot(rdate[1200:1333],hgD$sn1[1200:1333],ylim=c(0,20), type='l', 
     col='#4575b4',lwd=2,main='Box1',ylab= 'HgD (ng/L)',
     xlab= '', cex.lab=2.2 , cex.main=2.2 , cex.axis=2.2)
par(new=T)
boxplot(dati_pw1,ylim=c(0,20),col='#4575b477',range=F,
        boxwex=.4,xaxt='n',ylab= '',yaxt='n')
plot(rdate[1200:1333],hgD$sn2[1200:1333],ylim=c(0,90), type='l', 
     col='#4575b4',lwd=2,main='Box2',ylab= '',
     xlab= '', cex.lab=2.2 , cex.main=2.2 , cex.axis=2.2)
par(new=T)
boxplot(pw2_2001, dati_pw2,ylim=c(0,90),col='#4575b477',range=F,
        boxwex=.4,xaxt='n',ylab= '',yaxt='n')

plot(rdate[1200:1333],hgD$sc6[1200:1333], ylim=c(0,30), type='l',col='#fed976',lwd=2, main='Box6',
     ylab='HgD (ng/L)',xlab= '', cex.lab=2.2 , cex.main=2.2 , cex.axis=2.2)#
par(new=T)
boxplot(dati_pw6,ylim=c(0,30),col='#fed97677', 
        ylab=' ', boxwex=.4,xaxt='n',yaxt='n')

plot(rdate[1200:1333],hgD$sc7[1200:1333], ylim=c(0,20),type='l',ylab= '',col='#f79220',lwd=2,  main='Box7',
     xlab= '', cex.lab=2.2 , cex.main=2.2 , cex.axis=2.2)
par(new=T)
boxplot(dati_pw7,ylim=c(0,20),col='#f7922077',ylab= '',boxwex=.4,xaxt='n',yaxt='n')#
dev.off()

mehg_pW6<-c(0.2049165,  0.185846,  0.138245,  0.111198, 0.1624755,
            0.3145665, 0.1694845,  0.173935)    ## 2009 CORILA
mehg_pW2<-c(0.03,0.75,.07, 0.18,.40, 0.02,.13, 0.09) 
mehg_pW1<-c( 0.38, 	 1.21,	 0.54,  0.44, 	 1.52, 	 0.66,
             0.09,	 0.18, 	 0.15)



png('Boxes3_6_7_PoreW_mehg.png',width = 740, height = 480, units = "px")
par(mfrow=c(1,3), mar=c(3,4.5,2,0))
plot(rdate[1200:1333],mehgD$sn1[1200:1333],ylim=c(0,1.5), type='l', 
     col='#313695',lwd=2,main='Box1',ylab= 'MeHg (ng/L)',
     xlab= '', cex.lab=2.2 , cex.main=2.2 , cex.axis=2.2)
par(new=T)
boxplot(mehg_pW1,ylim=c(0,1.5),col='#31369577',range=F,
        boxwex=.4,xaxt='n',ylab= '',yaxt='n')
par(mar=c(3,3,2,1))

plot(rdate[1200:1333],mehgD$sn2[1200:1333],ylim=c(0,1), type='l', 
     col='#4575b4',lwd=2,main='Box2',ylab= ' ',
     xlab= '', cex.lab=2.2 , cex.main=2.2 , cex.axis=2.2)
par(new=T)
boxplot(mehg_pW2, ylim=c(0,1),col='#4575b477',range=F,
        boxwex=.4,xaxt='n',ylab= '',yaxt='n')
par(mar=c(3,3,2,1))

plot(rdate[1200:1333],mehgD$sc6[1200:1333], ylim=c(0,1), type='l',col='#fed976',lwd=2, main='Box6',
     ylab='',xlab= '', cex.lab=2.2 , cex.main=2.2 , cex.axis=2.2)#
par(new=T)
boxplot(mehg_pW6,ylim=c(0,1),col='#fed97677', ylab=' ', boxwex=.4,xaxt='n',yaxt='n')

dev.off()
#plot(empty10_v05, ylim=c(0,35

#plot(empty10_v05, ylim=c(0,35

