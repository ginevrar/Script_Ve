setwd('C:\\Users\\gi\\Downloads')
setwd('C:\\Users\\gi\\Dropbox\\year')

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

OM<-read.csv('Organic_Matter.csv', skip=1, header = T)
names(OM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

silt<-read.csv('Silts_fines.csv', skip=1, header = T)
names(silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

burial<-read.csv('Sediment_burial_velocity.csv', skip=1, header = T)
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

mehg_layerA<-c(mehg$sn1[72:122],mehg$sn2[72:122],mehg$sn3[72:122],mehg$sn4[72:122],mehg$sn5[72:122],
               mehg$sc6[72:122],mehg$sc7[72:122],mehg$ss8[72:122], mehg$ss9[72:122], mehg$ss10[72:122])

silt_layerA<-c(silt$sn1[72:122],silt$sn2[72:122],silt$sn3[72:122],silt$sn4[72:122],silt$sn5[72:122],
               silt$sc6[72:122],silt$sc7[72:122],silt$ss8[72:122], silt$ss9[72:122], silt$ss10[72:122])

hg_layerA<-c(hg$sn1[72:122],hg$sn2[72:122],hg$sn3[72:122],hg$sn4[72:122],hg$sn5[72:122],
               hg$sc6[72:122],hg$sc7[72:122],hg$ss8[72:122], hg$ss9[72:122], hg$ss10[72:122])

OM_layerA<-c(OM$sn1[72:122],OM$sn2[72:122],OM$sn3[72:122],
             OM$sn4[72:122],OM$sn5[72:122],OM$sc6[72:122],
             OM$sc7[72:122],OM$ss8[72:122], OM$ss9[72:122], OM$ss10[72:122])

OM_water<-c(OM$wn1[72:122],OM$wn2[72:122],OM$wn3[72:122],
             OM$wn4[72:122],OM$wn5[72:122],OM$wc6[72:122],
             OM$wc7[72:122],OM$ws8[72:122], OM$ws9[72:122], OM$ws10[72:122])

burial_layerA<-c(burial$sn1[72:122],burial$sn2[72:122],
                 burial$sn3[72:122],burial$sn4[72:122],
                 burial$sn5[72:122],burial$sc6[72:122],
                 burial$sc7[72:122],burial$ss8[72:122],
                burial$ss9[72:122], burial$ss10[72:122])

burial_layerA_70_90<-c(burial$sn1[72:90],burial$sn2[72:90],
                 burial$sn3[72:90],burial$sn4[72:90],
                 burial$sn5[72:90],burial$sc6[72:90],
                 burial$sc7[72:90],burial$ss8[72:90],
                 burial$ss9[72:90], burial$ss10[72:90])

silt_layerA_70_90<-c(silt$sn1[72:90],silt$sn2[72:90],
                       silt$sn3[72:90],silt$sn4[72:90],
                       silt$sn5[72:90],silt$sc6[72:90],
                       silt$sc7[72:90],silt$ss8[72:90],
                       silt$ss9[72:90], silt$ss10[72:90])


OM_layerA_70_90<-c(OM$sn1[72:90],OM$sn2[72:90],
                       OM$sn3[72:90],OM$sn4[72:90],
                       OM$sn5[72:90],OM$sc6[72:90],
                       OM$sc7[72:90],OM$ss8[72:90],
                       OM$ss9[72:90], OM$ss10[72:90])

OM_water_70_90<-c(OM$wn1[72:90],OM$wn2[72:90],
                   OM$wn3[72:90],OM$wn4[72:90],
                   OM$wn5[72:90],OM$wc6[72:90],
                   OM$wc7[72:90],OM$ws8[72:90],
                   OM$ws9[72:90], OM$ws10[72:90])

hg_layerA_70_90<-c(hg$sn1[72:90],hg$sn2[72:90],
                       hg$sn3[72:90],hg$sn4[72:90],
                       hg$sn5[72:90],hg$sc6[72:90],
                       hg$sc7[72:90],hg$ss8[72:90],
                       hg$ss9[72:90], hg$ss10[72:90])


mehg_layerA_70_90<-c(mehg$sn1[72:90],mehg$sn2[72:90],
                       mehg$sn3[72:90],mehg$sn4[72:90],
                       mehg$sn5[72:90],mehg$sc6[72:90],
                       mehg$sc7[72:90],mehg$ss8[72:90],
                       mehg$ss9[72:90], mehg$ss10[72:90])
rdate[92:102]
burial_layerA_90_2002<-c(burial$sn1[92:104],burial$sn2[92:104],
                       burial$sn3[92:104],burial$sn4[92:104],
                       burial$sn5[92:104],burial$sc6[92:104],
                       burial$sc7[92:104],burial$ss8[92:104],
                       burial$ss9[92:104], burial$ss10[92:104])


OM_layerA_90_2002<-c(OM$sn1[92:104],OM$sn2[92:104],
                   OM$sn3[92:104],OM$sn4[92:104],
                   OM$sn5[92:104],OM$sc6[92:104],
                   OM$sc7[92:104],OM$ss8[92:104],
                   OM$ss9[92:104], OM$ss10[92:104])

OM_water_90_2002<-c(OM$wn1[92:104],OM$wn2[92:104],
                     OM$wn3[92:104],OM$wn4[92:104],
                     OM$wn5[92:104],OM$wc6[92:104],
                     OM$wc7[92:104],OM$ws8[92:104],
                     OM$ws9[92:104], OM$ws10[92:104])

hg_layerA_90_2002<-c(hg$sn1[92:104],hg$sn2[92:104],
                   hg$sn3[92:104],hg$sn4[92:104],
                   hg$sn5[92:104],hg$sc6[92:104],
                   hg$sc7[92:104],hg$ss8[92:104],
                   hg$ss9[92:104], hg$ss10[92:104])

rdate[92:104]
mehg_layerA_90_2002<-c(mehg$sn1[92:104],mehg$sn2[92:104],
                     mehg$sn3[92:104],mehg$sn4[92:104],
                     mehg$sn5[92:104],mehg$sc6[92:104],
                     mehg$sc7[92:104],mehg$ss8[92:104],
                     mehg$ss9[92:104], mehg$ss10[92:104])

silt_layerA_90_2002<-c(silt$sn1[92:104],silt$sn2[92:104],
                       silt$sn3[92:104],silt$sn4[92:104],
                       silt$sn5[92:104],silt$sc6[92:104],
                       silt$sc7[92:104],silt$ss8[92:104],
                       silt$ss9[92:104], silt$ss10[92:104])


plot(mehg_layerA,burial_layerA)
cor.test(mehg_layerA,burial_layerA) #mehg - bur 0.1888259 
cor.test(hg_layerA,burial_layerA)   #hg - 0.06
cor.test(hg_layerA,OM_layerA)       #hg - OM: 0.54
cor.test(mehg_layerA,OM_layerA)     #hg - OM: 0.56
cor.test(hg_layerA,mehg_layerA)     #hg - mehg: 0.92
cor.test(hg_layerA,silt_layerA)     #hg - silt: 0.32
cor.test(mehg_layerA,silt_layerA)     #hg - mehg: 0.27
cor.test(mehg_layerA,OM_water)     # mehg - OM w: 0. 17

cor.test(hg_layerA_70_90,burial_layerA_70_90)   
#hg -bur r=0.25 anni 70 - 90 p<0.05
cor.test(hg_layerA_90_2002,burial_layerA_90_2002)   #hg -bur 0.2
#hg -bur r= -0.17 anni 90 - 2002 p<0.05

cor.test(mehg_layerA_70_90,burial_layerA_70_90)   #hg -bur 0.2
#mehg -bur r=0.2 anni 70 - 90 p<0.05
cor.test(mehg_layerA_90_2002,burial_layerA_90_2002)   #hg -bur 0.2
#hg -bur r= -0.09 anni 90 - 2002 n.s.

cor.test(mehg_layerA_70_90,OM_layerA_70_90)   #hg -bur 0.2
#mehg -OM r=0.49 anni 70 - 90 p<0.01
cor.test(mehg_layerA_90_2002,OM_layerA_90_2002)   #hg -bur 0.2
#mehg -OM r=0.58 anni 90 - 2002 p<0.01
cor.test(mehg_layerA,OM_layerA) # mehg-om tutto 0.56
cor.test(hg_layerA,OM_layerA) # hg-om tutto 0.53

cor.test(mehg_layerA,silt_layerA) # mehg-silt tutto 0.56
cor.test(hg_layerA,silt_layerA) # hg-silt tutto 0.53
plot(hg_layerA,mehg_layerA) # hg-silt tutto 0.53

cor.test(hg_layerA_70_90,OM_layerA_70_90)   #hg -bur 0.2
#hg -OM r=-0.53 anni 70 - 90 p<0.01
cor.test(hg_layerA_90_2002,OM_layerA_90_2002)   #hg -bur 0.2
#hg -OM r=-0.56 anni 90 - 2002 p<0.01

cor.test(mehg_layerA_70_90,silt_layerA_70_90)    
#mehg -silt r=0.31 anni 70 - 90 p<0.01
cor.test(mehg_layerA_90_2002,OM_layerA_90_2002)    
#mehg -silt r=0.58 anni 90 - 2002 p<0.01

cor.test(hg_layerA_70_90,silt_layerA_70_90)   
#hg -silt r=0.21 anni 70 - 90 p<0.01
cor.test(hg_layerA_90_2002,silt_layerA_90_2002)   #hg -bur 0.2
#hg -silt r=0.52 anni 90 - 2002 p<0.01





cor.test(mehg_layerA,OM_layerA)   #hg -bur 0.2
cor.test(mehg_layerA,silt_layerA)   #hg -bur 0.2

plot(mehg_layerA_70_90,burial_layerA_70_90)   #hg -bur 0.2
plot(mehg_layerA_90_2002,burial_layerA_90_2002)   #hg -bur 0.2

plot(hg_layerA_70_90,burial_layerA_70_90)   #hg - 0.06
cor.test(hg_layerA_90_2002,burial_layerA_90_2002)   #hg -bur 0.2



rdate[72:92]

plot(mehg_layerA[72:122,1],OM_layerA[72:122,1],type='p')
par(new=T)

str(mehg_layerA)

plot(mehg_layerA[72:122,2],OM_layerA[72:122,2],type='p')
plot(mehg_layerA[72:122,3],OM_layerA[72:122,3],type='p')
plot(mehg_layerA[72:122,4],OM_layerA[72:122,4],type='p')
plot(mehg_layerA[72:122,5],OM_layerA[72:122,5],type='p')
plot(mehg_layerA[72:122,6],OM_layerA[72:122,6],type='p')
plot(mehg_layerA[72:122,7],OM_layerA[72:122,7],type='p')
plot(mehg_layerA[72:122,8],OM_layerA[72:122,8],type='p')
plot(mehg_layerA[72:122,9],OM_layerA[72:122,9],type='p')
plot(mehg_layerA[72:122,10],OM_layerA[72:122,10],type='p')

abline( lm( OM_layerA[72:122]~mehg_layerA[72:122]))
c1<-round(cor(mehg_layerA[72:122],OM_layerA[72:122]),2) 
text(0.840,64000,paste('r = ', c1,'\np<0.01'),
     col=1, font=1)
#overall 0.54, 0.63 nel periodo 1940 - 2020
# 0.87 da anni 50 a 2020

cor.test(mehg_layerA[45:122],hg_layerA[45:122])
plot(mehg_layerA[45:122],hg_layerA[45:122])
#overall 0.9, 0.57 nel periodo 1940 - 2020
plot(mehg_layerA[72:122],hg_layerA[72:122],type='p')
abline( lm( OM_layerA[72:122]~hg_layerA[72:122]))
c2<-round(cor(mehg_layerA[72:122],OM_layerA[72:122]),2) 
text(0.840,64000,paste('r = ', c1,'\np<0.01'),
     col=1, font=1)


cor.test(mehg_layerA[72:122],burial_layerA[72:122])
plot(mehg_layerA[72:122],burial_layerA[72:122])
#overall 0.9, 0.57 nel periodo 1940 - 2020
# 0.87 da anni 50 a 2020

cor.test(hg_layerA[72:122],burial_layerA[72:122])
plot(hg_layerA[72:122],burial_layerA[72:122], 
     xlim=c(400,1300),ylim=c(-0.02,0.12))
c3<-round(cor(hg_layerA[72:122],burial_layerA[72:122]),
          digits=2)
par(new=T)
plot(hg_layerA[72:81],burial_layerA[72:81], col='red',
     xlim=c(400,1300),ylim=c(-0.02,0.12))
par(new=T)
plot(hg_layerA[82:91],burial_layerA[82:91], col='green',
     xlim=c(400,1300),ylim=c(-0.02,0.12))
par(new=T)
plot(hg_layerA[92:104],burial_layerA[92:104], col='blue',
     xlim=c(400,1300),ylim=c(-0.02,0.12))
par(new=T)
plot(hg_layerA[105:122],burial_layerA[105:122], col='brown',
     xlim=c(400,1300),ylim=c(-0.02,0.12))
abline(h=0)


rdate[104:122]

plot(hg_layerA[72:122],burial_layerA[72:122])
#overall -0.04, -0.4 nel periodo 1940 - 2020
# -0.62 da anni 50 a 2020
rdate[62:122]

cor.test(mehg$sn1, OM$sn1)
cor.test(mehg$sn2, OM$sn2)
cor.test(mehg$sn3, OM$sn3)
cor.test(mehg$sn4, OM$sn4)
cor.test(mehg$sn5, OM$sn5)
cor.test(mehg$sc6,OM$sc6)
cor.test(mehg$sc7, OM$sc7)
cor.test(mehg$ss8, OM$ss8)
cor.test(mehg$ss9, OM$ss9)
cor.test(mehg$ss10, OM$ss10)
