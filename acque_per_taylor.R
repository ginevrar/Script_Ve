setwd('C:/Users/Acer/Desktop/baba/buona/double_in/MMM99')

hgt<-read.csv('Total_Hg.csv', skip=1)
names(hgt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hgp<-read.csv('Total_Sorbed_Divalent_Hg.csv', skip=1)
names(hgp)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

mehgp<-read.csv('Total_Sorbed_Methyl_Hg.csv', skip=1)
names(mehgp)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hg= hgt-hgp-mehgp



plot(hgt$wn1)

rdate1<-rdate[1226:1237]
rdate1<-rdate[1226:1309]

n1<-hg$wn1[1227:1238]       # 2002
n2<-hg$wn1[1239:1250]  #2003
n3<-hg$wn1[1251:1262]  # 2004
n4<-hg$wn1[1263:1274]    # 2005
n5<-hg$wn1[1275:1286]   # 2006
n6<-hg$wn1[1287:1298]   # 2007 
n7<-hg$wn1[1299:1310]   #2008

n1b<-hg$wn2[1227:1238]       # 2002
n2b<-hg$wn2[1238:(1249)]   #2003
n3b<-hg$wn2[1250:(1261)]   # 2004
n4b<-hg$wn2[1263:1274]   # 2005
n5b<-hg$wn2[1275:1286]   # 2006
n6b<-hg$wn2[1287:1298]   # 2007 
n7b<-hg$wn2[1299:1310]   #2008

n1c<-hg$wn4[1227:1238]       # 2002
n2c<-hg$wn4[1239:1250]   #2003
n3c<-hg$wn4[1251:1262]   # 2004
n4c<-hg$wn4[1263:1274]   # 2005
n5c<-hg$wn4[1275:1286]   # 2006
n6c<-hg$wn4[1287:1298]   # 2007 
n7c<-hg$wn4[1299:1310]  #2008

nord_year<-data.frame(n1,n2,n3,n4,n5,n6,n7,
                      n1b,n2b,n3b,n4b,n5b,n6b,n7b,
                      n1c,n2c,n3c,n4c,n5c,n6c,n7c)

nord_year_mean<-rowMeans(nord_year)
nord_year_min<-apply(nord_year, 1, FUN=min)
nord_year_max<-apply(nord_year, 1, FUN=max)
nord_year_median<-apply(nord_year, 1, FUN=median)

NN<-c(nord_year_min,rev(nord_year_max))

cn1<-hg$wc6[1227:1238]       # 2002
cn2<-hg$wc6[1239:1250]   #2003
cn3<-hg$wc6[1251:1262]   # 2004
cn4<-hg$wc6[1263:1274]   # 2005
cn5<-hg$wc6[1275:1286]   # 2006
cn6<-hg$wc6[1287:1298]   # 2007 
cn7<-hg$wc6[1299:1310]   #2008

cn1b<-hg$wn3[1227:1238]       # 2002
cn2b<-hg$wn3[1239:1250]   #2003
cn3b<-hg$wn3[1251:1262]   # 2004
cn4b<-hg$wn3[1263:1274]   # 2005
cn5b<-hg$wn3[1275:1286]   # 2006
cn6b<-hg$wn3[1287:1298]   # 2007 
cn7b<-hg$wn3[1299:1310]  #2008

cn1c<-hg$wn5[1227:1238]       # 2002
cn2c<-hg$wn5[1239:1250]   #2003
cn3c<-hg$wn5[1251:1262]   # 2004
cn4c<-hg$wn5[1263:1274]   # 2005
cn5c<-hg$wn5[1275:1286]   # 2006
cn6c<-hg$wn5[1287:1298]   # 2007 
cn7c<-hg$wn5[1299:1310]   #2008

c_nord_year<-data.frame(cn1,cn2,cn3,cn4,cn5,cn6,cn7,
                        cn1b,cn2b,cn3b,cn4b,cn5b,cn6b,cn7b,
                        cn1c,cn2c,cn3c,cn4c,cn5c,cn6c,cn7c)

c_nord_year_mean<-rowMeans(c_nord_year)
c_nord_year_min<-apply(c_nord_year, 1, FUN=min)
c_nord_year_max<-apply(c_nord_year, 1, FUN=max)

c_nord_year_median<-apply(c_nord_year, 1, FUN=median)

CN<-c(c_nord_year_min,rev(c_nord_year_max))

cs1<-hg$wc7[1227:1238]       # 2002
cs2<-hg$wc7[1239:1250]   #2003
cs3<-hg$wc7[1251:1262]   # 2004
cs4<-hg$wc7[1263:1274]   # 2005
cs5<-hg$wc7[1275:1286]   # 2006
cs6<-hg$wc7[1287:1298]   # 2007 
cs7<-hg$wc7[1299:1310]   #2008

c_sud_year<-data.frame(cs1,cs2,cs3,cs4,cs5,cs6,cs7)

c_sud_year_mean<-rowMeans(c_sud_year)
c_sud_year_min<-apply(c_sud_year, 1, FUN=min)
c_sud_year_max<-apply(c_sud_year, 1, FUN=max)
c_sud_year_median<-apply(c_sud_year, 1, FUN=median)

CS<-c(c_sud_year_min,rev(c_sud_year_max))

s1<-hg$ws8[1227:1238]       # 2002
s2<-hg$ws8[1239:1250]   #2003
s3<-hg$ws8[1251:1262]   # 2004
s4<-hg$ws8[1263:1274]   # 2005
s5<-hg$ws8[1275:1286]   # 2006
s6<-hg$ws8[1287:1298]   # 2007 
s7<-hg$ws8[1299:1310]  #2008

s1b<-hg$ws9[1227:1238]       # 2002
s2b<-hg$ws9[1239:1250]   #2003
s3b<-hg$ws9[1251:1262]   # 2004
s4b<-hg$ws9[1263:1274]   # 2005
s5b<-hg$ws9[1275:1286]   # 2006
s6b<-hg$ws9[1287:1298]   # 2007 
s7b<-hg$ws9[1299:1310]  #2008

s1c<-hg$ws10[1227:1238]       # 2002
s2c<-hg$ws10[1239:1250]   #2003
s3c<-hg$ws10[1251:1262]   # 2004
s4c<-hg$ws10[1263:1274]   # 2005
s5c<-hg$ws10[1275:1286]   # 2006
s6c<-hg$ws10[1287:1298]   # 2007 
s7c<-hg$ws10[1299:1310]   #2008

sud_year<-data.frame(s1,s2,s3,s4,s5,s6,s7,
                     s1b,s2b,s3b,s4b,s5b,s6b,s7b,
                     s1c,s2c,s3c,s4c,s5c,s6c,s7c)

sud_year_mean<-rowMeans(sud_year)
sud_year_min<-apply(sud_year, 1, FUN=min)
sud_year_max<-apply(sud_year, 1, FUN=max)
sud_year_median<-apply(sud_year, 1, FUN=median)

SS<-c(sud_year_min,rev(sud_year_max))

mesi<-seq(1:12)
xx<-c(mesi,rev(mesi))
ax<-c('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec')

png('Hg_water_fin90c_41e_.png',width = 32, height = 18,res=400,units = "cm")
par(mfrow=c(2,2),mar=c(3,4.5,1,0), 
    oma=c(0,0,3,1), bty='n', mgp=c(3.5,1.5,0))
#  plot(nord_year_mean, type='b', pch=19, ylim=c(0,70),xlim=c(0.7,12.3), lwd=2, col='#4575b4')
#par(new=T)
boxplot(nord1$Hg1,nord2$Hg1, nord3$Hg1, nord4$Hg1,nord5$Hg1, nord6$Hg1,
        nord7$Hg1,nord8$Hg1,nord9$Hg1,nord10$Hg1,nord11$Hg1,nord12$Hg1, ylim=c(0,70),
        ylab='',xlab='', xlim=c(0.7,12.3), col='#4575b499',varwidth=T)
par(new=T)
plot(nord_year_median, type='b', pch=24, main='northern area',
     ylim=c(0,70),xlim=c(0.7,12.3), ylab='ng/L', xlab='', 
     xaxt='n',lwd=1, col='black',bg='#2d4c7599', cex=2)
axis(1,at=1:12, labels = ax)
polygon(xx,NN, col='#4575b455',border = NA)
mtext(side=3,text='Hg in the water column', outer=TRUE,line=1,font=2,cex=1.4)

boxplot(cnord1$Hg1,cnord2$Hg1, cnord3$Hg1, cnord4$Hg1,cnord5$Hg1, cnord6$Hg1,
        cnord7$Hg1,cnord8$Hg1,cnord9$Hg1,cnord10$Hg1,cnord11$Hg1,cnord12$Hg1, ylim=c(0,70),
        ylab='', xlab='', xlim=c(0.7,12.3), col='#e5e57299',varwidth=T)		

par(new=T)
plot(c_nord_year_median, type='b',xaxt='n', pch=24,ylim=c(0,70),xlim=c(0.7,12.3), 
     main='central northern area', lwd=1,cex=2,col='black' ,ylab='ng/L', xlab='', bg='#c6c63b99')
polygon(xx,CN, col='#e5e57255',border = NA)
axis(1,at=1:12, labels = ax)

boxplot(csud1$Hg1,csud2$Hg1, csud3$Hg1, csud4$Hg1,csud5$Hg1, csud6$Hg1,
        csud7$Hg1,csud8$Hg1,csud9$Hg1,csud10$Hg1,csud11$Hg1,csud12$Hg1, ylim=c(0,70),
        ylab='', xlab='', xlim=c(0.7,12.3), col='#f7922099',varwidth=T)		
par(new=T)
plot(c_sud_year_median, type='b', pch=24,xaxt='n',cex=2, main='central southern area',
     ylab='ng/L', xlab='', ylim=c(0,70),xlim=c(0.7,12.3), lwd=1, col=1,bg='#d1740c99')
polygon(xx,CS, col='#f7922055',border = NA)
axis(1,at=1:12, labels = ax)

boxplot(sud1$Hg1,sud2$Hg1, sud3$Hg1, sud4$Hg1,sud5$Hg1, sud6$Hg1,
        sud7$Hg1,sud8$Hg1,sud9$Hg1,sud10$Hg1,sud11$Hg1,sud12$Hg1, ylim=c(0,70),
        ylab='', xlab='', xlim=c(0.7,12.3), col='#a5002899',varwidth=T)	
par(new=T)
plot(sud_year_mean,  type='b', main='southern area',
     ylim=c(0,70),pch=24,xaxt='n',cex=2, ylab='ng/L', xlab='',
     xlim=c(0.7,12.3), lwd=1, col=1,bg='#82012099')
polygon(xx,SS, col='#a5002855',border = NA)
axis(1,at=1:12, labels = ax)
dev.off()


boxplot(nord1$Hg1,t(nord_year[1,]),nord2$Hg1,t(nord_year[2,]), 
        nord3$Hg1, nord4$Hg1,nord5$Hg1, nord6$Hg1,
        nord7$Hg1,nord8$Hg1,nord9$Hg1,nord10$Hg1,nord11$Hg1,nord12$Hg1, ylim=c(0,70),
        ylab='',xlab='', xlim=c(0.7,12.3), col='#4575b499',varwidth=T)
par(new=T)
boxplot
as.numeric(data.frame(nord_year[1,],nord_year[2,],nord_year[3,],
                      nord_year[4,],nord_year[5,],nord_year[6,]))



nord_jan<-t(nord_year[1,])
nord_feb<-t(nord_year[2,])
nord_mar<-t(nord_year[3,])
nord_apr<-t(nord_year[4,])
nord_may<-t(nord_year[5,])
nord_jun<-t(nord_year[6,])
nord_jul<-t(nord_year[7,])
nord_aug<-t(nord_year[8,])
nord_sep<-t(nord_year[9,])
nord_oct<-t(nord_year[10,])
nord_nov<-t(nord_year[11,])
nord_dec<-t(nord_year[12,])

boxplot(nord1$Hg1,nord_jan, nord2$Hg1,nord_feb, nord3$Hg1,nord_mar,
        nord4$Hg1,nord_apr, nord5$Hg1,nord_may, nord6$Hg1,nord_jun,
        nord7$Hg1,nord_jul, nord8$Hg1,nord_aug, nord9$Hg1,nord_sep,
        nord10$Hg1,nord_oct, nord11$Hg1,nord_nov,nord12$Hg1,nord_dec, ylim=c(0,70),
        xlim=c(0.7,12.3), col=c('#4575b499','#4575b422'),varwidth=T)
par(new=T)
plot(nord_year_median, type='b', pch=24, ylim=c(0,70),xlim=c(0.7,12.3), 
     xaxt='n',lwd=1, col='black',bg='#2d4c7599', cex=2)
par(new=T)
plot(nord_year_mean, type='b', pch=19, ylim=c(0,70),xlim=c(0.7,12.3), 
     xaxt='n',lwd=1, col='black',bg='#2d4c7599', cex=2)


dN<-c(mean(nord1$Hg1),mean(nord2$Hg1), mean(nord3$Hg1), mean(nord4$Hg1),
      mean(nord5$Hg1),mean(nord6$Hg1),mean(nord7$Hg1),mean(nord8$Hg1),
      mean(nord9$Hg1),mean(nord10$Hg1),mean(nord11$Hg1),mean(nord12$Hg1))

dCN<-c(mean(cnord1$Hg1),mean(cnord2$Hg1),mean(cnord3$Hg1),mean(cnord4$Hg1),
       mean(cnord5$Hg1),mean(cnord6$Hg1),
       mean(cnord7$Hg1),mean(cnord8$Hg1),mean(cnord9$Hg1),
       mean(cnord10$Hg1),mean(cnord11$Hg1),mean(cnord12$Hg1))

dCS<-c(mean(csud1$Hg1),mean(csud2$Hg1),mean(csud3$Hg1),mean(csud4$Hg1),
       mean(csud5$Hg1),mean(csud6$Hg1),mean(csud7$Hg1),mean(csud8$Hg1),
       mean(csud9$Hg1),mean(csud10$Hg1),mean(csud11$Hg1),mean(csud12$Hg1))

dS<-c(mean(sud1$Hg1),mean(sud2$Hg1),mean(sud3$Hg1),mean(sud4$Hg1),mean(sud5$Hg1),
      mean(sud6$Hg1),mean(sud7$Hg1),mean(sud8$Hg1),mean(sud9$Hg1),
      mean(sud10$Hg1),mean(sud11$Hg1),mean(sud12$Hg1))


datiw<-c(dN, dCN, dCS, dS)
modew<-c(nord_year_median,c_nord_year_median,c_sud_year_median,sud_year_median)

acque<-data.frame(datiw, modew)
write.table(acque, file='acque_perTaylorD.txt')
getwd()


plot(datiw,modew)
cor(datiw,modew)
