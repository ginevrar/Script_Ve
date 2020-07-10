# palette dal blu al giallo
#314675; #0F5577; #186B8C; #56B9B8
#setwd("/home/gi/Documents//Simulazioni/sim5")

#D9DF63","#005E8C",'black'

setwd('C:\\Users\\gi\\Desktop\\shyfem68_merc\\File_hydro\\')
wind<-read.table('wind_saline_2005.txt', header=F, sep=''); 
tail(wind)

v1<-as.Date.factor((wind$V5))
v2<-time(wind$V6)
.Date.factor((wind$V6))

wind$Data <- as.POSIXct(as.character(paste(wind$V5, wind$V6)),
                        format="%Y/%m/%d %H.%M.%S")

library(lubridate)
wind$Data <- with(wind, ymd(wind$V5) + hms(wind$V6))
head(wind$Data)

str(wind$V6)



wind2<-read.table('wind05_06.txt', header=T, sep=','); 

#setwd('C:\\Users\\gi\\Desktop\\shyfem68_merc\\\sim14')
setwd('C:\\Users\\gi\\Desktop\\shyfem68_merc\\File_hydro\\ireib5_bis')
setwd('C:\\Users\\Acer\\Desktop\\nuovi_test\\ireib5_sim81')


mod_Ve8<-read.table('fort.250', header=T, sep=','); 
names(mod_Ve8)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')                    
str(mod_Ve8)

mod_Ve7<-read.table('fort.257', header=T, sep=',');names(mod_Ve7)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       

mod_Ve6<-read.table('fort.258', header=T,sep=','); names(mod_Ve6)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       

mod_Ve5<-read.table('fort.262', header=T, sep=','); names(mod_Ve5)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       

mod_Ve4<-read.table('fort.266', header=T, sep=',');names(mod_Ve4)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       

mod_Ve3<-read.table('fort.270', header=T, sep=',');names(mod_Ve3)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       
 
mod_Ve2<-read.table('fort.275', header=T, sep=',');names(mod_Ve2)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       
 
mod_Ve1<-read.table('fort.281', header=T, sep=',');names(mod_Ve1)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       
 
#:::::::::::::::::::::::::::::::::::::: seconda sim :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#setwd('C:\\Users\\gi\\Desktop\\shyfem68_merc\\sim25')
setwd('C:\\Users\\gi\\Desktop\\shyfem68_merc\\File_hydro\\ireib2_bis')

mod_Ve8B<-read.table('fort.250', header=T, sep=','); names(mod_Ve8B)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')                    
 
mod_Ve7B<-read.table('fort.257', header=T, sep=',');names(mod_Ve7B)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       
 
mod_Ve6B<-read.table('fort.258', header=T,sep=','); names(mod_Ve6B)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       
 
mod_Ve5B<-read.table('fort.262', header=T, sep=','); names(mod_Ve5B)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       
 
mod_Ve4B<-read.table('fort.266', header=T, sep=',');names(mod_Ve4B)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       
 
mod_Ve3B<-read.table('fort.270', header=T, sep=',');names(mod_Ve3B)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       
 
mod_Ve2B<-read.table('fort.275', header=T, sep=',');names(mod_Ve2B)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       
 
mod_Ve1B<-read.table('fort.281', header=T, sep=',');names(mod_Ve1B)<-c('sec','nodo', 'depth', 'siltw', 'POMw', 'tauB')       

time.steps3 <- mod_Ve8$sec
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "2005-01-01")


png('TAU_data_model_MultipleSIMs_s_ireib5_2_wind.png',width = 21, height = 15,res=400,     # width = 32, height = 18,res=400,
    units = "cm")
par(mfrow=c(4,2),mar=c(3,3,1,1), 
    
    oma=c(0,1.3,.3,3), bty='n', mgp=c(2.5,0.8,0))


head(wind$Data[8206:8304])
tail(wind$Data[8206:8304])
tail(TEMPO[16416:16608])

as.POSIXct.Date(wind$Data)
plot(wind$Data[8206:8304])

seq(wind$Data[8206],wind$Data[8304])

plot(wind$V2[8206:8304], xaxt='n',type='l', lty=4,yaxt='n',
     xlab='',ylab='',col='darkgrey',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2[8206:8304]))
axis(4,ay,col='darkgrey')
par(new=T)
mtext('TAU (Pa)',side=2, cex=0.7, line=2.6)
tempo<-spm_Ve$tempo
axis.POSIXct(1, at=tempo, format="%d/%m/%y") #label the x axis by months
par(new=T)
plot(TEMPO[16416:16608],mod_Ve1$tauB[16416:16608], xaxt='n',type='l',xlab='',ylab='',
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.3)) 
par(new=T)
plot(TEMPO[16416:16608],mod_Ve1B$tauB[16416:16608], xaxt='n',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.30)) 
md1<-mean(mod_Ve1$depth)
lab1<-bquote(z == .(format(md1, digits = 2)))
text(TEMPO[16426],150,labels=lab1)
mtext("Suspended Particulate Matter (mg/l)", 3, outer = TRUE, line=1.8, cex=2,
      font=2)
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)

