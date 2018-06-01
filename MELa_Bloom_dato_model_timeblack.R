setwd('C:/Users/gi/Dropbox/2017_Venice')
setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice')
setwd('C:/Users/gi/Downloads')
Mel<-read.csv('Hg_acque_MEla.csv', header=T, sep=';')
str(Mel)

summary(Mel$Hg)
Mel$Hg1<-Mel$Hg*1000

summary(Mel$Hg1)

Melaa<-Mel[(Mel$Hg1<660),]
summary(Melaa$Hg1)


#dati Bloom 
Water_sud_bloom<-c(3.15,2.08,4.2)
Water_nord_bloom<-c(29.08555,	12.1798248,	45.9912752, 
                    NA, NA, NA,NA)
Water_central_bloom<-c(14.84366, 8.5531576,
                       21.1341624, 2.58219507, 4.713865, 
                       3.627636718 ,NA)
Marghera_bloom<-c(11.9391168,56,	100.7924632,NA,NA,NA,NA)

setwd('C:/Users/gi/Desktop/finaleRITAMRE/nuoviin2')
setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice/eccola16')
setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice/piuSILT6_pazzo3')#
setwd('C:\\Users\\gi\\Dropbox\\eccola')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

Mela<-Mel[(Mel$Staz!='M01' & Mel$Staz!='M02'& Mel$Staz!='B31'&
             Mel$Staz!='E' & Mel$Hg1<300 & Mel$Anno>2001),]

Mela1<-Mela[complete.cases(Mela),]

summary(Mela1$Staz)

Mela1$Zone[Mela1$Staz == 'B01' | Mela1$Staz == 'B02'| Mela1$Staz == 'B03' |
             Mela1$Staz == 'B04'| Mela1$Staz == 'C01'| Mela1$Staz == 'C02'] <- "Nord"

Mela1$Zone[Mela1$Staz == 'B05' | Mela1$Staz == 'B06'| Mela1$Staz == 'B07' |
             Mela1$Staz == 'B08'| Mela1$Staz == 'B09'| Mela1$Staz == 'B10'|
             Mela1$Staz == 'B11'| Mela1$Staz == 'B12'| Mela1$Staz == 'C03'| Mela1$Staz == 'C04'|
             Mela1$Staz == 'C05'] <- "Centro-Nord"

Mela1$Zone[Mela1$Staz == 'CS' ] <- "Città"
Mela1$Zone[Mela1$Staz == 'CI' ] <- "Industriali"

Mela1$Zone[Mela1$Staz == 'B13' |Mela1$Staz == 'B14' | Mela1$Staz == 'B15'| Mela1$Staz == 'C06'| Mela1$Staz == 'C07'] <- "Centro-Sud"

Mela1$Zone[Mela1$Staz == 'B16' | Mela1$Staz == 'B17'| Mela1$Staz == 'B18'|
             Mela1$Staz == 'B19'| Mela1$Staz == 'B20'| Mela1$Staz == 'C08'] <- "Sud"

Mela1$Staz<- factor(Mela1$Staz, 
                    levels = c("B01","B02", "B03","B04","C01","C02", 
                               "B05","B06","B07",'CI',"B08",'CS',"B09",'B10','B11',
                               'B12',"C03","C04","C05", 
                               "B13","B14","B15", "C06", 'C07',
                               "B16","B17","B18","B19",'B20','C08'))

box1_data<-Mela1[(Mela1$Staz=='B03'),]
box2_data<-Mela1[(Mela1$Staz=='B02'),]   
box3_data<-Mela1[(Mela1$Staz=='C04'),]
box4_data<-Mela1[(Mela1$Staz=='B01'),]
box5_data<-Mela1[(Mela1$Staz=='B06' | Mela1$Staz =='B05'),]
box6_data<-Mela1[(Mela1$Staz=='B07' | Mela1$Staz=='B08' |
                  Mela1$Staz=='B09' | Mela1$Staz=='B11' |
                  Mela1$Staz=='B12' | Mela1$Staz=='C05'),]
box6_mean<-rowMeans(box6_data)
box6_min<-apply(box6_data, 1, FUN=min)
box6_max<-apply(box6_data, 1, FUN=max)

box7_data<-Mela1[(Mela1$Staz=='B14' | Mela1$Staz=='B13' |
                    Mela1$Staz=='B10' | Mela1$Staz=='B12' |
                    Mela1$Staz=='B12' | Mela1$Staz=='C06'|
                    Mela1$Staz=='C07'),]

