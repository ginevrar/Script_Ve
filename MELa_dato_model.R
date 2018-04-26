setwd('C:/Users/gi/Dropbox/2017_Venice')
Mel<-read.csv('Hg_acque_MEla.csv', header=T, sep=';')
str(Mel)
setwd('C:/Users/gi/Desktop/finaleRITAMRE/nuoviin2')

Mel$Hg1<-Mel$Hg*1000

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
nord_hg<-c(hg$wn1[1239:1332],hg$wn2[1239:1332],hg$wn4[1239:1332])
centr_n_hg<-c(hg$wc6[1239:1332],
            hg$wn3[1239:1332], hg$wn5[1239:1332])
centr_s_hg<-c(hg$wc7[1239:1332])
sud_hg<-c(hg$ws8[1239:1332],hg$ws9[1239:1332], hg$ws10[1239:1332])

png('confr_MEla_2.png',width = 30, height = 25, units = "cm",res=300)
par(mfrow=c(2,2), bty='n',mar=c(4,5,2,0))
boxplot(nord_hg,Water_nord, main='Hg acque nord', ylab='ng/L',
        cex.lab=2.3,cex.axis=2.5,
        col=c('#4575b4','#abd9e988'), names=c('Model','Data'),
        ylim=c(0,20), cex.main=2)
#par(mar=c(4,2.5,2,2.5))
boxplot (centr_n_hg, Water_centro_n , main='Hg acque centro-nord', ylab='ng/L', 
         cex.lab=2.3,cex.axis=2.5,names=c('Model','Data'),
         col=c('#f79220','#f7922088'), cex.main=2, ylim=c(0,100))

boxplot (centr_s_hg, Water_centro_s  ,main='Hg acque centro-sud', ylab='ng/L', 
         cex.lab=2.3,cex.axis=2.5,names=c('Model','Data'),
         col=c('#f7df9e','#f7df9e66'), cex.main=2, ylim=c(0,50))

boxplot(sud_hg ,Water_sud,  main='Southern Boxes', ylab='ng/L',
        ylab='', cex.lab=2.3,cex.axis=2.5,names=c('Model','Data'),
        col=c('#d73027','#d7302788'), cex.main=2, ylim=c(0,50))
dev.off()

png('Mela_time_63c__.png', width = 750, height = 800, units = "px")
par(mfrow=c(3,1), mar=c(1,5,1,1))
#old range 2:2427  - new range 2:2427
plot(rdate[2:2427],hg$wn1[2:2427], col='#313695', type='l',
     ylim=c(0,80), ylab='ng/L',
     lwd=2, cex.lab=2.5, xaxt='n',cex.axis=2.3)
par(new=T)
plot(rdate[2:2427],hg$wn2[2:2427], col='#4575b4', 
     type='l', ylim=c(0,80),
     yaxt='n',ylab='',cex.axis=2.3,lwd=2)
par(new=T)
plot(hg$wn4[2:2427], col='#abd9e9', type='l', ylab='',ylim=c(0,80), 
     yaxt='n',xaxt='n', lwd=2)
par(new=T)
boxplot(Water_nord,xaxt='n',xlim=c(0,2),at=c(1.1),
        boxwex=.4,yaxt='n',ylab=' ',ylim=c(0,80),
        col=c('#abd9e955'), cex.main=2)
text(1,110,labels='Northern Boxes',  col='black', cex=2.5)
text(0.1,40,labels='Box1',  col='#313695', cex=2.5)
text(.1,70,labels='Box2',  col='#4575b4', cex=2.5)
text(.1,100,labels='Box4',  col='#abd9e9', cex=2.5)

plot(rdate[2:2427],hg$wn3[2:2427], col='#edf8b1', type='l',
     ylim=c(0,200),
     cex.lab=2.5, ylab='ng/L',  xlab='',cex.axis=2.3,lwd=2)
par(new=T)
plot(rdate[2:2427],hg$wn5[2:2427], col='#ffffb2', type='l', xlab='',
     yaxt='n',ylim=c(0,200),ylab='',xaxt='n', cex.axis=2.3, lwd=2)
