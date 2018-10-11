setwd('C:/Users/Acer/Desktop/baba/buona')

hgw<-read.table('acque_perTaylorD.txt', header=T)
hgsedA<-read.table('surf_sedhg_taylor.txt', header=T)
hgsedB<-read.table('subsurf_sedhg_taylor.txt', header=T)
mehgsedA<-read.table('sedMehg_perTaylorD.txt')
PW_hg<-read.table('pw_hg_perTaylorD.txt', header=T)
PW_mehg<-read.table('pw_mehg_perTaylorD.txt', header=T)
corila_hg<-read.table('Corila_hg_perTaylorD.txt', header=T)
corila_mehg<-read.table('Corila_mehg_perTaylorD.txt', header=T)


e1 <- function (obs, pred) {(1-
    sum(abs(obs-pred)) / sum(abs(obs-mean(obs)))) 
}


hgw_err<-e1(hgw$datiw, hgw$modew)
hgsedA_err<-e1(hgsedA$layerA,hgsedA$layerA_mod)
hgsedB_err<-e1(hgsedB$layerB,hgsedB$layerB_mod)
pw_mehg_err<-e1(PW_mehg$dd_mehg , PW_mehg$mm_mehg)
pw_err<-e1(PW_hg$dd,PW_hg$mm)
mehgsedA_err<-e1(mehgsedA$datsurfmehg,mehgsedA$modsurfmehg)
corila_hg_err<-e1(corila_hg$hgD_dat, corila_hg$hgD_mod)
corila_mehg_err<-e1(corila_mehg$mehgD_dat, corila_mehg$mehgD_mod)


hwc        <-cor(hgw$datiw, hgw$modew)
hgsedAc    <-cor(hgsedA$layerA, hgsedA$layerA_mod)
hgsedBc    <-cor(hgsedB$layerB, hgsedB$layerB_mod)
pw_mehg_c  <-cor(PW_mehg$dd_mehg, PW_mehg$mm_mehg)
pw_c       <-cor(PW_hg$dd,PW_hg$mm)
mehgsedA_c <-cor(mehgsedA$datsurfmehg,mehgsedA$modsurfmehg)
corila_hg_c<-cor(corila_hg$hgD_dat, corila_hg$hgD_mod)
corila_mehg_c<-cor(corila_mehg$mehgD_dat, corila_mehg$mehgD_mod)

setwd('C:/Users/Acer/Desktop/baba/buona/double_in/e')

hgw2<-read.table('acque_perTaylorD.txt', header=T)
hgsedA2<-read.table('surf_sedhg_taylor.txt', header=T)
hgsedB2<-read.table('subsurf_sedhg_taylor.txt', header=T)
mehgsedA2<-read.table('sedMehg_perTaylorD.txt')
PW_hg2<-read.table('pw_hg_perTaylorD.txt', header=T)
PW_mehg2<-read.table('pw_mehg_perTaylorD.txt', header=T)
corila_hg2<-read.table('Corila_hg_perTaylorD.txt', header=T)
corila_mehg2<-read.table('Corila_mehg_perTaylorD.txt', header=T)



hgw_err2<-e1(hgw2$datiw, hgw2$modew)
hgsedA_err2<-e1(hgsedA2$layerA,hgsedA2$layerA_mod)
hgsedB_err2<-e1(hgsedB2$layerB,hgsedB2$layerB_mod)
pw_mehg_err2<-e1(PW_mehg2$dd_mehg , PW_mehg2$mm_mehg)
pw_err2<-e1(PW_hg2$dd,PW_hg$mm)
mehgsedA_err2<-e1(mehgsedA2$datsurfmehg,mehgsedA2$modsurfmehg)
corila_hg_err2<-e1(corila_hg2$hgD_dat, corila_hg2$hgD_mod)
corila_mehg_err2<-e1(corila_mehg2$mehgD_dat, corila_mehg2$mehgD_mod)


