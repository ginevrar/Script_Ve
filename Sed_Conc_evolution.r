setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10')     #sim_cl

hg<-read.csv('Total_Hg.csv', skip=1,header=FALSE)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

SEDhg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDhg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')#ng/g


sands<-read.csv("Sands.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sands)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

#fraction of POM
fPOM  <-POMs/TOTs
fsilt <-silts/TOTs

str(POMs)

POM_perc<-POMs/TOTs*100

time.steps <- hg$time
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

str(rdate)

rdate[1095]
silts[1095,]
POMs[1095,]

POMs[1083,]
rdate[1099]

rdate[1090]
POMs[1099,]
silts[1099,]

rdate[1239]
POMs[1238,]
silts[1238,]


silts$wn2[1099]

  rdate[1238]
POMs[1238,]
silts[1238,]

POMs[2,]

plot(silts$wn1)
#plot(silts$sn1[1083:1095])
plot(silts$wn2)
plot(silts$wn3)
plot(silts$wn4)
plot(silts$wn5)
plot(silts$wc6)
plot(silts$wc7)
plot(silts$ws8)
plot(silts$ws9)
plot(silts$ws10)


POM_perc<-POMs/TOTs*100

png('solids_sed_PERC_eeeeeEEt_bishilm.png',width = 21, height = 29,
    units = "cm", res=400)

par(mfrow=c(10,3),mar=c(1,1,1,1),
    oma=c(2.3,5.3,1.5,0), bty='n')

plot(rdate,POMs$sn1/TOTs$sn1,col='green',main=' ',type='l', lwd=2,ylim=c(0,1))
mtext('layer A',side=3, lty=.6)
par(new=T)
plot(rdate,silts$sn1/TOTs$sn1,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$sn1/TOTs$sn1,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

mtext(text='box1',side=2, line=2.7, las=2)

plot(rdate,POMs$dsn1/TOTs$dsn1,col='green',main=' ',type='l', lwd=2,ylim=c(0,1))
mtext('layer B',side=3, lty=.6)
par(new=T)
plot(rdate,silts$dsn1/TOTs$dsn1,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$dsn1/TOTs$dsn1,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))  

plot(rdate, POMs$osn1/TOTs$osn1,col='green',type='l', lwd=2, lty=2,ylim=c(0,1))
mtext('layer C',side=3, lty=.6)
par(new=T)
plot(rdate, silts$osn1/TOTs$osn1,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$osn1/TOTs$osn1,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$sn2/TOTs$sn2,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$sn2/TOTs$sn2,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$sn2/TOTs$sn2,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))
mtext(text='box2',side=2, line=2.7, las=2)

plot(rdate,POMs$dsn2/TOTs$dsn2,col='green',main=' ',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$dsn2/TOTs$dsn2,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$dsn2/TOTs$dsn2,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))


plot(rdate,POMs$osn2/TOTs$osn2,col='green',main=' ',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate, silts$osn2/TOTs$osn2,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$osn2/TOTs$osn2,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))


plot(rdate,POMs$sn4/TOTs$sn4,col='green',main=' ',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$sn4/TOTs$sn4,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$sn4/TOTs$sn4,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

mtext(text='box4',side=2, line=2.7, las=2)

plot(rdate,POMs$dsn4/TOTs$dsn4,col='green',main=' ',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$dsn4/TOTs$dsn4,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$dsn4/TOTs$dsn4,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$osn4/TOTs$osn4,col='green',main=' ',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate, silts$osn4/TOTs$osn4,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$osn4/TOTs$osn4,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$sn3/TOTs$sn3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$sn3/TOTs$sn3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$sn3/TOTs$sn3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))
mtext(text='box3',side=2, line=2.7, las=2)

plot(rdate,POMs$dsn3/TOTs$dsn3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$dsn3/TOTs$dsn3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$dsn3/TOTs$dsn3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$osn3/TOTs$osn3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate, silts$osn3/TOTs$osn3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$osn3/TOTs$osn3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$sn5/TOTs$sn5,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$sn5/TOTs$sn5,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$sn5/TOTs$sn5,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

mtext(text='box5',side=2, line=2.7, las=2)

plot(rdate,POMs$dsn5/TOTs$dsn5,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$dsn5/TOTs$dsn5,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$dsn5/TOTs$dsn5,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$osn5/TOTs$osn5,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate, silts$osn5/TOTs$osn5,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$osn5/TOTs$osn5,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$sc6/TOTs$sc6,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$sc6/TOTs$sc6,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$sc6/TOTs$sc6,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

mtext(text='box6',side=2, line=2.7, las=2)

plot(rdate,POMs$dsc6/TOTs$dsc6,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$dsc6/TOTs$dsc6,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$dsc6/TOTs$dsc6,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$osc6/TOTs$osc6,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate, silts$osc6/TOTs$osc6,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$osc6/TOTs$osc6,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$sc7/TOTs$sc7,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$sc7/TOTs$sc7,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$sc7/TOTs$sc7,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

mtext(text='box7',side=2, line=2.7, las=2)

plot(rdate,POMs$dsc7/TOTs$dsc7,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$dsc7/TOTs$dsc7,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$dsc7/TOTs$dsc7,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$osc7/TOTs$osc7,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate, silts$osc7/TOTs$osc7,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$osc7/TOTs$osc7,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))  

plot(rdate,POMs$ss8/TOTs$ss8,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$ss8/TOTs$ss8,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$ss8/TOTs$ss8,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))
mtext(text='box8',side=2, line=2.7, las=2)

plot(rdate,POMs$dss8/TOTs$dss8,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$dss8/TOTs$dss8,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$dss8/TOTs$dss8,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$oss8/TOTs$oss8,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate, silts$oss8/TOTs$oss8,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$oss8/TOTs$oss8,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$ss9/TOTs$ss9,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$ss9/TOTs$ss9,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$ss9/TOTs$ss9,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))
mtext(text='box9',side=2, line=2.7, las=2)

