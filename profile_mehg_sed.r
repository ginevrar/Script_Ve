setwd('C:\\Users\\gi\\Downloads')
dati<-read.table('MeHg_data_layer.txt',  header=T)

setwd('C:/Users/gi/Dropbox/fin81')
setwd('C:/Users/Acer/Dropbox/fin86')

mehg<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
             'la1','la2','la3','la4','la5','la6','la7','la8','la9','la10',
             'lb1','lb2','lb3','lb4','lb5','lb6','lb7','lb8','lb9','lb10',
             'lc1','lc2','lc3','lc4','lc5','lc6','lc7','lc8','lc9','lc10',
             'ld1','ld2','ld3','ld4','ld5','ld6','ld7','ld8','ld9','ld10')


#hgD<-hgdiss+hgDOC; mehgD<-mehgdiss+mehgDOC
#mehgt<-mehgD+mehgP; hgIIt<-hgD+hgP

box1<-dati[,1]
box2<-dati[,2]
box3<-dati[,3]
box6<-dati[,4]
box7<-dati[,5]

box1_A_mehg_gued_2008<-c(0.60,0.45)
box1_B_mehg_gued_2008<-c(0.32,.23,0.31 )
box1_A_mehg_gued_2009<-c(0.37,0.58, 0.70)
box1_B_mehg_gued_2009<-c(0.26,.4,0.58,
                         0.33, 0.13, 0.51)

box2_A_mehg_gued_2008<-c(2.48, 1.71, 1.17 ,1.28,	1.23,	1.24)
box2_A_mehg_gued_2009<-c(0.81, 0.71)

box2_B_mehg_gued_2008<-c(0.87,	0.92,0.57,	0.90)
box2_B_mehg_gued_2009<-c(0.49,0.82,0.72,1.95)
box2_C_mehg_gued_2009<-c(0.69,1.95,0.65,2.38)

bbox1A<-c(box1_A_mehg_gued_2008,box1_A_mehg_gued_2009,box1[1])
bbox1B<-c(box1_B_mehg_gued_2008,box1_B_mehg_gued_2009,box1[2])

bbox2A<-c(box2_A_mehg_gued_2008,box2_A_mehg_gued_2009,box2[1])
bbox2B<-c(box2_B_mehg_gued_2008,box2_B_mehg_gued_2009,box2[2])
bbox2C<-c(box2_C_mehg_gued_2009,box2[3])

rdate[1298:1309]

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



png('profile_Mehg_datoModeo_boxpl_fin81.png',width = 1000*1.5, height = 530*1.5,  
    units = "px")
par(mfrow=c(2,3),mar=c(3,0,1,1), oma=c(0,4,3,1),  bty='n',cex=1.5) # bg='black',fg = 'white',col.axis = "white", col.clab = "white"
boxplot(bbox1A,bbox1B, xlim=c(-40,0),cex=2.6, 
        at=c(-2,-7),boxwex=5.,
        ylim=c(0,2.5),col='#31369577',
        horizontal = T)
par(new=T)
plot(box1[3],y[3],
     ylim=c(-40,0),xlim=c(0,2.5),col=1, 
     bg='#31369577',
     type='b', lty=2,#xaxt='n',
     ylab=' ',xlab=' ',cex=2.3, pch=22)
par(new=T)
plot(b1_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-40,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#313695',   type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=3)
#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 1', font=2, cex=1.4, line=.5)


boxplot(bbox2A,bbox2B,bbox2C, range = F,#outline = F,
        xlim=c(-40,0),cex=2.6, 
        at=c(-2,-7,-15),boxwex=5.,
        ylim=c(0,2.5),col='#31369577',
        horizontal = T)
#par(new=T)
#plot(box2,y,
 #    ylim=c(-40,0),xlim=c(0,2.5), col=1,bg='#4575b4',
  #   type='b', lty=2, #xaxt='n',
   #  ylab=' ',xlab=' ',cex=2.3, pch=22)
par(new=T)
plot(b2_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-40,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#4575b477',   type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=3)
#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 2', font=2, cex=1.4, line=.5)

plot(box3,y,
     ylim=c(-40,0),xlim=c(0,2.5), col=1,bg='#DDF26B',
     type='b', lty=2, #xaxt='n',
     ylab=' ',xlab=' ',cex=2.3, pch=22)
par(new=T)
plot(b3_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-40,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#DDF26B77',   type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=3)
#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 3', font=2, cex=1.4, line=.5)

plot(box6,y, type='b', lty=2, col=1,
     ylim=c(-40,0),xlim=c(0,2.5), bg='#fed976',
     #xaxt='n',
     ylab=' ',xlab=' ',cex=2.3, pch=22)
par(new=T)
plot(b6_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-40,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#fed97677',   type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=3)
#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 6', font=2, cex=1.4, line=.5)

plot(box7,y,col=1,
     ylim=c(-40,0),xlim=c(0,2.5), bg='#f79220',
     type='b', lty=2,#xaxt='n',
     ylab=' ',xlab=' ',cex=2.3, pch=22)
par(new=T)
plot(b7_profile_mod[1:3],y,xlim=c(0,2.5), cex=1.6, ylim=c(-40,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#f7922077',   type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=3)
#mtext(side=1, text=exprssion(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box 7', font=2, cex=1.4, line=.5)

dev.off()
getwd()