par(new=T)
plot(rdate[2:2427],hg$wc6[2:2427], col='#fed976', type='l',
     ylim=c(0,200), xaxt='n',yaxt='n', ylab='',xlab='',  lwd=2)
par(new=T)
plot(rdate[2:2427],hg$wc7[2:2427], col='#f79220', type='l', 
     ylim=c(0,200),xaxt='n',yaxt='n', ylab='',xlab='',lwd=2)
par(new=T)
w_c<-c(Water_centro_s,Water_centro_n)
boxplot(w_c  ,  ylab=' ',
        ylim=c(0,200),xaxt='n',ylab='', yaxt='n',
        xlim=c(0,2), col=c('#f7922066'),boxwex=.4,at=c(1.1),cex.main=2)
text(1,240,labels='Central Boxes',  col='black', cex=2.5)
text(0.07,50,labels='Box3',  col='#f8f1b1', cex=2.5)
text(.1,150,labels='Box5',  col='#fff2b2', cex=2.5)
text(.45,200,labels='Box6',  col='#fed976', cex=2.5)
text(.25,50,labels='Box7',  col='#f79220', cex=2.5)

par(mar=c(2,5,1,1))
plot(rdate[2:2427],hg$ws8[2:2427], col='#f46d43', type='l',cex.lab=2.5,cex.axis=2.3,
     ylab='ng/L', xlab=' ',xaxt='n',  lwd=2, ylim=c(0,50))
par(new=T)
plot(rdate[2:2427],hg$ws9[2:2427], col='#d73027', type='l',lwd=2, 
     cex.axis=2.3,yaxt='n',ylab='',xlab=' ', ylim=c(0,50))
par(new=T)
plot(rdate[2:2427],hg$ws10[2:2427], col='#a50028', type='l',xaxt='n', 
     yaxt='n',lwd=2, ylab='',xlab=' ', ylim=c(0,50))
par(new=T)
boxplot(Water_sud, ylab=' ',cex.main=2,ylab='',
        ylim=c(0,50),xaxt='n',xlab=' ',
        xlim=c(0,2),boxwex=.4,at=c(1.1),yaxt='n',
        col=c('#a5002877'))
text(1,45,labels='Southern Boxes',  col='black', cex=2.5)

text(.6,30,labels='Box8',  col='#f46d43', cex=2.5)
text(.6,40,labels='Box9',  col='#d73027', cex=2.5)
text(.1,18,labels='Box10',  col='#a50028', cex=2.5)
dev.off()
a<-seq(1227,2089,by=1)
str(a)
str(Mela1$Hg)
#1239:1332
w1empty_v01<-rep('NA',2427)
w1empty_v01[1227:1260]<- box1_data$Hg1

str(Mela1$Hg1)
w2empty_v01<-rep('NA',2427)
w2empty_v01[1227:1262]<- box2_data$Hg1
str(box2_data$Hg1)

w3empty_v01<-rep('NA',2427)
w3empty_v01[1227:1270]<- box3_data$Hg*1000

w4empty_v01<-rep('NA',2427)
w4empty_v01[1239:1251]<- box4_data$Hg[1:13]*1000

w5empty_v01<-rep('NA',2427)
w5empty_v01[1239:1322]<- box5_data$Hg*1000

w6empty_v01<-rep('NA',2427)
w6empty_v01[1239:1322]<- box6_mean*1000

w6empty_v02<-rep('NA',2427)
w6empty_v02[1239:1322]<- box6_min*1000

w6empty_v03<-rep('NA',2427)
w6empty_v03[1239:1322]<- box6_max*1000

w6empty_v04<-rep('NA',2427)
w6empty_v04[1239:1322]<- box6_dataM$Hg * 1000

w7empty_v01<-rep('NA',2427)
w7empty_v01[1239:1322]<- box7_data$Hg * 1000

w8empty_v01<-rep('NA',2427)
w8empty_v01[1239:1321]<- box8_data$Hg * 1000

w9empty_v01<-rep('NA',2427)
w9empty_v01[1239:1321]<- box9_data$Hg * 1000

w10empty_v01<-rep('NA',2427)
w10empty_v01[1239:1322]<- box10_data$Hg * 1000