box8_data <-Mela1[(Mela1$Staz=='B16'),]
box9_data <-Mela1[(Mela1$Staz=='B20' | Mela1$Staz=='C08'),] #bind(b17,
box10_data<-Mela1[(Mela1$Staz=='B17' | Mela1$Staz=='B19'|
                   Mela1$Staz=='B18'),] #cbind(,b17)


str(Water_sud)
Water_nord_df<-Mela1[(Mela1$Zone == 'Nord'),]
Water_nord<-Water_nord_df$Hg1
Water_centro_n_df<-Mela1[(Mela1$Zone == 'Centro-Nord'),]
Water_centro_n<-Water_centro_n_df$Hg1

Water_centro_s_df<-Mela1[(Mela1$Zone == 'Centro-Sud'),]
Water_centro_s<-Water_centro_s_df$Hg1
Water_sud_df<-Mela1[(Mela1$Zone == 'Sud'),]
Water_sud<-Water_sud_df$Hg1

summary(Water_nord)
summary(Water_centro_n)
summary(Water_centro_s)
summary(Water_sud)

View(Water_centro_n_df)




time.steps <- mehg[,1]
#time.steps2 <- trunc(time.steps, 0)
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
hgTE<- cbind(TEMPO, hg)
str(hgTE)
rdate<-as.Date(hgTE$TEMPO, tz= "GMT", format="%Y")
plot(hgTE$TEMPO,hgTE$sc6)
rdate
111*12
#ACQUE modeled da 2001 a 2010  [1230:735] --> [1215:1250]  [1239:1332]
nord_hg<-c(hg$wn1[1215:1335],hg$wn2[1215:1335],hg$wn4[1215:1335])
centr_n_hg<-c(hg$wc6[1215:1335],
            hg$wn3[1215:1335], hg$wn5[1215:1335])
centr_s_hg<-c(hg$wc7[1215:1335])
sud_hg<-c(hg$ws8[1215:1335],hg$ws9[1215:1335], hg$ws10[1215:1335])

png('confr_MEla_E_Bloom___p3.png',width = 30, 
    height = 20, units = "cm",res=300)
par(mfrow=c(2,2), bty='n',mar=c(4,5,2,0))
boxplot(nord_hg,Water_nord_bloom, Water_nord,main='Hg acque nord', ylab='ng/L',
        cex.lab=1.8,cex.axis=1.3,names=c('Modello 2001-2010','Dati 2001-2003','Dati 2002-2008'),
        col=c('#4575b4','#4575b477','#abd9e999'), 
        ylim=c(0,50), cex.main=2)
#par(mar=c(4,2.5,2,2.5))
boxplot (centr_n_hg, Water_central_bloom, Water_centro_n , main='Hg acque centro-nord', ylab='ng/L', 
         cex.lab=1.8,cex.axis=1.3,names=c('Modello 2001-2010','Dati 2001-2003','Dati 2002-2008'),
         col=c('#e5e572','#DDF26B','#DDF26B77'), cex.main=2, 
         ylim=c(0,100))

boxplot (centr_s_hg, Water_central_bloom, Water_centro_s  ,main='Hg acque centro-sud', ylab='ng/L', 
         cex.lab=1.8,cex.axis=1.3,names=c('Modello 2001-2010','Dati 2001-2003','Dati 2002-2008'),
         col=c('#f79220','#f7922099','#f7922033'), cex.main=2, ylim=c(0,50))

boxplot(sud_hg, Water_sud_bloom,Water_sud,  main='Hg acque sud', ylab='ng/L',
        ylab='', cex.lab=1.8,cex.axis=1.3,names=c('Modello 2001-2010','Dati 2001-2003','Dati 2002-2008'),
        col=c('#d73027','#d7302788','#d7302733'), cex.main=2, ylim=c(0,35))
dev.off()


Water_sud_bloom<-c(3.15,2.08,4.2)
Water_nord_bloom<-c(29.08555,	12.1798248,	45.9912752, NA, NA, NA,NA)
Water_central_bloom<-c(14.84366, 8.5531576,21.1341624, 2.58219507, 4.713865, 3.627636718 ,NA)
Marghera_bloom<-c(11.9391168,56,	100.7924632,NA,NA,NA,NA)

png('Mela_time_63_p3.png', width = 750, height = 800, units = "px")
par(mfrow=c(3,1), mar=c(1,5,1,1),bg='black',fg = 'white',
    col.axis = "white", col.lab = "white")
