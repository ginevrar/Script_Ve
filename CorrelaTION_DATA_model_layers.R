# setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\naoh2')
setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh2')     #sim_cl


hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
             'la1','la2','la3','la4','la5','la6','la7','la8','la9','la10',
             'lb1','lb2','lb3','lb4','lb5','lb6','lb7','lb8','lb9','lb10',
             'lc1','lc2','lc3','lc4','lc5','lc6','lc7','lc8','lc9','lc10',
             'ld1','ld2','ld3','ld4','ld5','ld6','ld7','ld8','ld9','ld10')

layerA<-c(median(box1_A_hg$Hg),median(box2_A_hg$Hg),median(box3_A_hg$Hg),
        median(box4_A_hg$Hg),median(box5_A_hg$Hg),median(box6_A_hg$Hg),
        median(box7_A_hg$Hg),median(box8_A_hg$Hg),median(box9_A_hg$Hg),median(box10_A_hg$Hg))

layerB<-c(median(box1_B_hg$Hg),median(box2_B_hg$Hg),median(box3_B_hg$Hg),
          median(box4_B_hg$Hg),median(box5_B_hg$Hg),median(box6_B_hg$Hg),
          median(box7_B_hg$Hg),median(box8_B_hg$Hg),median(box9_B_hg$Hg),median(box10_B_hg$Hg))

layerC<-c(median(box1_C_hg$Hg),median(box2_C_hg$Hg),median(box3_C_hg$Hg),
          median(box4_C_hg$Hg),median(box5_C_hg$Hg),median(box6_C_hg$Hg),
          median(box7_C_hg$Hg),median(box8_C_hg$Hg),median(box9_C_hg$Hg),median(box10_C_hg$Hg))

layerD<-c(median(box1_D_hg$Hg),median(box2_D_hg$Hg),median(box3_D_hg$Hg),
          median(box4_D_hg$Hg),median(box5_D_hg$Hg),median(box6_D_hg$Hg),
          median(box7_D_hg$Hg),median(box8_D_hg$Hg),median(box9_D_hg$Hg),median(box10_D_hg$Hg))


layerA_mod<-c(mean(hg$la1[1298:1309]),mean(hg$la2[1298:1309]), mean(hg$la3[1298:1309]), mean(hg$la4[1298:1309]),
          mean(hg$la5[1298:1309]),mean(hg$la6[1298:1309]),mean(hg$la7[1298:1309]), mean(hg$la8[1298:1309]),
          mean(hg$la9[1298:1309]),mean(hg$la10[1298:1309]))
          
layerB_mod<-c(mean(hg$lb1[1298:1309]),mean(hg$lb2[1298:1309]), mean(hg$lb3[1298:1309]), mean(hg$lb4[1298:1309]),
              mean(hg$lb5[1298:1309]),mean(hg$lb6[1298:1309]),mean(hg$lb7[1298:1309]), mean(hg$lb8[1298:1309]),
              mean(hg$lb9[1298:1309]),mean(hg$lb10[1298:1309])) 

layerC_mod<-c(mean(hg$lc1[1298:1309]),mean(hg$lc2[1298:1309]), mean(hg$lc3[1298:1309]), mean(hg$lc4[1298:1309]),
              mean(hg$lc5[1298:1309]),mean(hg$lc6[1298:1309]),mean(hg$lc7[1298:1309]), mean(hg$lc8[1298:1309]),
              mean(hg$lc9[1298:1309]),mean(hg$lc10[1298:1309])) 

layerD_mod<-c(mean(hg$ld1[1298:1309]),mean(hg$ld2[1298:1309]), mean(hg$ld3[1298:1309]), mean(hg$ld4[1298:1309]),
              mean(hg$ld5[1298:1309]),mean(hg$ld6[1298:1309]),mean(hg$ld7[1298:1309]), mean(hg$ld8[1298:1309]),
              mean(hg$ld9[1298:1309]),mean(hg$ld10[1298:1309])) 

dfsurf<-data.frame(layerA,layerA_mod)
dfsubsurf<-data.frame(layerB,layerB_mod)

#subssd<-c(layerB, layerC)
#subssM<-c(layerB_mod, layerC_mod)

dfC<-data.frame(layerC,layerC_mod)

write.table(dfsurf,'surf_sedhg_taylor.txt')
write.table(dfsubsurf,'subsurf_sedhg_taylor.txt')
write.table(dfC,'subsurf_laC_sedhg_taylor.txt')


r1<-round(cor(layerA,layerA_mod), digits = 2)
r2<-round(cor(layerB,layerB_mod), digits = 2)
r3<-round(cor(layerC,layerC_mod), digits = 2)
r4<-round(cor(layerD,layerD_mod), digits = 2)

png('Corr_sedgilm.png')
par(mfrow=c(1,1))
plot(layerA,layerA_mod, col='indianred1',bg='indianred1', 
     pch=21,ylab = 'model (ng g)', 
     xlab = 'observations (ng g)', xlim=c(0,1000), ylim=c(0,1000))
abline(lm(layerA_mod~layerA), col='indianred1', lwd=2)
text(840,640,paste('r = ', r1,' p<0.01'),col='indianred1', font=2)
par(new=T)
plot(layerB,layerB_mod, col='indianred3', ylab = 'model (ng g)', pch=22,bg='indianred3',
     xlab = 'observations (ng g)', xlim=c(0,1000), ylim=c(0,1000))
abline(lm(layerB_mod~layerB), col='indianred3', lty=2,lwd=2)
text(840,440,paste('r =',r2,' p<0.01'),col='indianred3', font=2)
par(new=T)
plot(layerC,layerC_mod, col='indianred4', ylab = 'model (ng g)', pch=23,bg='indianred4',
     xlab = 'observations (ng g)', xlim=c(0,1000), ylim=c(0,1000))
abline(lm(layerC_mod~layerC), col='indianred4', lty=3,lwd=2)
text(840,160,paste('r =', r3, ' p<0.05'),col='indianred4', font=2)
dev.off()

bo<-cor.test(layerA,layerA_mod)
bo1<-cor.test(layerB,layerB_mod)
bo2<-cor.test(layerC,layerC_mod)
bo3<-cor.test(layerD,layerD_mod)
bo

bo$estimate
bo$p.value

bo1$estimate
bo1$p.value

bo2$estimate
bo2$p.value

bo3$estimate
bo3$p.value
#________________________________ Fine data model correlation sed hg ________________________________