png('concWATER_eachBox.png',width = 950, height = 530, units = "px")
par(mfrow=c(2,5),mar=c(3,1,1,1), oma=c(0,6,3,1), bty='n')

plot(rdate[1239:1346],hg$wn1[1239:1346],ylim=c(0,100), type='l', col='#313695',lwd=2)
par(new=T)
plot(rdate[1239:1346],w1empty_v01[1239:1346], ylim=c(0,100), type='b',pch=25,cex=2,col='#10178c',bg='#31369544',lwd=2)

plot(rdate[1239:1346],hg$wn2[1239:1346],ylim=c(0,100), type='l', col='#4575b4',lwd=2)
par(new=T)
plot(rdate[1239:1346],w2empty_v01[1239:1346], ylim=c(0,100), type='o',pch=25,cex=2,col='#4575b4',bg='#4575b444',lwd=2)

plot(rdate[1239:1346],hg$wn4[1239:1346], ylim=c(0,100), type='l',col='#abd9e9',lwd=2)
par(new=T)
plot(rdate[1239:1346],w4empty_v01[1239:1346], ylim=c(0,100), type='o',pch=25,cex=2,col='#abd9e9',bg='#abd9e944',lwd=2)

plot(rdate[1239:1346],hg$wn3[1239:1346], ylim=c(0,100), type='l', 
     col='#DDF26B',lwd=2)
par(new=T)
plot(rdate[1239:1346],w3empty_v01[1239:1346], ylim=c(0,100), type='o',
     pch=25,cex=2,col='#DDF26B',bg='#DDF26B44',lwd=2)

plot(rdate[1239:1346],hg$wn5[1239:1346], ylim=c(0,100), 
     type='l',col='#e5e572',lwd=2)
par(new=T)
plot(rdate[1239:1346],w5empty_v01[1239:1346], ylim=c(0,100), 
     type='o',pch=25,cex=2,col='#e5e572',bg='#e5e57244',lwd=2)

plot(rdate[1239:1346],hg$wc6[1239:1346], ylim=c(0,100), type='l',
     col='#fed976',lwd=2)#
par(new=T)
plot(rdate[1239:1346],w6empty_v01[1239:1346], ylim=c(0,100),
     type='p',cex=2,pch=23,col='#fed976',bg='#fed97644',lwd=2)
par(new=T)
plot(rdate[1239:1346],w6empty_v02[1239:1346], ylim=c(0,100), type='p',cex=1.3,
     pch=23,col='#fed976',bg='#fed97644',lwd=2)
par(new=T)
plot(rdate[1239:1346],w6empty_v03[1239:1346], ylim=c(0,100), type='p',
     cex=1.3,pch=23,col='#fed976',bg='#fed97644',lwd=2)

plot(rdate[1239:1346],hg$wc7[1239:1346], ylim=c(0,100), type='l',col='#f79220',lwd=2)
par(new=T)
plot(rdate[1239:1346],w7empty_v01[1239:1346], ylim=c(0,100), type='p',cex=2,
     pch=23,col='#f79220',bg='#f7922044',lwd=2)

plot(rdate[1239:1346],hg$ws8[1239:1346], ylim=c(0,100), type='l',
     col='#f46d43',lwd=2)
par(new=T)
plot(rdate[1239:1346],w8empty_v01[1239:1346], ylim=c(0,100), type='p',cex=2,pch=23,col='#f46d43',bg='#f46d4344',lwd=2)

plot(rdate[1239:1346],hg$ws9[1239:1346], ylim=c(0,100), type='l',col='#d73027',lwd=2)
par(new=T)
plot(rdate[1239:1346],w9empty_v01[1239:1346], ylim=c(0,100), type='p',cex=2,pch=23,col='#d73027',bg='#d7302744',lwd=2)

plot(rdate[1239:1346],hg$ws10[1239:1346], ylim=c(0,100), type='l',col='#a50028',lwd=2)
par(new=T)
plot(rdate[1239:1346],w10empty_v01[1239:1346], ylim=c(0,100), type='p',cex=2,pch=23,col='#a50028',bg='#a5002844',lwd=2)
dev.off()