str(mod_Ve1B)
plot(wind$V2[8206:8304], xaxt='n',type='l', lty=4,yaxt='n',
     xlab='',ylab='',col='darkgrey',
     cex=1.2,ylim=c(0,12))
ay<-seq(0,max(wind$V2[8206:8304]))
axis(4,ay,col='darkgrey')
mtext('wind (m/s)',side=4, cex=0.7, line=2.6)
par(new=T)
plot(TEMPO[16416:16608],mod_Ve2$tauB[16416:16608] , xaxt='n',type='l',xlab='',ylab='',
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.50))
md2<-mean(mod_Ve2$depth)
lab2<-bquote(z == .(format(md2, digits = 2)))
text(TEMPO[16426],150,labels=lab2)
par(new=T)
plot(TEMPO[16416:16608],mod_Ve2B$tauB[16416:16608], xaxt='n',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.500)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)

plot(wind$V2[8206:8304], xaxt='n',type='l', lty=4,yaxt='n',
     xlab='',ylab='',col='darkgrey',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2[8206:8304]))
axis(4,ay,col='darkgrey')
par(new=T)
legend(spm_Ve$tempo[1],165,  lty=c(2,1,2,4),
       legend=c('ireib=5','ireib=2','wind forcing'),bty='n',
       col=c("#005E8C",'black',
             'darkgrey'), cex=1.15)
axis.POSIXct(1, at=tempo, format="%d/%m/%y %H:%M") #label the x axis by months
mtext('TAU (Pa)',side=2, cex=0.7, line=2.6)
par(new=T)
plot(TEMPO[16416:16608],mod_Ve3$tauB[16416:16608] , xaxt='n',type='l', xlab='',ylab='',
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.0))
md3<-mean(mod_Ve3$depth)
lab3<-bquote(z== .(format(md3, digits = 2)))
text(TEMPO[16590],150,labels=lab3)
par(new=T)
plot(TEMPO[16416:16608],mod_Ve3B$tauB[16416:16608], xaxt='n',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.0)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)

plot(wind$V2[8206:8304], xaxt='n',type='l', lty=4,yaxt='n',
     xlab='',ylab='',col='darkgrey',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2[8206:8304]))
axis(4,ay,col='darkgrey')
mtext('wind (m/s)',side=4, cex=0.7, line=2.6)
par(new=T)
plot(TEMPO[16416:16608],mod_Ve4$tauB[16416:16608] , 
     xaxt='n',type='l',xlab='',ylab='', #xlim=c(TEMPO[16416],TEMPO[16608]),
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.0))
md4<-mean(mod_Ve4$depth)
lab4<-bquote(z == .(format(md4, digits = 2)))
text(TEMPO[16426],150,labels=lab4)
par(new=T)
plot(TEMPO[16416:16608],mod_Ve4B$tauB[16416:16608], xaxt='n',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.0)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)

plot(wind$V2[8206:8304], xaxt='n',type='l', lty=4,yaxt='n',
     xlab='',ylab='',col='darkgrey',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2[8206:8304]))
axis(4,ay,col='darkgrey')
par(new=T)
mtext('TAU (Pa)',side=2, cex=0.7, line=2.6)
axis.POSIXct(1, at=tempo, format="%d/%m/%y %H:%M") #label the x axis by months
par(new=T)
plot(TEMPO[16416:16608],mod_Ve5$tauB[16416:16608] , xaxt='n',type='l',xlab='',ylab='',
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,0.5))
md5<-mean(mod_Ve5$depth)
lab5<-bquote(z == .(format(md5, digits = 2)))
text(TEMPO[16426],130,labels=lab5)
par(new=T)
plot(TEMPO[16416:16608],mod_Ve5B$tauB[16416:16608], xaxt='n',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,.50)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)

plot(wind$V2[8206:8304], xaxt='n',type='l', lty=4,yaxt='n',
     xlab='',ylab='',col='darkgrey',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2[8206:8304]))
axis(4,ay,col='darkgrey')
mtext('wind (m/s)',side=4, cex=0.7, line=2.6)

axis.POSIXct(1, at=tempo, format="%d/%m/%y %H:%M") #label the x axis by months
par(new=T)
plot(TEMPO[16416:16608],mod_Ve6$tauB[16416:16608] , xaxt='n',type='l', xlab='',ylab='',
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.0))
md6<-mean(mod_Ve6$depth)
lab6<-bquote(z== .(format(md6, digits = 2)))
text(TEMPO[16426],150,labels=lab6)
par(new=T)
plot(TEMPO[16416:16608],mod_Ve6B$tauB[16416:16608], xaxt='n',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)


