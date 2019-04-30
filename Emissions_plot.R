setwd('C:\\Users\\Acer\\Dropbox\\')

  data<-read.csv('Emissions.csv', sep=';', colClasses='numeric')

 # dev.new()
  png('Emissions2.png', height=21, width=21, units='cm', 
      res=300)
  par(bty='n', mfrow=c(2,2), mar=c(3.1,4.1 ,3.1, 1.1), mgp=c(2.3,1,0),cex.lab=1.3 )
  
  plot(data$year,data$Zn_a_ef, type='l', col='darkgoldenrod', lwd=3, ylim=c(0,8), 
       main='Emission Factors to air', ylab='', xlab='')
  par(new=T)
  plot(data$year,data$Cl2_a_ef, type='l', col='lightcyan3', lwd=3, ylim=c(0,8), ylab='', xlab='')
  par(new=T)
  plot(data$year,data$NaOH_a_ef, type='l', col='lightcyan4', lwd=3, ylim=c(0,8), 
       ylab=expression(paste('kg '[Hg-emitt.]*' / Mg '[i-prod.])), xlab=' ')
  text(data$year[4],8,'A', cex=1.5)
  
  legend(data$year[43],8.2,col=c('darkgoldenrod','lightcyan3','lightcyan4'), bty='n',
         legend = c('Ef,Zn,t','Ef,Cl2,t','Ef,NaOH,t'), pch=15, cex=1.3)
  
  plot(data$year,data$Zn_w_ef, type='l', col='darkgoldenrod', lwd=3, ylim=c(0,14), 
       main='Emission Factors to water', ylab='', xlab='')
  par(new=T)
  plot(data$year,data$Cl2_w_ef, type='l', col='lightcyan3', lwd=3, ylim=c(0,14), ylab='', xlab='')
  par(new=T)
  plot(data$year,data$NaOH_w_ef, type='l', col='lightcyan4', lwd=3, ylim=c(0,14), 
       ylab=expression(paste('kg '[Hg-emitt.]*' / Mg '[i-prod.])), xlab=' ')
  text(data$year[4],14,'B', cex=1.5)
   
  plot(data$year,data$Hg_a_emitted, type='l', col='lightcyan3', lwd=3, 
       main='Hg Emitted to air', ylab='', xlab='', ylim=c(0,1100))
  par(new=T)
  plot(data$year,data$Hg_a_emitted2, type='l', col='lightcyan4', ylim=c(0,1100), lwd=3,  ylab=expression(paste('kg y'^-1)), xlab='')
  text(data$year[4],1100,'C', cex=1.5)
  
  plot(data$year,data$Hg_w_emitted, type='l', col='lightcyan3', lwd=3, 
       main='Hg Emitted to water', ylab='', xlab='', ylim=c(0,2000))
  par(new=T)
  plot(data$year,data$Hg_w_emitted2, type='l', col='lightcyan4', ylim=c(0,2000), lwd=3,  ylab=expression(paste('kg y'^-1)), xlab='')
  text(data$year[4],2000,'D', cex=1.5)
  dev.off()

  getwd()
    
  )  