
setwd('C:/Users/gi/Dropbox/fin86')
setwd('C:/Users/Acer/Dropbox/fin87')
hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

rdate1<-rdate[1226:1309]
n1<-hg$wn1[1226:1237]       # 2002
n2<-hg$wn1[1238:(1238+11)]  #2003
n3<-hg$wn1[1250:(1250+11)]  # 2004
n4<-hg$wn1[1262:(1273)]    # 2005
n5<-hg$wn1[1274:(1285)]   # 2006
n6<-hg$wn1[1286:(1297)]   # 2007 
n7<-hg$wn1[1298:(1298+11)]   #2008

n1b<-hg$wn2[1226:(1237)]       # 2002
n2b<-hg$wn2[1238:(1249)]   #2003
n3b<-hg$wn2[1250:(1261)]   # 2004
n4b<-hg$wn2[1262:(1273)]   # 2005
n5b<-hg$wn2[1274:(1285)]   # 2006
n6b<-hg$wn2[1286:(1297)]   # 2007 
n7b<-hg$wn2[1298:(1298+11)]   #2008

n1c<-hg$wn4[1226:(1237)]       # 2002
n2c<-hg$wn4[1238:(1238+11)]   #2003
n3c<-hg$wn4[1250:(1250+11)]   # 2004
n4c<-hg$wn4[1262:(1273)]   # 2005
n5c<-hg$wn4[1274:(1285)]   # 2006
n6c<-hg$wn4[1286:(1297)]   # 2007 
n7c<-hg$wn4[1298:(1298+11)]  #2008

nord_year<-data.frame(n1,n2,n3,n4,n5,n6,n7,
                      n1b,n2b,n3b,n4b,n5b,n6b,n7b,
                      n1c,n2c,n3c,n4c,n5c,n6c,n7c)

nord_year_mean<-rowMeans(nord_year)
nord_year_min<-apply(nord_year, 1, FUN=min)
nord_year_max<-apply(nord_year, 1, FUN=max)
nord_year_median<-apply(nord_year, 1, FUN=median)

NN<-c(nord_year_min,rev(nord_year_max))

cn1<-hg$wc6[1226:(1237)]       # 2002
cn2<-hg$wc6[1238:(1238+11)]   #2003
cn3<-hg$wc6[1250:(1250+11)]   # 2004
cn4<-hg$wc6[1262:(1273)]   # 2005
cn5<-hg$wc6[1274:(1285)]   # 2006
cn6<-hg$wc6[1286:(1297)]   # 2007 
cn7<-hg$wc6[1298:(1298+11)]   #2008

cn1b<-hg$wn3[1226:(1237)]       # 2002
cn2b<-hg$wn3[1238:(1238+11)]   #2003
cn3b<-hg$wn3[1250:(1250+11)]   # 2004
cn4b<-hg$wn3[1262:(1273)]   # 2005
cn5b<-hg$wn3[1274:(1285)]   # 2006
cn6b<-hg$wn3[1286:(1297)]   # 2007 
cn7b<-hg$wn3[1298:(1298+11)]  #2008

cn1c<-hg$wn5[1226:(1237)]       # 2002
cn2c<-hg$wn5[1238:(1238+11)]   #2003
cn3c<-hg$wn5[1250:(1250+11)]   # 2004
cn4c<-hg$wn5[1262:(1273)]   # 2005
cn5c<-hg$wn5[1274:(1285)]   # 2006
cn6c<-hg$wn5[1286:(1297)]   # 2007 
cn7c<-hg$wn5[1298:(1298+11)]   #2008

c_nord_year<-data.frame(cn1,cn2,cn3,cn4,cn5,cn6,cn7,
                        cn1b,cn2b,cn3b,cn4b,cn5b,cn6b,cn7b,
                        cn1c,cn2c,cn3c,cn4c,cn5c,cn6c,cn7c)

c_nord_year_mean<-rowMeans(c_nord_year)
c_nord_year_min<-apply(c_nord_year, 1, FUN=min)
c_nord_year_max<-apply(c_nord_year, 1, FUN=max)

c_nord_year_median<-apply(c_nord_year, 1, FUN=median)

CN<-c(c_nord_year_min,rev(c_nord_year_max))

cs1<-hg$wc7[1226:(1237)]       # 2002
cs2<-hg$wc7[1238:(1238+11)]   #2003
cs3<-hg$wc7[1250:(1250+11)]   # 2004
cs4<-hg$wc7[1262:(1273)]   # 2005
cs5<-hg$wc7[1274:(1285)]   # 2006
cs6<-hg$wc7[1286:(1297)]   # 2007 
cs7<-hg$wc7[1298:(1298+11)]   #2008

