#setwd('C:/Users/gi/Dropbox/fin92b/mehg4')
setwd('C:/Users/Acer/Dropbox/fin92b/mehg4/oksolid8')
pomw<-read.table('POM_perTaylorD.txt', header=T)
spmw<-read.table('SPM_perTaylorD.txt', header=T)
pom_surfsed<-read.table('POM_surfsed_perTaylorD.txt', header=T)
pom_subsed<-read.table('POM_subssed_perTaylorD.txt', header=T)

setwd('C:/Users/Acer/Dropbox/fin92b/mehg4/oksolid6')
#setwd('G:/Il mio Drive/MERCURIO/Venezia/fin92b/oksolid4')
pomwo<-read.table('POM_perTaylorD.txt', header=T)
spmwo<-read.table('SPM_perTaylorD.txt', header=T)
pom_surfsedo<-read.table('POM_surfsed_perTaylorD.txt', header=T)
pom_subsedo<-read.table('POM_subssed_perTaylorD.txt', header=T)


plot(pomwo$dd_POM, ylim=c(0,5))
par(new=T)
plot(pomwo$mm_POM, ylim=c(0,5), col=2, type='l')
par(new=T)
plot(pomw$mm_POM, ylim=c(0,5), col=3, type='l')

plot(spmwo$dd_SPM, ylim=c(0,45))
par(new=T)
plot(spmwo$mm_SPM, ylim=c(0,45), col=2, type='l')
par(new=T)
plot(spmw$mm_SPM, ylim=c(0,45), col=3, type='l')
legend(1,45,legend=c('old','new'), col=c(2,3), pch=c(18,19))

# SAVE as SVG and modify with inkscape
library('plotrix')
#svg(filename="meHg_m1_m6-m7.svg", pointsize = 18)
win.graph()
par(mar=c(12,12,12,12))


taylor.diagram(pomw$dd_POM, pomw$mm_POM,add=FALSE,col="green",bg='gray',pos.cor=T,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=19, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)

taylor.diagram(pomwo$dd_POM, pomwo$mm_POM,add=TRUE,col="green",bg='gray',pos.cor=T,pch=18
               ,normalize=TRUE,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1)


text(1.5,0.1, labels = "POM in water", col="green", font=4, cex=1)

taylor.diagram(spmw$dd_SPM, spmw$mm_SPM,add=TRUE,col="#FFE700",bg='gray',pos.cor=T,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=19, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)

taylor.diagram(spmwo$dd_SPM, spmwo$mm_SPM,add=TRUE,col="#FFE700",bg='gray',pos.cor=T,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=18, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)
text(1.5,0.5, labels = "SPM in water", col="yellow", font=4, cex=1)

taylor.diagram(pom_surfsed$surf_POC_d, pom_surfsed$surf_POC_m,add=TRUE,col="orange",bg='gray',pos.cor=T,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=19, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)
text(1.5,0.3, labels = "POM surface sediment", col="orange", font=4, cex=1)

taylor.diagram(pom_surfsedo$surf_POC_d, pom_surfsedo$surf_POC_m,add=TRUE,col="orange",bg='gray',pos.cor=T,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=18, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)
#text(1.5,0.4, labels = "Hg sub-surface sediment", col="orange", font=4, cex=1)

taylor.diagram(pom_subsed$subsurf_POC_d, pom_subsed$subsurf_POC_m,add=TRUE,col="hotpink",bg='gray',pos.cor=T,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=19, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)

taylor.diagram(pom_subsedo$subsurf_POC_d, pom_subsedo$subsurf_POC_m,add=TRUE,
               col="hotpink",bg='gray',pos.cor=T,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=F, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=2, pch=18, 
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=TRUE)
text(1.5,0.7, labels = "POM sub-surface sediment", col="hotpink3", font=4, cex=1)