hwc2     <-cor(hgw2$datiw, hgw2$modew)
hgsedAc2 <-cor(hgsedA2$layerA, hgsedA2$layerA_mod)
hgsedBc2 <-cor(hgsedB2$layerB, hgsedB2$layerB_mod)
pw_mehg_c2<-cor(PW_mehg2$dd_mehg, PW_mehg2$mm_mehg)
pw_c2<-cor(PW_hg2$dd,PW_hg2$mm)
mehgsedA_c2<-cor(mehgsedA2$datsurfmehg,mehgsedA2$modsurfmehg)
corila_hg_c2<-cor(corila_hg2$hgD_dat, corila_hg2$hgD_mod)
corila_mehg_c2<-cor(corila_mehg2$mehgD_dat, corila_mehg2$mehgD_mod)

plot(hwc,hgw_err, xlim=c(-1,1), ylim=c(-1,1), col='black',bg='#4040ff88', lwd=2, pch=21, cex=2)
abline(v=0,col='grey60',lty=2)
abline(h=0,col='grey60',lty=2)
par(new=T)
plot(hgsedAc,hgsedA_err, xlim=c(-1,1), ylim=c(-1,1), col='black', bg='#D5A22788', lwd=2, pch=21, cex=2)
par(new=T)
plot(hgsedBc,hgsedB_err, xlim=c(-1,1), ylim=c(-1,1), col='black',bg='#FF8C0088', lwd=2, pch=21, cex=2)
par(new=T)
plot(pw_mehg_c,pw_mehg_err, xlim=c(-1,1), ylim=c(-1,1), col=1,bg='#cc549088', lwd=2, pch=21, cex=2)
par(new=T)
plot(pw_c,pw_err, xlim=c(-1,1), ylim=c(-1,1), col=1,bg='#99d82b88', lwd=2, pch=21, cex=2)
par(new=T)
plot(mehgsedA_c,mehgsedA_err, xlim=c(-1,1), ylim=c(-1,1), col=1,bg='#993f6c88', lwd=2, pch=21, cex=2)
par(new=T)
plot(corila_hg_c,corila_hg_err, xlim=c(-1,1), ylim=c(-1,1), col=1,bg='#00666688', lwd=2, pch=21, cex=2)
par(new=T)
plot(corila_mehg_c,corila_mehg_err, xlim=c(-1,1), ylim=c(-1,1), col=1,bg='#00cccc88', lwd=2, pch=21, cex=2)

par(new=T)

plot(hwc2,hgw_err2, xlim=c(-1,1), ylim=c(-1,1), col='black',bg='#4040ff88', lwd=2, pch=23, cex=1.5)
par(new=T)
plot(hgsedAc2,hgsedA_err2, xlim=c(-1,1), ylim=c(-1,1), col='black', bg='#D5A22788', lwd=2, pch=23, cex=1.5)
par(new=T)
plot(hgsedBc2,hgsedB_err2, xlim=c(-1,1), ylim=c(-1,1), col='black',bg='#FF8C0088', lwd=2, pch=23, cex=1.5)
par(new=T)
plot(pw_mehg_c2,pw_mehg_err2, xlim=c(-1,1), ylim=c(-1,1), col=1,bg='#cc549088', lwd=2, pch=23, cex=1.5)
par(new=T)
plot(pw_c2,pw_err2, xlim=c(-1,1), ylim=c(-1,1), col=1,bg='#99d82b88', lwd=2, pch=23, cex=1.5)
par(new=T)
plot(mehgsedA_c2,mehgsedA_err2, xlim=c(-1,1), ylim=c(-1,1), col=1,bg='#993f6c88', lwd=2, pch=23, cex=1.5)
par(new=T)
plot(corila_hg_c2,corila_hg_err2, xlim=c(-1,1), ylim=c(-1,1), col=1,bg='#00666688', lwd=2, pch=23, cex=1.5)
par(new=T)
plot(corila_mehg_c2,corila_mehg_err2, xlim=c(-1,1), ylim=c(-1,1), col=1,bg='#00cccc88', lwd=2, pch=23, cex=1.5)

legend(-1,1,col=c('royalblue', 'darkgoldenrod','darkorange','hotpink4','darkolivegreen3', 
                      'hotpink','cyan4','cyan'), legend=c('Hg in water', 'Hg in sediment - layer A',
       'Hg in sediment - layer B','MeHg in sediment - layer A', 'Hg in pore-water - layers A, B, c',
       'MeHg in pore-water- layers A, B, c','HgD in water','MeHgD in water'), cex=0.8, pch=19)
