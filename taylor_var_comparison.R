  setwd('C:/Users/Acer/Dropbox/fin92b/mehg4/oksolid41f') #setwd('C:/Users/Acer/Dropbox/fin92b/mehg4/oksolid7')
  setwd('C:/Users/Acer/Desktop/baba/buona')
  
  hgw<-read.table('acque_perTaylorD.txt', header=T)
  hgsedA<-read.table('surf_sedhg_taylor.txt', header=T)
  hgsedB<-read.table('subsurf_sedhg_taylor.txt', header=T)
  mehgsedA<-read.table('sedMehg_perTaylorD.txt')
  PW_hg<-read.table('pw_hg_perTaylorD.txt', header=T)
  PW_mehg<-read.table('pw_mehg_perTaylorD.txt', header=T)
  
  corila_hg<-read.table('Corila_hg_perTaylorD.txt', header=T)
  corila_mehg<-read.table('Corila_mehg_perTaylorD.txt', header=T)
  

  setwd('C:/Users/Acer/Desktop/baba/fin87')
  
  hgwo<-read.table('acque_perTaylorD.txt', header=T)
  hgsedAo<-read.table('surf_sedhg_taylor.txt', header=T)
  hgsedBo<-read.table('subsurf_sedhg_taylor.txt', header=T)
  mehgsedAo<-read.table('sedMehg_perTaylorD.txt')
  PW_hgo<-read.table('pw_hg_perTaylorD.txt', header=T)
  PW_mehgo<-read.table('pw_mehg_perTaylorD.txt', header=T)
  
  corila_hgo<-read.table('Corila_hg_perTaylorD.txt', header=T)
  corila_mehgo<-read.table('Corila_mehg_perTaylorD.txt', header=T)
  
  # SAVE as SVG and modify with inkscape
  library('plotrix')
  #svg(filename="meHg_m1_m6-m7.svg", pointsize = 18)
  win.graph()
  par(mar=c(12,12,12,12))
  taylor.diagram(hgw$datiw, hgw$modew,add=FALSE,col="royalblue",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=19, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
  
  taylor.diagram(hgw$datiw, hgwo$modew,add=TRUE,col="black",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=18, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
  
  text(1.5,0.1, labels = "Hg in water", col="royalblue", font=4, cex=1)
  
  taylor.diagram(hgsedA$layerA, hgsedA$layerA_mod,add=TRUE,col="#FFE700",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=19, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
  
  taylor.diagram(hgsedA$layerA, hgsedAo$layerA_mod,add=TRUE,col="#FFE700",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=18, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
  text(1.5,0.4, labels = "Hg surface sediment", col="yellow", font=4, cex=1)
  
  taylor.diagram(hgsedB$layerB, hgsedB$layerB_mod,add=TRUE,col="orange",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=19, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
  text(1.5,0.4, labels = "Hg sub-surface sediment", col="orange", font=4, cex=1)
  
  taylor.diagram(hgsedB$layerB, hgsedBo$layerB_mod,add=TRUE,col="orange",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=18, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
  text(1.5,0.4, labels = "Hg sub-surface sediment", col="orange", font=4, cex=1)
  
  taylor.diagram(mehgsedA$datsurfmehg, mehgsedA$modsurfmehg,add=TRUE,col="hotpink",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=19, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
  
  taylor.diagram(mehgsedA$datsurfmehg, mehgsedAo$modsurfmehg,add=TRUE,
                 col="hotpink",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=18, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
  text(1.5,0.7, labels = "MeHg surface sediment", col="hotpink3", font=4, cex=1)
  
  taylor.diagram(corila_hg$hgD_dat, corila_hg$hgD_mod,add=TRUE,col="cyan4",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=19, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
  text(1.5,0.4, labels = "Hg surface sediment", col="yellow", font=4, cex=1)
  
  
taylor.diagram(corila_hgo$hgD_dat, corila_hgo$hgD_mod,add=TRUE,col="cyan4",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=18, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
text(1.5,0.4, labels = "Hg surface sediment", col="yellow", font=4, cex=1)
  
taylor.diagram(corila_mehg$mehgD_dat, corila_mehg$mehgD_mod,add=TRUE,col="cyan",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=19, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
text(1.5,0.4, labels = "Hg surface sediment", col="yellow", font=4, cex=1)
  
taylor.diagram(corila_mehgo$mehgD_dat, corila_mehgo$mehgD_mod,add=TRUE,col="cyan",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=18, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)

taylor.diagram(PW_hg$dd, PW_hg$mm,add=TRUE,col="darkolivegreen",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=19, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
  text(1.5,0.7, labels = "Hg pore water", col="darkolivegreen", font=4, cex=1)
  
taylor.diagram(PW_hgo$dd, PW_hgo$mm,add=TRUE,col="darkolivegreen",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=18, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)

taylor.diagram(PW_mehg$dd_mehg, PW_mehg$mm_mehg,add=TRUE,col="darkolivegreen3",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=19, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
text(1.5,0.7, labels = "MeHg pore water", col="darkolivegreen3", font=4, cex=1)
  
  
taylor.diagram(PW_mehgo$dd_mehg, PW_mehgo$mm_mehg,add=TRUE,col="darkolivegreen3",bg='gray',pos.cor=F,
                 xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
                 gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
                 sd.method="sample",pcex=2, pch=18, 
                 grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
                 cex.axis=1,normalize=TRUE)
  