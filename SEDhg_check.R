setwd('C:\\Users\\Acer\\Desktop\\fin92bold\\f')
setwd('C:/Users/Acer/Dropbox/NNN61/')


#setwd('C:\\Users\\Acer\\Desktop\\fin92bold\\g')
#setwd('C:\\Users\\Acer\\Desktop\\baba\\Buona\\met')
#setwd('C:/Users/Acer/Desktop/baba/Buona/double_in/i')
#setwd('G:/Il mio Drive/MERCURIO/Venezia/NNN61/b')
#setwd('C:/Users/Acer/Dropbox/NNN61/MenoDep4/bobo3')
#G:\Il mio Drive\MERCURIO\Venezia\2017_Venice\fin87
#setwd('G:\\Il mio Drive\\MERCURIO\\Venezia\\2017_Venice\\fin87')
#setwd('C:/Users/Acer/Desktop/N615b')

DEPO_silt2<-read.csv("Silt_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_silt2)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

DEPO_POM2<-read.csv("POM_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_POM2)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

RESUS_silt2<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_silt2)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                     'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

RESUS_POM2<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_POM2)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

SEDhg2<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDhg2)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10') #ng/g


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

burial<-read.csv("Sediment_Burial_Velocity.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

par(mfrow=c(1,1))
plot(, ylim=c(0,100))
par(new=T)
plot(silts$wn1[2:50], ylim=c(0,100))


head(silts)

plot(POMs$sn5[500:2300])
mean(silts$wn5[2:30])

(RESUS_silt2$sn1+(burial$sn1/(100*365))*silts$sn1)

Vb_Si<-(burial/(100*365))*TOTs

median(834095.2 ,793949.4,594199.8, 749507.2, 763356.6, 764285.5 ,525681.4, 513500.8 ,415630.3 ,415393.2)

Vb_Si_box1<-Vb_Si$sn1
Vb_Si_box2<-Vb_Si$sn2
Vb_Si_box3<-Vb_Si$sn3
Vb_Si_box4<-Vb_Si$sn4
Vb_Si_box5<-Vb_Si$sn5
Vb_Si_box6<-Vb_Si$sc6
Vb_Si_box7<-Vb_Si$sc7
Vb_Si_box8<-Vb_Si$ss8
Vb_Si_box9<-Vb_Si$ss9
Vb_Si_box10<-Vb_Si$ss10

plot(Vb_Si_box1)      #net sediment depo in g m-2 y
plot(Vb_Si_box7)      #net sediment depo in g m-2 y


plot(SEDhg2$wn1, type='l', ylim=c(0,2000))
par(new=T)
plot(SEDhg2$sn1, type='l',col=2, ylim=c(0,2000))

plot(SEDhg$wn1, type='l', ylim=c(0,2000))
par(new=T)
plot(SEDhg$sn1, type='l',col=2, ylim=c(0,2000))

plot(SEDhg2$wn2, type='l', ylim=c(0,2000))
par(new=T)
plot(SEDhg2$sn2, type='l',col=2, ylim=c(0,2000))

plot(SEDhg2$wn3, type='l', ylim=c(0,2000))
par(new=T)
plot(SEDhg2$sn3, type='l',col=2, ylim=c(0,2000))

plot(SEDhg2$wn4, type='l', ylim=c(0,2000))
par(new=T)
plot(SEDhg2$sn4, type='l',col=2, ylim=c(0,2000))

plot(SEDhg2$wn5, type='l', ylim=c(0,2000))
par(new=T)
plot(SEDhg2$sn5, type='l',col=2, ylim=c(0,2000))

plot(SEDhg2$wc6, type='l', col='royalblue',ylim=c(0,6000))
par(new=T)
#plot(SEDhg$wc6, type='l', ylim=c(0,4000))
plot(SEDhg2$sc6, type='l',col=2, ylim=c(0,6000))


plot(SEDhg2$wc7, type='l', ylim=c(0,4000))
par(new=T)
plot(SEDhg2$sc7, type='l',col=2, ylim=c(0,4000))

plot(SEDhg2$ws8, type='l', ylim=c(0,2000))
par(new=T)
plot(SEDhg2$ss8, type='l',col=2, ylim=c(0,2000))



plot(SEDhg$wc6, type='l', ylim=c(0,8000))
par(new=T)
plot(SEDhg2$wc6, type='l', col=2, ylim=c(0,8000))

plot(SEDhg$wc7, type='l', ylim=c(0,8000))
par(new=T)
plot(SEDhg2$wc7, type='l', col=2, ylim=c(0,8000))

plot(SEDhg$wn2, type='l', ylim=c(0,8000))
par(new=T)
plot(SEDhg2$wn2, type='l', col=2, ylim=c(0,8000))





plot(RESUS_POM$sc6, type='l', ylim=c(0,.0008000))



plot(RESUS_POM2$sn1, type='l', col=3, ylim=c(0,.000008000))
par(new=T)
plot(RESUS_POM2$sn2, type='l', col=4, ylim=c(0,.000008000))
par(new=T)
plot(RESUS_POM2$sn3, type='l', col=6, ylim=c(0,.000008000))
par(new=T)
plot(RESUS_POM2$sn4, type='l', col=5, ylim=c(0,.000008000))
par(new=T)
plot(RESUS_POM2$sn5, type='l', col=7, ylim=c(0,.000008000))
par(new=T)
plot(RESUS_POM2$sc6, type='l', col=2, ylim=c(0,.000008000))
par(new=T)
plot(RESUS_POM2$sc7, type='l', col=1, ylim=c(0,.000008000)); max(RESUS_POM2$sc7)
par(new=T)
plot(RESUS_POM2$ss8, type='l', col=9, ylim=c(0,.000008000))
par(new=T)
plot(RESUS_POM2$ss9, type='l', col=8, ylim=c(0,.000008000))
par(new=T)
plot(RESUS_POM2$ss10, type='l', col=8, ylim=c(0,.000008000))


plot(RESUS_silt2$sn1, type='l', col=1, ylim=c(0,.0001000))
par(new=T)
plot(RESUS_silt2$sn2, type='l', col=2, ylim=c(0,.0001000)); max(RESUS_silt2$sn2)
par(new=T)
plot(RESUS_silt2$sn3, type='l', col=3, ylim=c(0,.0001000))
par(new=T)
plot(RESUS_silt2$sn4, type='l', col=4, ylim=c(0,.0001000))
par(new=T)
plot(RESUS_silt2$sn5, type='l', col=5, ylim=c(0,.0001000)); max(RESUS_silt2$sn5)
par(new=T)
plot(RESUS_silt2$sc6, type='l', col=6, ylim=c(0,.00010000)); max(RESUS_silt2$sc6)
par(new=T)
plot(RESUS_silt2$sc7, type='l', col=7, ylim=c(0,.0001000)); max(RESUS_silt2$sc7)
par(new=T)
plot(RESUS_silt2$ss8, type='l', col=8, ylim=c(0,.0001000))
par(new=T)
plot(RESUS_silt2$ss9, type='l', col=9, ylim=c(0,.0001000))
par(new=T)
plot(RESUS_silt2$ss10, type='l', col=10, ylim=c(0,.0001000)); max(RESUS_silt2$ss10)


plot(DEPO_silt2$wn1, type='l', col=1, ylim=c(0,40))
par(new=T)
plot(DEPO_silt2$wn2, type='l', col=2, ylim=c(0,40)); max(DEPO_silt2$sn2)
par(new=T)
plot(DEPO_silt2$wn3, type='l', col=3, ylim=c(0,40))
par(new=T)
plot(DEPO_silt2$wn4, type='l', col=4, ylim=c(0,40))
par(new=T)
plot(DEPO_silt2$wn5, type='l', col=5, ylim=c(0,40)); max(DEPO_silt2$sn5)
par(new=T)
plot(DEPO_silt2$wc6, type='l', col=6, ylim=c(0,40)); max(DEPO_silt2$sc6)
par(new=T)
plot(DEPO_silt2$wc7, type='l', col=7, ylim=c(0,40)); max(DEPO_silt2$sc7)
par(new=T)
plot(DEPO_silt2$ws8, type='l', col=8, ylim=c(0,40))
par(new=T)
plot(DEPO_silt2$ws9, type='l', col=9, ylim=c(0,40))
par(new=T)
plot(DEPO_silt2$ws10, type='l', col=10, ylim=c(0,40)); max(DEPO_silt2$ss10)



RESUS_silt2$sn1*silts$sn1


plot(DEPO_POM2$wn1, type='l', col=1, ylim=c(0,114))
par(new=T)
plot(DEPO_POM2$wn2, type='l', col=2, ylim=c(0,114)); max(DEPO_POM2$sn2)
par(new=T)
plot(DEPO_POM2$wn3, type='l', col=3, ylim=c(0,40))
par(new=T)
plot(DEPO_POM2$wn4, type='l', col=4, ylim=c(0,40))
par(new=T)
plot(DEPO_POM2$wn5, type='l', col=5, ylim=c(0,40)); max(DEPO_POM2$wn5)
par(new=T)
plot(DEPO_POM2$wc6, type='l', col=6, ylim=c(0,40)); max(DEPO_POM2$wc6)
par(new=T)
plot(DEPO_POM2$wc7, type='l', col=7, ylim=c(0,40)); max(DEPO_POM2$wc7)
par(new=T)
plot(DEPO_POM2$ws8, type='l', col=8, ylim=c(0,40))
par(new=T)
plot(DEPO_POM2$ws9, type='l', col=9, ylim=c(0,40))
par(new=T)
plot(DEPO_POM2$ws10, type='l', col=10, ylim=c(0,40)); max(DEPO_silt2$ss10)
