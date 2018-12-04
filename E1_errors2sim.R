setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN17')

hgw<-read.table('acque_perTaylorD.txt', header=T)
hgsedA<-read.table('surf_sedhg_taylor.txt', header=T)
hgsedB<-read.table('subsurf_sedhg_taylor.txt', header=T)
hgsedC<-read.table('subsurf_laC_sedhg_taylor.txt', header=T)

mehgsedA<-read.table('sedMehg_perTaylorD.txt')
mehgsedB<-read.table('sedMehg2_perTaylorD.txt')
mehgsedC<-read.table('sedMehg3_perTaylorD.txt')
PW_hg<-read.table('pw_hg_perTaylorD.txt', header=T)

PW_mehg<-read.table('pw_mehg_perTaylorD.txt', header=T)
corila_hg<-read.table('Corila_hg_perTaylorD.txt', header=T)
corila_mehg<-read.table('Corila_mehg_perTaylorD.txt', header=T)

SPM<-read.table('SPM_perTaylorD.txt', header=T)
POM<-read.table('POM_perTaylorD.txt', header=T)
SPM1 <- SPM[complete.cases(SPM),]
POM1 <- POM[complete.cases(POM),]

setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN20')
 hgw2<-read.table('acque_perTaylorD.txt', header=T)
hgsedA2<-read.table('surf_sedhg_taylor.txt', header=T)
hgsedB2<-read.table('subsurf_sedhg_taylor.txt', header=T)
hgsedC2<-read.table('subsurf_laC_sedhg_taylor.txt', header=T)

mehgsedA2<-read.table('sedMehg_perTaylorD.txt')
mehgsedB2<-read.table('sedMehg2_perTaylorD.txt')
mehgsedC2<-read.table('sedMehg3_perTaylorD.txt')
PW_hg2<-read.table('PW_hg_perTaylorD.txt', header=T)
PW_mehg2<-read.table('PW_mehg_perTaylorD.txt', header=T)
corila_hg2<-read.table('corila_hg_perTaylorD.txt', header=T)
corila_mehg2<-read.table('corila_mehg_perTaylorD.txt', header=T)

SPM2<-read.table('SPM_perTaylorD.txt', header=T)
POM2<-read.table('POM_perTaylorD.txt', header=T)
SPM12 <- SPM2[complete.cases(SPM2), ]
POM12 <- POM2[complete.cases(POM2), ]

e1 <- function (obs, pred) {(1-
     sum(abs(obs-pred)) / sum(abs(obs-mean(obs))))}

hgw_err<-e1(hgw$datiw, hgw$modew)
hgsedA_err<-e1(hgsedA$layerA,hgsedA$layerA_mod)
hgsedB_err<-e1(hgsedB$layerB,hgsedB$layerB_mod)
hgsedC_err<-e1(hgsedC$layerC,hgsedC$layerC_mod)

pw_mehg_err<-e1(PW_mehg$dd_mehg , PW_mehg$mm_mehg)
pw_err<-e1(PW_hg$dd,PW_hg$mm)
mehgsedA_err<-e1(mehgsedA$datsurfmehg,mehgsedA$modsurfmehg)
mehgsedB_err<-e1(mehgsedB$layerB_mehg,mehgsedB$modlayerB_mehg)
mehgsedC_err<-e1(mehgsedC$layerC_mehg,mehgsedC$modlayerC_mehg)

corila_hg_err<-e1(corila_hg$hgD_dat, corila_hg$hgD_mod)
corila_mehg_err<-e1(corila_mehg$mehgD_dat, corila_mehg$mehgD_mod)
SPM_err<-e1(SPM1$dd_SPM,SPM1$mm_SPM)
POM_err<-e1(POM1$dd_POM,POM1$mm_POM)


