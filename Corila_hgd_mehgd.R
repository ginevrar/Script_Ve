setwd('C:/Users/Acer/Dropbox/fin84')

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

setwd('C:/Users/Acer/Dropbox')
corila<-read.table('Corila_dati_acque.txt', header=T,as.is=TRUE)
str(corila)

plot(hgDOC$wn1)
plot(hgd$wn1)


tmp <- as.Date(corila$data,format="%Y-%m-%d")
tmp2<-as.Date(tmp,tz= "GMT",format="%d-%m-%Y")

time.steps <- hgd[,1]

time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate[1313:(1325)]
### B
rdate[1:10]

disshg<-hgd + hgDOC
dissmehg<-mehgd + mehgDOC

TEMPOd <-as.POSIXct(corila[,1], tz= "GMT",format="%d-%m-%Y")
as.POSIXct(corila$data) 

plot(tmp,corila$HgII,ylim=c(0,8),pch=18,xaxt='n',
     xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
par(new=T)
plot(rdate[1313:(1325)],(disshg$wc6[1313:(1325)]),ylim=c(0,8),xaxt='n',
     xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
par(new=T)
plot(rdate[1313:(1325)],hg0$wc6[1313:(1325)],xaxt='n',type='l',
     xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
axis(side=1, at=rdate[1313:(1325)],'%d/%m/%Y', labels=rdate[1313:(1325)])
  
plot(tmp,corila$MeHg,ylim=c(0,.3),pch=18,xaxt='n',
     xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
par(new=T)
plot(rdate[1313:(1325)],dissmehg$wc6[1313:(1325)], ylim=c(0,.3),xaxt='n',
     xlim=as.Date(c("2009-04-10", "2010-04-10"), "%Y-%m-%d"))
axis(side=1, at=rdate[1313:(1325)],'%d/%m/%Y', labels=rdate[1313:(1325)])



