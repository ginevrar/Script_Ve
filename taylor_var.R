setwd('C:/Users/Acer/Dropbox/fin91')
hgw<-read.table('acque_perTaylorD.txt', header=T)
hgsedA<-read.table('surf_sedhg_taylor.txt', header=T)
hgsedB<-read.table('subsurf_sedhg_taylor.txt', header=T)
mehgsedA<-read.table('sedMehg_perTaylorD.txt')


setwd('C:/Users/Acer/Dropbox/fin91')
hgw1<-read.table('acque_perTaylorD.txt', header=T)
# SAVE as SVG and modify with inkscape
library('plotrix')
#svg(filename="meHg_m1_m6-m7.svg", pointsize = 18)
win.graph()
par(mar=c(12,12,12,12))
taylor.diagram(hgw$datiw, hgw$modew,add=FALSE,col="black",bg='gray',pos.cor=F,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=19, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)

taylor.diagram(hgw$datiw, hgw$modew,add=TRUE,col="royalblue",bg='gray',pos.cor=F,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=19, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)
text(1.5,0.1, labels = "Hg in water", col="royalblue", font=4, cex=1)

taylor.diagram(hgsedA$layerA, hgsedA$layerA_mod,add=TRUE,col="yellow",bg='gray',pos.cor=F,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=19, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)

taylor.diagram(hgsedB$layerB, hgsedB$layerB_mod,add=TRUE,col="orange",bg='gray',pos.cor=F,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=19, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)

taylor.diagram(mehgsedA$datsurfmehg, mehgsedA$modsurfmehg,add=TRUE,col="hotpink",bg='gray',pos.cor=F,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=19, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)
text(1.5,0.7, labels = "MeHg surface sediment", col="hotpink3", font=4, cex=1)

