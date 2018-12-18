setwd('C:/Users/Acer/Dropbox')
setwd('C:/Users/gi/Dropbox')
corila<-read.table('Corila_dati_acque.txt', header=T,as.is=TRUE)
str(corila)

tmp <- as.Date(corila$data,format="%Y-%m-%d")
tmp2<-format(tmp, "%d-%m-%Y")
  
setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN68')
setwd('C:/Users/Gi/Desktop/NNN59')

  hgd<-read.csv('Dissolved_Divalent_Hg.csv', skip=1)
  names(hgd)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  
  hgDOC<-read.csv('DOC_Sorbed_Divalent_Hg.csv', skip=1)
  names(hgDOC)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  
  hg0<-read.csv('Elemental_Hg.csv', skip=1)
  names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  
  mehgd<-read.csv('Dissolved_Methyl_Hg.csv', skip=1)
  names(mehgd)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  
  mehgDOC<-read.csv('DOC_Sorbed_Methyl_Hg.csv', skip=1)
  names(mehgDOC)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  
  vol<-read.csv('Volatilization_Loss_rate.csv', skip=1)
  names(vol)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                    'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                    'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  
  

  
  time.steps <- hgd[,1]
  
  time.steps3 <- time.steps*24*3600
  TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
  TEMPO[1:10]
  rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
  rdate1<-format(rdate,"%d-%m-%Y" )
  rdate[1313:(1325)]
  rdate1[1313:(1325)]
  ### Bùù
  
  plot(rdate[1322:(1333)],vol$wn1[1322:1333])
  plot(rdate[1322:(1333)],vol$wn2[1322:1333])
  plot(rdate[1322:(1333)],vol$wn3[1322:1333])
  plot(rdate[1322:(1333)],vol$wn4[1322:1333])
  
  
  dissmehg<-mehgd + mehgDOC
  disshg<-hgd + hgDOC 
  
  TEMPOd <-as.POSIXct(corila[,1], tz= "GMT",format="%d-%m-%Y")
  as.POSIXct(corila$data) 
  
  
str(corila$HgII)
str(disshg$wc6[1313:1324])  

#magg09,lug09,ott09, nov09,gen10, mar10
rdate[1324]

hgD_mod<-c(disshg$wc6[1314],disshg$wc6[1316], disshg$wc6[1319], disshg$wc6[1320], disshg$wc6[1322],disshg$wc6[1324]) 

m1<-median(corila$HgII[1],corila$HgII[7])
m2<-median(corila$HgII[2], corila$HgII[8])
m3<-median(corila$HgII[3],corila$HgII[9])
m4<-median(corila$HgII[4],corila$HgII[10])
m5<-median(corila$HgII[5],corila$HgII[11])
m6<-median(corila$HgII[6],corila$HgII[12])                                                                                    

mm1<-median(corila$MeHg[1],corila$MeHg[7])
mm2<-median(corila$MeHg[2],corila$MeHg[8])
mm3<-median(corila$MeHg[3])
mm4<-median(corila$MeHg[10])
mm5<-median(corila$MeHg[5],corila$MeHg[11])
mm6<-median(corila$MeHg[12])  

hgD_dat<-c(m1,m2,m3,m4,m5,m6)
mehgD_dat<-c(mm1,mm2,mm3,mm5,mm6)
mehgD_mod<-c(dissmehg$wc6[1314],dissmehg$wc6[1316], dissmehg$wc6[1319], dissmehg$wc6[1322],dissmehg$wc6[1324]) 

corila_mehg<-data.frame(mehgD_dat, mehgD_mod)
corila_hg<-data.frame(hgD_dat, hgD_mod)

write.table(corila_hg, file = 'Corila_hg_perTaylorD.txt')
write.table(corila_mehg, file = 'Corila_mehg_perTaylorD.txt')

png('disss_hg_mehg_COrila2mwet__.png')
par(mfrow=c(1,2), mgp=c(2,1,0))
plot(tmp,corila$HgII,ylim=c(0,28),pch='-',xaxt='n',type='p',cex=2,xlab='',
     ylab=expression(paste('ng l'^-1)),
     xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
segments(tmp[1],corila$HgII[1],tmp[1],corila$HgII[7])
segments(tmp[2],corila$HgII[2],tmp[2],corila$HgII[8])
segments(tmp[3],corila$HgII[3],tmp[3],corila$HgII[9])
segments(tmp[4],corila$HgII[4],tmp[4],corila$HgII[10])
segments(tmp[5],corila$HgII[5],tmp[5],corila$HgII[11])
segments(tmp[6],corila$HgII[6],tmp[6],corila$HgII[12])
par(new=T)
plot(rdate[1313:1324],(disshg$wc6[1313:1324]), ylim=c(0,28), xaxt='n',xlab='',ylab='',
     xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
  #par(new=T)
  #plot(rdate[1313:(1325)],hg0$wc6[1313:(1325)],xaxt='n',type='l',
   #    xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
axis(side=1, at=rdate[1313:1324],'%d/%m/%Y', labels=rdate[1313:1324])
  
plot(tmp,corila$MeHg,ylim=c(0,.3),pch='-',xaxt='n',type='p',cex=2,xlab='',
     ylab=expression(paste('ng l'^-1)),
     xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
segments(tmp[1],corila$MeHg[1],tmp[1],corila$MeHg[7])
segments(tmp[2],corila$MeHg[2],tmp[2],corila$MeHg[8])
segments(tmp[3],corila$MeHg[3],tmp[3],corila$MeHg[9])
segments(tmp[4],corila$MeHg[4],tmp[4],corila$MeHg[10])
segments(tmp[5],corila$MeHg[5],tmp[5],corila$MeHg[11])
segments(tmp[6],corila$MeHg[6],tmp[6],corila$MeHg[12])
par(new=T)
plot(rdate[1313:(1325)],dissmehg$wc6[1313:(1325)],  ylim=c(0,.3),xaxt='n',xlab='',ylab='',
     xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
axis(side=1, at=rdate[1313:(1325)],'%d/%m/%Y', labels=rdate[1313:(1325)])
dev.off()
  
plot(mehgD_dat, mehgD_mod)

#
#
plot(tmp,corila$MeHg,ylim=c(0,.6),pch='-',xaxt='n',type='p',cex=2,xlab='',
ylab=expression(paste('ng l'^-1)),
xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
segments(tmp[1],corila$MeHg[1],tmp[1],corila$MeHg[7])
segments(tmp[2],corila$MeHg[2],tmp[2],corila$MeHg[8])
segments(tmp[3],corila$MeHg[3],tmp[3],corila$MeHg[9])
segments(tmp[4],corila$MeHg[4],tmp[4],corila$MeHg[10])
segments(tmp[5],corila$MeHg[5],tmp[5],corila$MeHg[11])
segments(tmp[6],corila$MeHg[6],tmp[6],corila$MeHg[12])
par(new=T)
plot(rdate[1313:(1325)],dissmehg$wc6[1313:(1325)],  ylim=c(0,.6),xaxt='n',xlab='',ylab='',
     xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
axis(side=1, at=rdate[1313:(1325)],'%d/%m/%Y', labels=rdate[1313:(1325)])
#######_____________________________ Fine plot Corila hgD ________________________________
#