hwc          <-cor(hgw$datiw, hgw$modew)
hgsedAc      <-cor(hgsedA$layerA, hgsedA$layerA_mod)
hgsedBc      <-cor(hgsedB$layerB, hgsedB$layerB_mod)
hgsedCc      <-cor(hgsedC$layerC,hgsedC$layerC_mod)
pw_mehg_c    <-cor(PW_mehg$dd_mehg, PW_mehg$mm_mehg)
pw_c         <-cor(PW_hg$dd,PW_hg$mm)
mehgsedA_c   <-cor(mehgsedA$datsurfmehg,mehgsedA$modsurfmehg)
corila_hg_c  <-cor(corila_hg$hgD_dat, corila_hg$hgD_mod)
corila_mehg_c<-cor(corila_mehg$mehgD_dat, corila_mehg$mehgD_mod)
SPM_c        <-cor(SPM1$dd_SPM,SPM1$mm_SPM)
POM_c        <-cor(POM1$dd_POM,POM1$mm_POM)
mehgsedB_c   <-cor(mehgsedB$layerB_mehg,mehgsedB$modlayerB_mehg)
mehgsedC_c   <-cor(mehgsedC$layerC_mehg,mehgsedC$modlayerC_mehg)


hgw2_err<-e1(hgw2$datiw, hgw2$modew)
hgsedA2_err<-e1(hgsedA2$layerA,hgsedA2$layerA_mod)
hgsedB2_err<-e1(hgsedB2$layerB,hgsedB2$layerB_mod)
hgsedC2_err<-e1(hgsedC2$layerC,hgsedC2$layerC_mod)

PW_mehg2_err<-e1(PW_mehg2$dd_mehg , PW_mehg2$mm_mehg)
pw2_err<-e1(PW_hg2$dd,PW_hg2$mm)
mehgsedA2_err<-e1(mehgsedA2$datsurfmehg,mehgsedA2$modsurfmehg)
mehgsedB2_err<-e1(mehgsedB2$layerB_mehg,mehgsedB2$modlayerB_mehg)
mehgsedC2_err<-e1(mehgsedC2$layerC_mehg,mehgsedC2$modlayerC_mehg)

corila_hg2_err<-e1(corila_hg2$hgD_dat, corila_hg2$hgD_mod)
corila_mehg2_err<-e1(corila_mehg2$mehgD_dat, corila_mehg2$mehgD_mod)
SPM2_err<-e1(SPM12$dd_SPM,SPM12$mm_SPM)
POM2_err<-e1(POM12$dd_POM,POM12$mm_POM)

hwc2          <-cor(hgw2$datiw, hgw2$modew)
hgsedA2c      <-cor(hgsedA2$layerA, hgsedA2$layerA_mod)
hgsedB2c      <-cor(hgsedB2$layerB, hgsedB2$layerB_mod)
hgsedC2c      <-cor(hgsedC2$layerC,hgsedC2$layerC_mod)
PW_mehg2_c    <-cor(PW_mehg2$dd_mehg, PW_mehg2$mm_mehg)
pw2_c         <-cor(PW_hg2$dd,PW_hg2$mm)
mehgsedA2_c   <-cor(mehgsedA2$datsurfmehg,mehgsedA2$modsurfmehg)
corila_hg2_c  <-cor(corila_hg2$hgD_dat, corila_hg2$hgD_mod)
corila_mehg2_c<-cor(corila_mehg2$mehgD_dat, corila_mehg2$mehgD_mod)
SPM2_c        <-cor(SPM12$dd_SPM,SPM12$mm_SPM)
POM2_c        <-cor(POM12$dd_POM,POM12$mm_POM)
mehgsedB2_c   <-cor(mehgsedB2$layerB_mehg,mehgsedB2$modlayerB_mehg)
mehgsedC2_c   <-cor(mehgsedC2$layerC_mehg,mehgsedC2$modlayerC_mehg)


#png('Accuracy_and_correlation46_buonaf_buonaM.png', height =21 , width = 21, units='cm',res=300)
par(mar=c(4.3,4.3,1,1), bty='n', mfrow=c(1,1))

plot(hgsedAc,hgsedA_err, xlim=c(-1,1), ylim=c(-1.5,1), 
     col='black', bg='#D5A22788', lwd=2, pch=2, cex=2, ylab='Coefficient of Efficiency (E1)', xlab='Pearson s Correlation (r)')
