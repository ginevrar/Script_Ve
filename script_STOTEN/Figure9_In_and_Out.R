# first run Input_simCl2_OK.R
# then run 2_volat.R
# then 2BalAdvection_dispersion.R
# then 1_Reservoirs_HG!!.R

png('Reservoirs_tutto2bbbcddde.png',
    width = 18, height = 12,res=600, units='cm')     # width = 32, height = 18,res=400,

par(mfrow=c(2,3),mar=c(2,3.5,2.5,0.5), cex=0.7,cex.axis=1.1,cex.main=1,
    oma=c(0,0,0,0), bty='n', mgp=c(2.3,.8,0))
#par(mfrow=c(1,1))
plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,1600),
     col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in[1:201], type='l',lwd=2, col='gray10', 
     ylab=expression(paste('kg y'^-1)),ylim=c(0,1600),xlab=' ',
     yaxt='n',lty=3)
par(new=T)
plot(rdate[1:201],-export[1:201]+WWW[1:201], type='l',lwd=2,
     col='gray50', lty=2,
     ylab=' ',ylim=c(0,1600),xlab=' ',yaxt='n',
     main=expression(paste('Hg'[T]~'inputs and outputs')))
legend(rdate[100], 1600, col=c('gray10','gray50' ),cex=1.1,
       legend=c('Inputs','Outputs'), bty='n',lty=c(3,2))
mtext('a', side=3,cex=1.5,adj=0)
ax<-seq(0,1500,by=500)
axis(side=2,at=ax, las=2)

plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
mtext('b', side=3,cex=1.5,adj=0)

par(new=T)
plot(rdate[1:201],tot_in[1:201], type='l',lwd=1.5, col='gray10', lty=3,
     ylab='',ylim=c(0,1600),xlab=' ',
     yaxt='n')
par(new=T)
plot(rdate[1:201],-export[1:201]+WWW[1:201], type='l',
     lwd=1.5,col='gray50', lty=2,
     ylab=' ',ylim=c(0,1600),xlab=' ',yaxt='n')
par(new=T)

plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2, 
     col='#6666b3', ylab='kg',ylim=c(0,50),xlab=' ',yaxt='n',
     main=expression(paste('Hg'[T]~'water reservoir')))
ax<-seq(0,50,by=10)
axis(side=2,at=ax, las=2)
#abline(v=rdate[72])
#abline(v=rdate[81])

#abline(v=rdate[73])
yy1<-c(0,0,22000,22000)
plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
mtext('c', side=3,cex=1.5,adj=0)
par(new=T)
plot(rdate[1:201],tot_in[1:201], type='l',lwd=1.5, col='gray10', lty=3,
     ylab='',ylim=c(0,1600),xlab=' ',
     yaxt='n')
par(new=T)
plot(rdate[1:201],-export[1:201]+WWW[1:201], type='l',
     lwd=1.5,col='gray50', lty=2,
     ylab=' ',ylim=c(0,1600),xlab=' ',yaxt='n')
par(new=T)
plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,22000), yaxt='n',
     ylab=' ',xlab=' ', col='darkgoldenrod',
     main = expression(paste("Hg"[T]~"sediment reservoir")))
ax<-seq(0,22000,by=4000)
axis(side=2,at=ax, las=2)
mtext(side=2, text='kg', line=3.3, cex = .7)
par(new=T)
plot(rdate[1:201],tot_ddeeps[1:201], type='l',lwd=2, ylab=' ',xlab=' ', ylim=c(0,22000),yaxt='n',col='brown')
text(rdate[35],19000,'surface \n sediment \n (0 - 5 cm)', col='darkgoldenrod', cex=0.9) 
text(rdate[150],17000,'subsurface \n sediment \n (6 - 30 cm)', col='brown', cex=0.9) 

ax<-seq(0,22000,by=4000)
axis(side=2,at=ax, las=2)

tot_in_mhg<-IN$riv_mehg.riv_mehg+(IN$ind3*1/100)

