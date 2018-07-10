
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

png('Corr_sed.png')
par(mfrow=c(1,1))
plot(layerA,layerA_mod, col='indianred1',bg='indianred1', 
     pch=21,ylab = 'model (ng g)', 
     xlab = 'observations (ng g)', xlim=c(0,1000), ylim=c(0,1000))
abline(lm(layerA_mod~layerA), col='indianred1', lwd=2)
text(840,640,'r = 0.85 \n p<0.01',col='indianred1', font=2)
par(new=T)
plot(layerB,layerB_mod, col='indianred3', ylab = 'model (ng g)', pch=22,bg='indianred3',
     xlab = 'observations (ng g)', xlim=c(0,1000), ylim=c(0,1000))
abline(lm(layerB_mod~layerB), col='indianred3', lty=2,lwd=2)
text(840,440,'r = 0.79 \n p<0.01',col='indianred3', font=2)
par(new=T)
plot(layerC,layerC_mod, col='indianred4', ylab = 'model (ng g)', pch=23,bg='indianred4',
     xlab = 'observations (ng g)', xlim=c(0,1000), ylim=c(0,1000))
abline(lm(layerC_mod~layerC), col='indianred4', lty=3,lwd=2)
text(840,160,'r = 0.75 \n p<0.05',col='indianred4', font=2)
dev.off()

cor.test(layerA,layerA_mod)
cor.test(layerB,layerB_mod)
cor.test(layerC,layerC_mod)
cor.test(layerD,layerD_mod)

b5_profile_mod<-c( mean(hg$lb5[1298:1309]),mean(hg$lc5[1298:1309]),mean(hg$ld5[1298:1309]), NA)
b6_profile_mod<-c( mean(hg$lb6[1298:1309]),mean(hg$lc6[1298:1309]),mean(hg$ld6[1298:1309]), NA)
b7_profile_mod<-c(mean(hg$lb7[1298:1309]),mean(hg$lc7[1298:1309]),mean(hg$ld7[1298:1309]), NA)
b8_profile_mod<-c( mean(hg$lb8[1298:1309]),mean(hg$lc8[1298:1309]),mean(hg$ld8[1298:1309]), NA)
b9_profile_mod<-c(, mean(hg$lb9[1298:1309]),mean(hg$lc9[1298:1309]),mean(hg$ld9[1298:1309]), NA)
b10_profile_mod<-c(mean(hg$la10[1298:1309]), mean(hg$lb10[1298:1309]),mean(hg$lc10[1298:1309]),mean(hg$ld10[1298:1309]), NA)

axis(1, at = my.at, labels = my.at)
