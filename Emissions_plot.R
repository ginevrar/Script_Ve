setwd('C:\\Users\\Acer\\Dropbox\\')

  data<-read.csv('Emissions.csv', sep=';',header=T, colClasses = 'numeric' )
str(data)

In2001<-9.8	
In2004<-4.3	
In2007<-4.6	
In2008<-9.3	
In2009<-9.62	
In2010<-6.23	

In2001_2010<-c(9.8,NA,NA,4.3,NA,NA,4.6,9.3,9.6,6.3)
In2001_2010_ok<-data.frame(data$year[67:76],In2001_2010)
names(In2001_2010_ok)<-c('year','Hg')
 plot(In2001_2010)

 # dev.new()
  png('Emissions223.png', height=21, width=21, units='cm', 
      res=300)
  par(bty='n', mfrow=c(3,2), mar=c(3.1,4.1 ,3.1, 1.1), mgp=c(2.3,1,0),cex.lab=1.3 )
  
  layout(matrix(c(1,2,3,4,5,5),3, 2, byrow = TRUE))
  
  
  plot(data$year,data$Zn_a_ef, type='l', col='darkgoldenrod', lwd=3, ylim=c(0,8), 
       main='Emission Factors to air', ylab='', xlab='')
  par(new=T)
  plot(data$year,data$Cl_a_ef, type='l', col='lightcyan3', lwd=3, ylim=c(0,8), ylab='', xlab='')
  par(new=T)
  plot(data$year,data$NaOH_a_ef, type='l', col='lightcyan4', lwd=3, ylim=c(0,8), 
       ylab=expression(paste('kg '[Hg-emitt.]*' / Mg '[i-prod.])), xlab=' ')
  text(data$year[4],8,'A', cex=1.5)
  
  legend(data$year[43],8.2,col=c('darkgoldenrod','lightcyan3','lightcyan4'), bty='n',
         legend = c('Ef,Zn,t','Ef,Cl2,t','Ef,NaOH,t'), pch=15, cex=1.3)
  
  plot(data$year,data$Zn_w_ef, type='l', col='darkgoldenrod', lwd=3, ylim=c(0,14), 
       main='Emission Factors to water', ylab='', xlab='')
  par(new=T)
  plot(data$year,data$Cl_w_ef, type='l', col='lightcyan3', lwd=3, ylim=c(0,14), ylab='', xlab='')
  par(new=T)
  plot(data$year,data$NaOH_w_ef, type='l', col='lightcyan4', lwd=3, ylim=c(0,14), 
       ylab=expression(paste('kg '[Hg-emitt.]*' / Mg '[i-prod.])), xlab=' ')
  text(data$year[4],14,'B', cex=1.5)
   
  plot(data$year,data$Em_a_Hg_Cl2, type='l', col='lightcyan3', lwd=3, 
       main='Hg Emitted to air', ylab='', xlab='', ylim=c(0,1100))
  par(new=T)
  plot(data$year,data$Em_a_Hg_NaOH, type='l', col='lightcyan4', ylim=c(0,1100), lwd=3,  ylab=expression(paste('kg y'^-1)), xlab='')
  text(data$year[4],1100,'C', cex=1.5)
  par(new=T)
  plot(data$year,data$Em_a_Hg_Zn, type='l', col='darkgoldenrod', ylim=c(0,1100), lwd=3,  ylab=expression(paste('kg y'^-1)), xlab='')
 #  par(new=T)
  
  plot(data$year,data$Em_w_Hg_Cl2, type='l', col='lightcyan3', lwd=3, 
       main='Hg Emitted to water', ylab='', xlab='', ylim=c(0,2000))
  par(new=T)
  plot(data$year,data$Em_w_Hg_NaOH, type='l', col='lightcyan4', ylim=c(0,2000), lwd=3,  ylab=expression(paste('kg y'^-1)), xlab='')
  text(data$year[4],2000,'D', cex=1.5)
  par(new=T)
  plot(data$year,data$Em_w_Hg_Zn, type='l', col='darkgoldenrod', ylim=c(0,2000), lwd=3,  ylab=expression(paste('kg y'^-1)), xlab='')
  #  par(new=T)
#  plot(data$year,data$Tot1_a, type='l', col='black', lwd=3, 
#       main='Hg Emitted to water', ylab='', xlab='', ylim=c(0,1100))
#  par(new=T)
#  plot(data$year,data$Tot2_a, type='l', col='lightcyan4', ylim=c(0,1100), lwd=3,  ylab=expression(paste('kg y'^-1)), xlab='')
  #text(data$year[4],1100,'D', cex=1.5)
 # dev.off()
  
  In_lag1<-c(12,13,7  ,7, 6, 7, 7, 7, 7, 7, 7, 7)
  In_lag2<-c(56,21,18,18,11,15,13,12,12,12,12,11)
  
  plot(data$year[65:76],In_lag1,type='b', pch=8,lwd=2,cex=1.9,
       xlim=c(1999,2010), col='lightcyan3',bg='lightcyan3', 
       ylab=expression(paste('kg y'^-1)), xlab='', main='Hg load to lagoon water',ylim=c(0,40))
  par(new=T)
  plot(data$year[65:76],In_lag2,type='b', col='lightcyan4',bg='lightcyan4', 
       ylab=expression(paste('kg y'^-1)), xlab='',lwd=2,
       xlim=c(1999,2010),pch=23, ylim=c(0,40))
  par(new=T)
  plot(In2001_2010_ok$year, In2001_2010_ok$Hg, xlim=c(1999,2010),type='p', 
       ylab=expression(paste('kg y'^-1)), xlab='',cex=2,pch=25,
       ylim=c(0,40),col=1)
  text(4,40,'E', cex=1.5)
  
  legend(data$year[72],38,col=c('lightcyan3','lightcyan4','black'), bty='n',
         legend = c('Input from Cl2 + Zn', 'Input from NaOH + Zn','E-PRTR data'),  pch=c(8,23,25), cex=1.5)
  dev.off()
  getwd()

