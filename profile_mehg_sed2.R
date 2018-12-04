#-------------------------------data from literature---------------------------------------
setwd('C:\\Users\\gi\\Downloads')
setwd('G:/Il mio Drive/MERCURIO/Venezia/')
dati<-read.table('MeHg_data_depths.txt',  header=T);str(dati)

setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN20')

mehg<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
               'la1','la2','la3','la4','la5','la6','la7','la8','la9','la10',
               'lb1','lb2','lb3','lb4','lb5','lb6','lb7','lb8','lb9','lb10',
               'lc1','lc2','lc3','lc4','lc5','lc6','lc7','lc8','lc9','lc10',
               'ld1','ld2','ld3','ld4','ld5','ld6','ld7','ld8','ld9','ld10')

layerA<-dati[(dati$depth<=5),]
layerB<-dati[(dati$depth>5 & dati$depth<=10),]
layerC<-dati[(dati$depth>10 & dati$depth<=20),]

library(lattice)
xyplot(mehg ~ month, data=dati)
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
A1<-filter(layerA,box==1); B1<-filter(layerB,box==1); C1<-filter(layerC,box==1)
A2<-filter(layerA,box==2); B2<-filter(layerB,box==2); C2<-filter(layerC,box==2)
A3<-filter(layerA,box==3); B3<-filter(layerB,box==3); C3<-filter(layerC,box==3)
A6<-filter(layerA,box==6); B6<-filter(layerB,box==6); C6<-filter(layerC,box==6)
A7<-filter(layerA,box==7); B7<-filter(layerB,box==7); C7<-filter(layerC,box==7)


#hgD<-hgdiss+hgDOC; mehgD<-mehgdiss+mehgDOC
#mehgt<-mehgD+mehgP; hgIIt<-hgD+hgP
b1_profile_mod<-c(mean(mehg$la1[1298:1309]), mean(mehg$lb1[1298:1309]),mean(mehg$lc1[1298:1309]),mean(mehg$ld1[1298:1309]), NA)
b2_profile_mod<-c(mean(mehg$la2[1298:1309]), mean(mehg$lb2[1298:1309]),mean(mehg$lc2[1298:1309]), mean(mehg$ld2[1298:1309]), NA)
b3_profile_mod<-c(mean(mehg$la3[1298:1309]), mean(mehg$lb3[1298:1309]),mean(mehg$lc3[1298:1309]),mean(mehg$ld3[1298:1309]), NA)
b4_profile_mod<-c(mean(mehg$la4[1298:1309]), mean(mehg$lb4[1298:1309]),mean(mehg$lc4[1298:1309]),mean(mehg$ld4[1298:1309]), NA)
b5_profile_mod<-c(mean(mehg$la5[1298:1309]), mean(mehg$lb5[1298:1309]),mean(mehg$lc5[1298:1309]),mean(mehg$ld5[1298:1309]), NA)
b6_profile_mod<-c(mean(mehg$la6[1298:1309]), mean(mehg$lb6[1298:1309]),mean(mehg$lc6[1298:1309]),mean(mehg$ld6[1298:1309]), NA)
b7_profile_mod<-c(mean(mehg$la7[1298:1309]), mean(mehg$lb7[1298:1309]),mean(mehg$lc7[1298:1309]),mean(mehg$ld7[1298:1309]), NA)
b8_profile_mod<-c(mean(mehg$la8[1298:1309]), mean(mehg$lb8[1298:1309]),mean(mehg$lc8[1298:1309]),mean(mehg$ld8[1298:1309]), NA)
b9_profile_mod<-c(mean(mehg$la9[1298:1309]), mean(mehg$lb9[1298:1309]),mean(mehg$lc9[1298:1309]),mean(mehg$ld9[1298:1309]), NA)
b10_profile_mod<-c(mean(mehg$la10[1298:1309]), mean(mehg$lb10[1298:1309]),mean(mehg$lc10[1298:1309]),mean(mehg$ld10[1298:1309]), NA)

y=c(-2,-7, -15)

box1<-c(mean(A1$mehg),mean(B1$mehg),mean(C1$mehg))
box2<-c(mean(A2$mehg),mean(B2$mehg),mean(C2$mehg))
box3<-c(mean(A3$mehg),mean(B3$mehg),mean(C3$mehg))
box6<-c(mean(A6$mehg),mean(B6$mehg),mean(C6$mehg))
box7<-c(mean(A7$mehg),mean(B7$mehg),mean(C7$mehg))

png('profile_Mehg_datoModeo_boxpl_fin92b_mehg_d.png',width = 1000*1.5, height = 530*1.5,  
    units = "px")
par(mfrow=c(2,5),mar=c(3,0,1,1), oma=c(0,4,3,1),  bty='n',cex=1.5) # bg='black',fg = 'white',col.axis = "white", col.clab = "white"

boxplot(A1$mehg,B1$mehg,C1$mehg, xlim=c(-20,0),cex=2.6, range = F,outline = F,
        at=c(-2,-7, -15),boxwex=3.,yaxt='n',xaxt='n',
        ylim=c(0,2.5),col='#31369577',
        horizontal = T)
par(new=T)
plot(box1,y,
     ylim=c(-20,0),xlim=c(0,2.5),col=1, 
     bg='#31369577',
     type='p', lty=2, #xaxt='n',
     ylab=' ', xlab=' ', cex=2, pch=19)