plot(rdate,POMs$dss9/TOTs$dss9,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$dss9/TOTs$dss9,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$dss9/TOTs$dss9,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$oss9/TOTs$oss9,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate, silts$oss9/TOTs$oss9,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$oss9/TOTs$oss9,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))  

plot(rdate,POMs$ss10/TOTs$ss10,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$ss10/TOTs$ss10,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$ss10/TOTs$ss10,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))
mtext(text='box10',side=2, line=2.7, las=2)

plot(rdate,POMs$dss10/TOTs$dss10,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate,silts$dss10/TOTs$dss10,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$dss10/TOTs$dss10,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))

plot(rdate,POMs$oss10/TOTs$oss10,col='green',main='',type='l', lwd=2,ylim=c(0,1))
par(new=T)
plot(rdate, silts$oss10/TOTs$oss10,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
plot(rdate,sands$oss10/TOTs$oss10,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1))
par(new=T)
 dev.off()


png('solids_sed_conc_fin92b__oks6_eeeeeet4i_.png',width = 21, height = 29,
    units = "cm", res=400)
par(mfrow=c(10,3),mar=c(1,1,1,1),
    oma=c(2.3,5.3,1.5,0), bty='n')
plot(rdate,POMs$sn1/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
mtext('layer A',side=3, lty=.6)
par(new=T)
plot(rdate,silts$sn1/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$sn1/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$sn1/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
mtext(text='box1',side=2, line=2.7, las=2)

plot(rdate,POMs$dsn1/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
mtext('layer B',side=3, lty=.6)
par(new=T)
plot(rdate,silts$dsn1/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$dsn1/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$dsn1/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate, POMs$osn1/10^3,col='green',type='l', lwd=2, lty=2,ylim=c(0,1500))
mtext('layer C',side=3, lty=.6)
par(new=T)
plot(rdate, silts$osn1/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$osn1/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$osn1/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$sn2/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$sn2/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$sn2/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$sn2/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
mtext(text='box2',side=2, line=2.7, las=2)

plot(rdate,POMs$dsn2/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$dsn2/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$dsn2/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$dsn2/10^3, col='black', type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$osn2/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate, silts$osn2/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$osn2/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$osn2/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))


plot(rdate,POMs$sn4/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$sn4/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$sn4/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$sn4/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
mtext(text='box4',side=2, line=2.7, las=2)

plot(rdate,POMs$dsn4/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$dsn4/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$dsn4/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$dsn4/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$osn4/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate, silts$osn4/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$osn4/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$osn4/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$sn3/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$sn3/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$sn3/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$sn3/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
mtext(text='box3',side=2, line=2.7, las=2)

plot(rdate,POMs$dsn3/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$dsn3/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$dsn3/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$dsn3/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$osn3/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate, silts$osn3/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$osn3/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$osn3/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$sn5/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$sn5/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$sn5/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$sn5/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
mtext(text='box5',side=2, line=2.7, las=2)

plot(rdate,POMs$dsn5/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$dsn5/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$dsn5/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$dsn5/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$osn5/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate, silts$osn5/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$osn5/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$osn5/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$sc6/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$sc6/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$sc6/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$sc6/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
mtext(text='box6',side=2, line=2.7, las=2)

plot(rdate,POMs$dsc6/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$dsc6/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$dsc6/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$dsc6/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$osc6/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate, silts$osc6/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$osc6/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$osc6/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$sc7/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$sc7/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$sc7/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$sc7/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
mtext(text='box7',side=2, line=2.7, las=2)

plot(rdate,POMs$dsc7/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$dsc7/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$dsc7/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$dsc7/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$osc7/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate, silts$osc7/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$osc7/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$osc7/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$ss8/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$ss8/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$ss8/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$ss8/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
mtext(text='box8',side=2, line=2.7, las=2)

plot(rdate,POMs$dss8/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$dss8/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$dss8/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$dss8/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$oss8/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate, silts$oss8/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$oss8/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$oss8/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$ss9/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$ss9/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$ss9/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$ss9/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
mtext(text='box9',side=2, line=2.7, las=2)

plot(rdate,POMs$dss9/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$dss9/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$dss9/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$dss9/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$oss9/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate, silts$oss9/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$oss9/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$oss9/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))


plot(rdate,POMs$ss10/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$ss10/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$ss10/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$ss10/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
mtext(text='box10',side=2, line=2.7, las=2)

plot(rdate,POMs$dss10/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate,silts$dss10/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$dss10/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$dss10/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))

plot(rdate,POMs$oss10/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
par(new=T)
plot(rdate, silts$oss10/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,sands$oss10/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
par(new=T)
plot(rdate,TOTs$oss10/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
dev.off()