plot(wind$V2[8206:8304], xaxt='n',type='l', lty=4,yaxt='n',
     xlab='',ylab='',col='darkgrey',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2[8206:8304]))
axis(4,ay,col='darkgrey')
par(new=T)

axis.POSIXct(1, at=tempo, format="%d/%m/%y %H:%M") #label the x axis by months
par(new=T)
plot(TEMPO[16416:16608],mod_Ve7$tauB[16416:16608] , xaxt='n',type='l', xlab='',ylab='',lwd=1.5, 
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.3))
md7<-mean(mod_Ve7$depth)
lab7<-bquote(z== .(format(md7, digits = 2)))
text(TEMPO[16426],130,labels=lab7)
par(new=T)
plot(TEMPO[16416:16608],mod_Ve7B$tauB[16416:16608], xaxt='n',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.30)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)


TT<-c(TEMPO[577],TEMPO[629],TEMPO[681],TEMPO[733],TEMPO[768])


plot(wind$V2[8206:8304], xaxt='n',type='l', lty=4,yaxt='n',
     xlab='',ylab='',col='darkgrey',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2[8206:8304]))
axis(4,ay,col='darkgrey')
mtext('wind (m/s)',side=4, cex=0.7, line=2.6)

par(new=T)
plot(TEMPO[16416:16608],mod_Ve8$tauB[16416:16608] , xaxt='n',type='l',xlab='',ylab='',lwd=1.5, 
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.30))
md8<-mean(mod_Ve8$depth)
lab8<-bquote(z== .(format(md8, digits = 2)))
text(TEMPO[16426],150,labels=lab8)
par(new=T)
plot(TEMPO[16416:16608],mod_Ve8B$tauB[16416:16608], xaxt='n',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.30)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)

dev.off()


png('TAU_data_model_MultipleSIMs_s_ireib5_2_wind_year.png',width = 21, height = 15,res=400,     # width = 32, height = 18,res=400,
    units = "cm")
par(mfrow=c(4,2),mar=c(3,3,1,1), 
    oma=c(0,1.3,.3,3), bty='n', mgp=c(2.5,0.8,0))

plot(TEMPO,mod_Ve1$tauB, xaxt='n',type='l',main='VE 01',
     xlab='',ylab='',lty=1,
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.3)) 
mtext('TAU (Pa)',side=2, cex=0.7, line=2.6)
par(new=T)
plot(wind$V2, xaxt='n',type='l', lty=2,lwd=1.7,yaxt='n',
     xlab='',ylab='',col='hotpink',
     cex=1.2,ylim=c(0,25))
ay<-seq(0,max(wind$V2))
axis(4,ay,col='hotpink')
par(new=T)
plot(TEMPO,mod_Ve1B$tauB, type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.30)) 
md1<-mean(mod_Ve1$depth)
lab1<-bquote(z == .(format(md1, digits = 2)))
text(TEMPO[16426],150,labels=lab1)
mtext("Suspended Particulate Matter (mg/l)", 3, outer = TRUE, line=1.8, cex=2,
      font=2)
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)
par(new=T)

tempo<-spm_Ve$tempo
axis.POSIXct(1, at=tempo, format="%d/%m/%y") #label the x axis by months

plot(TEMPO,mod_Ve2$tauB, xaxt='n',main='VE 02',type='l',xlab='',ylab='',
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.50))
md2<-mean(mod_Ve2$depth)
lab2<-bquote(z == .(format(md2, digits = 2)))
text(TEMPO[16426],150,labels=lab2)
par(new=T)
plot(wind$V2, xaxt='n',type='l', lty=2,lwd=1.7,yaxt='n',
     xlab='',ylab='',col='hotpink',
     cex=1.2)#,ylim=c(0,200))
mtext('wind (m/s)',side=4, cex=0.7, line=2.6)
ay<-seq(0,max(wind$V2))
axis(4,ay,col='hotpink')
legend(spm_Ve$tempo[1],165,  lty=c(2,1,2,4),
       legend=c('ireib=5','ireib=2','wind forcing'),bty='n',
       col=c("#005E8C",'black',
             'hotpink'), cex=1.15)
par(new=T)
plot(TEMPO,mod_Ve2B$tauB, type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.500)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)
#axis.POSIXct(1, at=tempo, format="%d/%m/%y %H:%M") #label the x axis by months

plot(TEMPO,mod_Ve3$tauB ,main='VE 03', xaxt='n',type='l', xlab='',ylab='',
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.0))
md3<-mean(mod_Ve3$depth)
lab3<-bquote(z== .(format(md3, digits = 2)))
text(TEMPO[16590],150,labels=lab3)
par(new=T)
plot(wind$V2, xaxt='n',type='l', lty=2,lwd=1.7,yaxt='n',
     xlab='',ylab='',col='hotpink',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2))