#old range 241:1467  - new range 241:1467
plot(rdate[241:1467],hg$wn1[241:1467], col='#313695', type='l',
     ylim=c(0,60), ylab='ng/L',
     lwd=2, cex.lab=2.5, xaxt='n',cex.axis=2.3)
par(new=T)
plot(rdate[241:1467],hg$wn2[241:1467], col='#4575b4', 
     type='l', ylim=c(0,60),
     yaxt='n',ylab='',cex.axis=2.3,lwd=2)
par(new=T)
plot(hg$wn4[241:1467], col='#abd9e9', type='l', ylab='',ylim=c(0,60), 
     yaxt='n',xaxt='n', lwd=2)
par(new=T)
wn<-c(Water_nord_bloom,Water_nord)
boxplot(wn,xaxt='n',xlim=c(0,2),at=c(1.7),
        boxwex=.4,yaxt='n',ylab=' ',ylim=c(0,60),
        col=c('#abd9e955'), cex.main=2)
text(1,110,labels='Hg acque \n laguna nord',  
     col='black', cex=2.5)
text(.1,50,labels='Box1',  col='#313695', cex=2)
text(.1,44,labels='Box2',  col='#4575b4', cex=2)
text(.1,38,labels='Box4',  col='#abd9e9', cex=2)

plot(rdate[241:1467],hg$wn3[241:1467], col='#edf8b1', type='l',
     ylim=c(0,100),
     cex.lab=2.5, ylab='ng/L',  xlab='',cex.axis=2.3,lwd=2)
par(new=T)
plot(rdate[241:1467],hg$wn5[241:1467], col='#ffffb2', type='l', xlab='',
     yaxt='n',ylim=c(0,100),ylab='',xaxt='n', cex.axis=2.3, lwd=2)
par(new=T)
plot(rdate[241:1467],hg$wc6[241:1467], col='#fed976', type='l',
     ylim=c(0,100), xaxt='n',yaxt='n', ylab='',xlab='',  lwd=2)
par(new=T)
plot(rdate[241:1467],hg$wc7[241:1467], col='#f79220', type='l', 
     ylim=c(0,100),xaxt='n',yaxt='n', ylab='',xlab='',lwd=2)
par(new=T)
w_c<-c(Water_centro_s,Water_centro_n)
boxplot(w_c  ,  ylab=' ',
        ylim=c(0,100),xaxt='n',ylab='', yaxt='n',
        xlim=c(0,2), col=c('#f7922066'),boxwex=.4,
        at=c(1.7),cex.main=2)
text(1,240,labels='Hg Acque \n laguna centrale',  
     col='black', cex=2.5)
text(0.1,90,labels='Box3',  col='#f8f1b1', cex=2)
text(.1,80,labels='Box5',  col='#fff2b2', cex=2)
text(.1,70,labels='Box6',  col='#fed976', cex=2)
text(.1,60,labels='Box7',  col='#f79220', cex=2)

par(mar=c(2,5,1,1))
plot(rdate[241:1467],hg$ws8[241:1467], col='#f46d43', type='l',cex.lab=2.5,cex.axis=2.3,
     ylab='ng/L', xlab=' ',xaxt='n',  lwd=2, ylim=c(0,40))
par(new=T)
plot(rdate[241:1467],hg$ws9[241:1467], col='#d73027', type='l',lwd=2, 
     cex.axis=2.3,yaxt='n',ylab='',xlab=' ', ylim=c(0,40))
par(new=T)
plot(rdate[241:1467],hg$ws10[241:1467], col='#a50028', type='l',xaxt='n', 
     yaxt='n',lwd=2, ylab='',xlab=' ', ylim=c(0,40))
par(new=T)
ws<-c(Water_sud, Water_sud_bloom )
boxplot(ws, ylab=' ',cex.main=2,ylab='',
        ylim=c(0,40),xaxt='n',xlab=' ',
        xlim=c(0,2),boxwex=.4,at=c(1.7),yaxt='n',
        col=c('#a5002877'))
text(1,45,labels='Hg acque \n laguna sud',  col='black', cex=2.5)

text(.1,35,labels='Box8',  col='#f46d43', cex=2)
text(.1,27,labels='Box9',  col='#d73027', cex=2)
text(.1,19,labels='Box10',  col='#a50028', cex=2)
dev.off()