abline(v=0,col='grey60',lty=3)
abline(h=0,col='grey60',lty=3)
par(new=T)
plot(hgsedBc,hgsedB_err, xlim=c(-1,1), ylim=c(-1.5,1), col='black',bg='#FF8C0088', lwd=2, pch=3, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(hgsedCc,hgsedC_err, xlim=c(-1,1), ylim=c(-1.5,1), col='black',  lwd=2, pch=22, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(mehgsedA_c,mehgsedA_err, xlim=c(-1,1), ylim=c(-1.5,1), col=1,bg='#993f6c88', lwd=2, pch=6, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(mehgsedB_c,mehgsedB_err, xlim=c(-1,1), ylim=c(-1.5,1), col=1, lwd=2, pch=4, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(mehgsedC_c,mehgsedC_err, xlim=c(-1,1), ylim=c(-1.5,1), col=1,  lwd=2, pch=14, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(pw_c,pw_err, xlim=c(-1,1), ylim=c(-1.5,1), col=1, lwd=2, pch=23, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(pw_mehg_c,pw_mehg_err, xlim=c(-1,1), ylim=c(-1.5,1), col=1,bg='#cc549088', lwd=2, pch=9, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(hwc,hgw_err, xlim=c(-1,1), ylim=c(-1.5,1), col='black',bg='#4040ff88', lwd=2, pch=1, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(corila_hg_c,corila_hg_err, xlim=c(-1,1), ylim=c(-1.5,1), col=1,bg='#00666688', lwd=2, pch=8, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(corila_mehg_c,corila_mehg_err, xlim=c(-1,1), ylim=c(-1.5,1), col=1,bg='#00cccc88', lwd=2, pch=13, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(SPM_c,SPM_err, xlim=c(-1,1), ylim=c(-1.5,1), col=1,bg='#00cccc88', lwd=2, pch=16, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(POM_c,POM_err, xlim=c(-1,1), ylim=c(-1.5,1), col=1,bg='#00cccc88', lwd=2, pch=18, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')

par(new=T)
plot(hgsedA2c,hgsedA2_err, xlim=c(-1,1), ylim=c(-1.5,1), 
     col=2, bg='#D5A22788', lwd=2, pch=2, cex=2, ylab='Coefficient of Efficiency (E1)', xlab='Pearson s Correlation (r)')
par(new=T)
plot(hgsedB2c,hgsedB2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2,bg='#FF8C0088', lwd=2, pch=3, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(hgsedC2c,hgsedC2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2,  lwd=2, pch=22, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(mehgsedA2_c,mehgsedA2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2,bg='#993f6c88', lwd=2, pch=6, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(mehgsedB2_c,mehgsedB2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2, lwd=2, pch=4, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(mehgsedC2_c,mehgsedC2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2,  lwd=2, pch=14, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(pw2_c,pw2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2, lwd=2, pch=23, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(PW_mehg2_c,PW_mehg2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2,bg='#cc549088', lwd=2, pch=9, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(hwc2,hgw2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2,bg='#4040ff88', lwd=2, pch=1, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(corila_hg2_c,corila_hg2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2,bg='#00666688', lwd=2, pch=8, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(corila_mehg2_c,corila_mehg2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2,bg='#00cccc88', lwd=2, pch=13, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(SPM2_c,SPM2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2,bg='#00cccc88', lwd=2, pch=16, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')
par(new=T)
plot(POM2_c,POM2_err, xlim=c(-1,1), ylim=c(-1.5,1), col=2,bg='#00cccc88', lwd=2, pch=18, cex=2, ylab='', xlab='', xaxt='n', yaxt='n')

legend(-1.05,1, cex=0.7,pch=c(2,3,22,6,4,14,23,9,1,8,13,16,18), legend=c('sediment Hg - layer A',
                                                                 'sediment Hg - layer B','sediment Hg - layer C','sediment MeHg - layer A', 
                                                                 'sediment MeHg - layer B', 'sediment MeHg - layer C', 'pore-water Hg - layers A, B, C',  
                                                                 'pore-water MeHg - layers A, B, C','water HgT','water HgD','water MeHgD', 'water SPM','water POM'), bty='n')
#legend(0.2,-.5, pch=c(),  legend=c(,
#    cex=1, bty='n')
#dev.off()