c_sud_year<-data.frame(cs1,cs2,cs3,cs4,cs5,cs6,cs7)

c_sud_year_mean<-rowMeans(c_sud_year)
c_sud_year_min<-apply(c_sud_year, 1, FUN=min)
c_sud_year_max<-apply(c_sud_year, 1, FUN=max)
c_sud_year_median<-apply(c_sud_year, 1, FUN=median)

CS<-c(c_sud_year_min,rev(c_sud_year_max))

s1<-hg$ws8[1226:(1237)]       # 2002
s2<-hg$ws8[1238:(1238+11)]   #2003
s3<-hg$ws8[1250:(1250+11)]   # 2004
s4<-hg$ws8[1262:(1273)]   # 2005
s5<-hg$ws8[1274:(1285)]   # 2006
s6<-hg$ws8[1286:(1297)]   # 2007 
s7<-hg$ws8[1298:(1298+11)]  #2008

s1b<-hg$ws9[1226:(1237)]       # 2002
s2b<-hg$ws9[1238:(1238+11)]   #2003
s3b<-hg$ws9[1250:(1250+11)]   # 2004
s4b<-hg$ws9[1262:(1273)]   # 2005
s5b<-hg$ws9[1274:(1285)]   # 2006
s6b<-hg$ws9[1286:(1297)]   # 2007 
s7b<-hg$ws9[1298:(1298+11)]  #2008

s1c<-hg$ws10[1226:(1237)]       # 2002
s2c<-hg$ws10[1238:(1238+11)]   #2003
s3c<-hg$ws10[1250:(1250+11)]   # 2004
s4c<-hg$ws10[1262:(1273)]   # 2005
s5c<-hg$ws10[1274:(1285)]   # 2006
s6c<-hg$ws10[1286:(1297)]   # 2007 
s7c<-hg$ws10[1298:(1298+11)]   #2008

sud_year<-data.frame(s1,s2,s3,s4,s5,s6,s7,
                     s1b,s2b,s3b,s4b,s5b,s6b,s7b,
                     s1c,s2c,s3c,s4c,s5c,s6c,s7c)

sud_year_mean<-rowMeans(sud_year)
sud_year_min<-apply(sud_year, 1, FUN=min)
sud_year_max<-apply(sud_year, 1, FUN=max)
sud_year_median<-apply(sud_year, 1, FUN=median)

SS<-c(sud_year_min,rev(sud_year_max))

tutti_dati_med<-c(nords_median,cnords_median,
                 csuds_median,suds_median)
tutti_mod_med<-c(nord_year_median,c_nord_year_median,
                  c_sud_year_median,sud_year_median)

cor.test(tutti_dati_med,tutti_mod_med)
plot(tutti_dati_med,tutti_mod_med)

plot(nords_median, nord_year_median)

plot(cnords_median, c_nord_year_median)
cor.test(csuds_median, c_sud_year_median)

cor.test(suds_median, sud_year_median)


plot(nords_median)

library('plotrix')
#svg(filename="meHg_m1_m6-m7.svg", pointsize = 18)
#win.graph()
par(mfrow=c(1,1),oma=c(2,2,2,2))
taylor.diagram(nords_median, nord_year_median,
               add=FALSE,
               col="black",bg='gray',pos.cor=T,
               xlab="",ylab="",main=" ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=T, mar=c(1.5,3,3,1.3),
               sd.method="sample",pcex=4.2, pch=21,
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, .95,0.99),
               cex.axis=1,normalize=FALSE)

text(0.035,0.04, labels = "m7", font=4, cex=1)
dev.new()
taylor.diagram(cnords_median, c_nord_year_median,
               add=FALSE,col='#80b1d3', pos.cor=T,
               xlab="",ylab="",main="T ",show.gamma=TRUE,ngamma=3,
               gamma.col="gray50",sd.arcs=0,ref.sd=T,
               sd.method="sample",pcex=4.2, pch=22,
               grad.corr.lines=c(0.2,0.4,0.6,0.8,0.9, 0.99),cex.axis=1,normalize=FALSE)
text(0.08,0.01, labels = "m1", col="#80b1d3", font=4, cex=1)

#png('Hg_water_fin86_.png',width = 32, height = 18,res=400,units = "cm")
par(mfrow=c(2,2),mar=c(3,4.5,1,0), 
    oma=c(0,0,3,1), bty='n', mgp=c(3.5,1.5,0))
#  plot(nord_year_mean, type='b', pch=19, ylim=c(0,70),xlim=c(0.7,12.3), lwd=2, col='#4575b4')
#par(new=T)