axis(4,ay,col='hotpink')
par(new=T)
plot(TEMPO,mod_Ve3B$tauB, type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.0)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)
mtext('TAU (Pa)',side=2, cex=0.7, line=2.6)

plot(TEMPO,mod_Ve4$tauB,type='l',xlab='',ylab='', #xlim=c(TEMPO[16416],TEMPO[16608]),
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.0))
md4<-mean(mod_Ve4$depth)
lab4<-bquote(z == .(format(md4, digits = 2)))
text(TEMPO[16426],150,labels=lab4)
par(new=T)
plot(wind$V2, xaxt='n',type='l', lty=2,lwd=1.7,yaxt='n',
     xlab='',ylab='',col='hotpink',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2))
axis(4,ay,col='hotpink')
par(new=T)
mtext('wind (m/s)',side=4, cex=0.7, line=2.6)
axis.POSIXct(1, at=tempo, format="%d/%m/%y %H:%M") #label the x axis by months
par(new=T)
plot(TEMPO,mod_Ve4B$tauB, xaxt='n',main='Ve 04',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.0)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)



plot(TEMPO,mod_Ve5$tauB ,main='VE 05', type='l',xlab='',ylab='',
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,0.8))
md5<-mean(mod_Ve5$depth)
lab5<-bquote(z == .(format(md5, digits = 2)))
mtext('TAU (Pa)',side=2, cex=0.7, line=2.6)
text(TEMPO[16426],130,labels=lab5)
par(new=T)
plot(wind$V2, xaxt='n',type='l', lty=2,lwd=1.7,yaxt='n',
     xlab='',ylab='',col='hotpink',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2))
axis(4,ay,col='hotpink')
axis.POSIXct(1, at=tempo, format="%d/%m/%y %H:%M") #label the x axis by months
par(new=T)
plot(TEMPO,mod_Ve5B$tauB, xaxt='n',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,.80)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)

plot(TEMPO,mod_Ve6$tauB ,main='VE 06', type='l', xlab='',ylab='',
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.0))
md6<-mean(mod_Ve6$depth)
lab6<-bquote(z== .(format(md6, digits = 2)))
text(TEMPO[16426],150,labels=lab6)
par(new=T)
plot(wind$V2, xaxt='n',type='l', lty=2,lwd=1.7,yaxt='n',
     xlab='',ylab='',col='hotpink',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2))
axis(4,ay,col='hotpink')
mtext('wind (m/s)',side=4, cex=0.7, line=2.6)
par(new=T)
plot(TEMPO,mod_Ve6B$tauB,type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)



plot(TEMPO,mod_Ve7$tauB, type='l', xlab='',ylab='',lwd=1.5, 
     col='#005E8C', pch='*', cex=1.2, ylim=c(0,1.3))
md7<-mean(mod_Ve7$depth)
lab7<-bquote(z== .(format(md7, digits = 2)))
text(TEMPO[16426],130,labels=lab7)
par(new=T)
plot(wind$V2, xaxt='n',type='l', lty=2,lwd=1.7,yaxt='n',
     xlab='',ylab='',col='hotpink',
     cex=1.2)#,ylim=c(0,200))
axis.POSIXct(1, at=tempo, format="%d/%m/%y %H:%M") #label the x axis by months
ay<-seq(0,max(wind$V2))
axis(4,ay,col='hotpink')
par(new=T)
plot(TEMPO,mod_Ve7B$tauB,main='VE 07', xaxt='n',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.30)) 
mtext('TAU (Pa)',side=2, cex=0.7, line=2.6)
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)


plot(TEMPO,mod_Ve8$tauB  , type='l',xlab='',ylab='',lwd=1.5, 
     col='#005E8C', pch='*',main='VE 08', cex=1.2, ylim=c(0,1.30))
md8<-mean(mod_Ve8$depth)
lab8<-bquote(z== .(format(md8, digits = 2)))
text(TEMPO[16426],150,labels=lab8)
par(new=T)
plot(wind$V2, xaxt='n',type='l', lty=2,lwd=1.7,yaxt='n',
     xlab='',ylab='',col='hotpink',
     cex=1.2)#,ylim=c(0,200))
ay<-seq(0,max(wind$V2))
axis(4,ay,col='hotpink')
mtext('wind (m/s)',side=4, cex=0.7, line=2.6)
par(new=T)
plot(TEMPO,mod_Ve8B$tauB, xaxt='n',type='l',xlab='',ylab='',
     col='black',lty=2, pch='*', cex=1.2, ylim=c(0,1.30)) 
abline(h=0.2, col='gray',lty=2)
abline(h=0.4, col='darkgray',lty=2)


dev.off()
getwd()