(export[72]-export[121])/export[121]*100

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T) 
plot(rdate[1:201],tot_in_mhg[1:201], type='l',lwd=2, col='gray10',lty=3,
     ylab=expression(paste('kg y'^-1)),ylim=c(0,20),xlab=' ',yaxt='n',
     main=expression(paste('MeHg'[T]~'inputs and outputs')))
mtext('d', side=3,cex=1.5,adj=0)

par(new=T)
plot(rdate[1:201],-export_mhg[1:201], type='l',lwd=2,lty=2, col='grey50', 
     ylab=' ',ylim=c(0,20),xlab=' ',yaxt='n',
     main=expression(paste(' ')))
#legend(rdate[130], 14, col=c('dimgrey','slateblue1' ),legend=c('Inputs','Outputs'))
legend(rdate[100], 20, col=c('grey10','grey50' ),cex=1.1,
       legend=c('Inputs','Outputs'), bty='n',lty=c(3,2))
ax<-seq(0,20,by=5)
axis(side=2,at=ax, las=2)


#legend(rdate[100], 1600, col=c('gray10','gray50' ),cex=1.1,
#       legend=c('Inputs','Outputs'), bty='n',lty=c(3,2))

plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
mtext('e', side=3,cex=1.5,adj=0)

par(new=T) 
plot(rdate[1:201],tot_in_mhg[1:201], type='l',lwd=1.5, col='gray10',lty=3,
     ylab='',ylim=c(0,20),xlab=' ',yaxt='n',
     main='')
par(new=T)
plot(rdate[1:201],-export_mhg[1:201], type='l',lwd=1.5, col='gray50', lty=2,
     ylab=' ',ylim=c(0,20),xlab=' ',yaxt='n',
     main=expression(paste(' ')))
par(new=T)
plot(rdate[1:201],total_reservoir_W_mehg [1:201],ylim=c(0,0.4), type='l',yaxt='n',
     lwd=2, ylab='kg',xlab=' ',col='#6666b3',main=expression(paste('MeHg'[T]~'water reservoir')))
ax<-seq(0,.40,by=.2)
axis(side=2,at=ax, las=2)

yy2<-c(0,0,22000,22000)
#plot(rdate[1:201],export_mhg[1:201]/export_mhg[121])
#abline(v=rdate[70])
plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy2, col='#68676733',border = NA)
polygon(Eutrop,yy2, col='#3a871f66',border = NA)
mtext('f', side=3,cex=1.5,adj=0)
par(new=T) 
plot(rdate[1:201],tot_in_mhg[1:201], type='l',lwd=1.5, col='gray10',lty=3,
     ylab='',xlab=' ',yaxt='n')
par(new=T)
plot(rdate[1:201],-export_mhg[1:201], type='l',lwd=1.5, col='gray50', lty=2,
     ylab=' ',ylim=c(0,20),xlab=' ',yaxt='n',
     main=expression(paste(' ')))
par(new=T)
plot(rdate[1:201],total_reservoir_Sed_mehg[1:201], type='l',lwd=2, ylim=c(0,30),xlab=' ',yaxt='n',
     ylab='kg', col='darkgoldenrod', 
     main=expression(paste("MeHg"[T]~"sediment reservoir")))
text(rdate[35],24,'surface \n sediment \n (0 - 5 cm)', col='darkgoldenrod', cex=0.9) 
text(rdate[145],18,'subsurface \n sediment \n (6 - 30 cm)', col='brown', cex=0.9) 
#title(bquote(atop("MeHg"[T]~"sediment reservoir")))
ax<-seq(0,30,by=10)
axis(side=2,at=ax, las=2)
par(new=T)
plot(years,tot_ddeeps_mehg[1:201], type='l',lwd=2,ylab='kg',ylim=c(0,30),yaxt='n',xaxt='n',
     xlab=' ', col='brown') #,main=expression(paste('MeHg'[T]~'water reservoir')))
dev.off()