par(new=T)
plot(b1_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#313695',   type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=3)
#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 1', font=2, cex=1.4, line=.5)


boxplot(A2$mehg,B2$mehg,C2$mehg, xlim=c(-20,0),cex=2.6, range = F,outline = F,
        at=c(-2,-7, -15),boxwex=3.,yaxt='n',xaxt='n',
        ylim=c(0,2.5),col='#4575b477',
        horizontal = T)
par(new=T)
plot(box2,y,
     ylim=c(-20,0),xlim=c(0,2.5),col=1, 
     bg='#31369577',
     type='p', lty=2,  xaxt='n',yaxt='n',
     ylab=' ', xlab=' ', cex=2, pch=19)
par(new=T)
plot(b2_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#4575b4',   type='b', pch=25)
 #mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 2', font=2, cex=1.4, line=.5)

#plot(box2,y,
 #    ylim=c(-40,0),xlim=c(0,2.5), col=1,bg='#4575b4',
boxplot(A3$mehg,B3$mehg,C3$mehg, xlim=c(-20,0),cex=2.6, range = F,outline = F,
        at=c(-2,-7, -15),boxwex=3.,yaxt='n', xaxt='n',
        ylim=c(0,2.5),col='#DDF26B77',
        horizontal = T)
par(new=T)
plot(box3,y,
     ylim=c(-20,0),xlim=c(0,2.5),col=1, 
     bg='#31369577',yaxt='n',
     type='p', lty=2, #xaxt='n',
     ylab=' ', xlab=' ', cex=2, pch=19)
par(new=T)
plot(b3_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#DDF26B',   type='b', pch=25)



#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 3', font=2, cex=1.4, line=.5)
#plot(box2,y,
#    ylim=c(-40,0),xlim=c(0,2.5), col=1,bg='#4575b4',

plot(b4_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#abd9e9',   type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=3)
#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 4', font=2, cex=1.4, line=.5)

plot(b5_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#e5e572',   type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=3)
#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 5', font=2, cex=1.4, line=.5)


boxplot(A6$mehg,B6$mehg,C6$mehg, xlim=c(-20,0),cex=2.6, range = F,outline = F,
        at=c(-2,-7, -15),boxwex=3.,yaxt='n',xaxt='n',
        ylim=c(0,2.5),col='#fed97677',
        horizontal = T)
par(new=T)
plot(box6,y,
     ylim=c(-20,0),xlim=c(0,2.5),col=1,  type='p', lty=2, #xaxt='n',
     ylab=' ', xlab=' ', cex=2, pch=19)
par(new=T)
plot(b6_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#fed976',   type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=3)
#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 6', font=2, cex=1.4, line=.5)

boxplot(A7$mehg,B7$mehg,C7$mehg, xlim=c(-20,0),cex=2.6, range = F,outline = F,
        at=c(-2,-7, -15),boxwex=3.,yaxt='n',xaxt='n',
        ylim=c(0,2.5),col='#f7922077',
        horizontal = T)
par(new=T)
plot(box7,y,
     ylim=c(-20,0),xlim=c(0,2.5),col=1,  type='p', lty=2,yaxt='n', #xaxt='n',
     ylab=' ', xlab=' ', cex=2, pch=19)
par(new=T)
plot(b7_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#f79220',   type='b', pch=25)
 #mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 7', font=2, cex=1.4, line=.5)

plot(b8_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#f46d43',   type='b', pch=25)
mtext(side=3, text='box 8', font=2, cex=1.4, line=.5)

plot(b9_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#d73027',   type='b', pch=25)
mtext(side=3, text='box 9', font=2, cex=1.4, line=.5)

plot(b10_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#a50028',   type='b', pch=25)
mtext(side=3, text='box 10', font=2, cex=1.4, line=.5)

dev.off()

box1m<-c(median(A1$mehg),median(B1$mehg),median(C1$mehg))
box2m<-c(median(A2$mehg),median(B2$mehg),median(C2$mehg))
box3m<-c(median(A3$mehg),median(B3$mehg),median(C3$mehg))
box6m<-c(median(A6$mehg),median(B6$mehg),median(C6$mehg))
box7m<-c(median(A7$mehg),median(B7$mehg),median(C7$mehg))

sedd<-c(box1m,box2m,box3m,box6m,box7m)
modd<-c(b1_profile_mod,b2_profile_mod,b3_profile_mod,b6_profile_mod,b7_profile_mod)

datsurfmehg<-c(median(A1$mehg),median(A2$mehg),median(A3$mehg),median(A6$mehg),median(A7$mehg))
modsurfmehg<-c(b1_profile_mod[1],b2_profile_mod[1],
               b3_profile_mod[1],b6_profile_mod[1],b7_profile_mod[1])

layerB_mehg<-c(median(B1$mehg),median(B2$mehg),median(B3$mehg),median(B6$mehg),median(B7$mehg))
modlayerB_mehg<-c(b1_profile_mod[2],b2_profile_mod[2],
               b3_profile_mod[2],b6_profile_mod[2],b7_profile_mod[2])

layerC_mehg<-c(median(C1$mehg),median(C2$mehg),median(C3$mehg),median(C6$mehg),median(C7$mehg))
modlayerC_mehg<-c(b1_profile_mod[3],b2_profile_mod[3],
               b3_profile_mod[3],b6_profile_mod[3],b7_profile_mod[3])

sedMehg<-data.frame(datsurfmehg, modsurfmehg)
sedMehg2<-data.frame(layerB_mehg, modlayerB_mehg)
sedMehg3<-data.frame(layerC_mehg, modlayerC_mehg)

write.table(sedMehg, file='sedMehg_perTaylorD.txt')
write.table(sedMehg2, file='sedMehg2_perTaylorD.txt')
write.table(sedMehg3, file='sedMehg3_perTaylorD.txt')
getwd()

cor.test(datsurfmehg,modsurfmehg)

#________________________________ Fine plot Sediment mehg vs time ________________________________
