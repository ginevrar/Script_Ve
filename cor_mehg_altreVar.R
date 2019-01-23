setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')

mehg<-read.csv('Methyl_Hg.csv', header=FALSE, skip = 1,sep = ",", dec=".")
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')


burial_sed<-read.csv("Sediment_Burial_Velocity.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(burial_sed)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

POM_perc<-POMs/TOTs*100
str(POMs$sn1)

mehg_sed<-c(mehg$sn1,mehg$sn2,mehg$sn3,mehg$sn4,mehg$sn5,mehg$sc6,mehg$sc7,mehg$ss8,mehg$ss9,mehg$ss10)

burial_sed<-c(bur$sn1,bur$sn2,bur$sn3,bur$sn4,bur$sn5,bur$sc6,bur$sc7,bur$ss8,bur$ss9,bur$ss10)
POM_per<-c(POM_perc$sn1,POM_perc$sn2,POM_perc$sn3,POM_perc$sn4,POM_perc$sn5,POM_perc$sc6,POM_perc$sc7,POM_perc$ss8,POM_perc$ss9,POM_perc$ss10)

tot_sed<-c(TOTs$sn1,TOTs$sn2,TOTs$sn3,TOTs$sn4,TOTs$sn5,TOTs$sc6,TOTs$sc7,TOTs$ss8,TOTs$ss9,TOTs$ss10)
POM_w<-c(POMs$wn1,POMs$wn2,POMs$wn3,POMs$wn4,POMs$wn5,POMs$wc6,POMs$wc7,POMs$ws8,POMs$ws9,POMs$ws10)

str(burial_sed)
str(mehg_sed)
str(POM_perc)


mean_mehg_sed<-c(mean(mehg$sn1[1298:1309]),mean(mehg$sn2[1298:1309]),mean(mehg$sn3[1298:1309]),
                 mean(mehg$sn4[1298:1309]),mean(mehg$sn5[1298:1309]),mean(mehg$sc6[1298:1309]),
                 mean(mehg$sc7[1298:1309]),mean(mehg$ss8[1298:1309]),mean(mehg$ss9[1298:1309]),
                 mean(mehg$ss10[1298:1309]))

kmet<-c(0.029,0.029,0.006830772,0.029,0.0275,0.0275,0.019125,0.019125,0.019125,0.019125)
PP<-c(0.8, 1,0.7, 1.20016,1.36602,1.2,1.2,  1.9,1.2,  0.451406148)
      


cor.test(mehg_sed,burial_sed)
cor.test(mehg_sed,POM_per)
cor.test(mehg_sed,tot_sed)
cor.test(mean_mehg_sed,kmet)
cor.test(mean_mehg_sed,PP)
cor.test(mehg_sed,POM_w)

OC_perc