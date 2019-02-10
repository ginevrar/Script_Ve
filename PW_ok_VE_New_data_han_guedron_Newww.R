#setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61/MenoDep')
#setwd('C:/Users/gi/Desktop/NNN59')
# setwd('C:/Users/Acer/Dropbox/NNN61/MenoDep4/c')
#setwd('C:/Users/gi/Dropbox/NewVenice20/z8')
 #setwd('C:/Users/Acer/Dropbox/NNN61/MenoDep4/c')
#setwd('C:/Users/Acer/Desktop/NewVenice20/z20')
#setwd('C:\\Users\\Acer\\Desktop\\NWBad\\NewVenice21\\2127')
# setwd('C:/Users/Acer/Desktop/NewVenice20/z13')
setwd('C:\\Users\\gi\\Desktop\\2156')

hgdiss<-read.csv('Dissolved_Divalent_Hg.csv',skip=1)
names(hgdiss)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'la1','la2','la3','la4','la5','la6','la7','la8','la9','la10',
                 'lb1','lb2','lb3','lb4','lb5','lb6','lb7','lb8','lb9','lb10',
                 'lc1','lc2','lc3','lc4','lc5','lc6','lc7','lc8','lc9','lc10',
                 'ld1','ld2','ld3','ld4','ld5','ld6','ld7','ld8','ld9','ld10')

hgDOC<-read.csv('DOC_Sorbed_Divalent_Hg.csv',skip=1)
names(hgDOC)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'la1','la2','la3','la4','la5','la6','la7','la8','la9','la10',
                'lb1','lb2','lb3','lb4','lb5','lb6','lb7','lb8','lb9','lb10',
                'lc1','lc2','lc3','lc4','lc5','lc6','lc7','lc8','lc9','lc10',
                'ld1','ld2','ld3','ld4','ld5','ld6','ld7','ld8','ld9','ld10')

mehgDOC<-read.csv('DOC_Sorbed_Methyl_Hg.csv',skip=1)
names(mehgDOC)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'la1','la2','la3','la4','la5','la6','la7','la8','la9','la10',
                  'lb1','lb2','lb3','lb4','lb5','lb6','lb7','lb8','lb9','lb10',
                  'lc1','lc2','lc3','lc4','lc5','lc6','lc7','lc8','lc9','lc10',
                  'ld1','ld2','ld3','ld4','ld5','ld6','ld7','ld8','ld9','ld10')

mehgdiss<-read.csv('Dissolved_Methyl_Hg.csv',skip=1)
names(mehgdiss)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                   'la1','la2','la3','la4','la5','la6','la7','la8','la9','la10',
                   'lb1','lb2','lb3','lb4','lb5','lb6','lb7','lb8','lb9','lb10',
                   'lc1','lc2','lc3','lc4','lc5','lc6','lc7','lc8','lc9','lc10',
                   'ld1','ld2','ld3','ld4','ld5','ld6','ld7','ld8','ld9','ld10')

hgD<-hgdiss+hgDOC
mehgD<-mehgdiss+mehgDOC

##______________________________________________________________________
## Dati guedron 2008 - 2009; 
## Dati Han, 2005
##______________________________________________________________________

b1_layerA_pw = c(38,5.33333,	5.33333, 6.13333, 3.53333,	5.6,	6.73333)           #site B Han et al., 2007; VE2 guedron et al., 2012
b1_layerA_pw_mehg = c(2.72727,1.20449,	0.368539,	0.548315,1.51011,	0.440449,	0.665169)


b1_layerB_pw = c(48,8.66667,	11.4,	6)                          #site B Han et al., 2007

b1_layerB_pw_mehg = c(3.93939,0.162,	0.0898876,	0.161798)    #site B Han et al., 2007; VE2 guedron et al., 2012

b1_layerC_pw = 	c(30, 9.06667,	13.6667, 8.06667)     #site B Han et al., 2007; VE2 guedron et al., 2012
             
b1_layerC_pw_mehg =c(2.32323,0.0808989,	0.0629213,	0.0269663) 

b1_hg<-c(b1_layerA_pw,b1_layerB_pw,b1_layerC_pw)
b1_mehg<-c(b1_layerA_pw_mehg,b1_layerB_pw_mehg,b1_layerC_pw_mehg)


b2_layerA_pw = c(13.913,	12.8261,13.4783,	8.04348,41.3043,	10.4348)            #VE1 guedron et al., 2012
b2_layerA_pw_mehg =c(0.74, 0.0380952, 0.187755,	0.0707483,0.0163265,	0.4)

b2_layerB_pw = c(13.0435,	6.52174,13.6957,	4.34783)                              #VE1 guedron et al., 2012
b2_layerB_pw_mehg =c(0.092517,	0.12517, 0.0680272,	0.198639)
 
b2_layerC_pw = c(21.5217,	6.30435, 19.1304,	14.1304)                              #VE1 guedron et al., 2012
b2_layerC_pw_mehg =c(0.329252,	0.157823,0.0598639,	0.0598639)

b2_hg<-c(b2_layerA_pw,b2_layerB_pw,b2_layerC_pw)
b2_mehg<-c(b2_layerA_pw_mehg,b2_layerB_pw_mehg,b2_layerC_pw_mehg)

b6_layerA_pw =  NA       #site S1 Han et al., 2007 (S0 is a dredged channel)
b6_layerA_pw_mehg =  NA

b6_layerB_pw = 52.5773	       #site S1 Han et al., 2007
b6_layerB_pw_mehg =  2.55102

b6_layerC_pw = c(84.5361,89.6907)       #site S1 Han et al., 2007   - 12 e 17 cm prof
b6_layerC_pw_mehg =  c(0.01,0.510204)

b6_hg<-c(b6_layerA_pw,b6_layerB_pw,b6_layerC_pw)
b6_mehg<-c(b6_layerA_pw_mehg,b6_layerB_pw_mehg,b6_layerC_pw_mehg)


b7_layerA_pw =  35.3535        #site S2 Han et al., 2007
b7_layerA_pw_mehg = 1.21212    #site S2 Han et al., 2007

b7_layerB_pw =  37.3737    #site S2 Han et al., 2007
b7_layerB_pw_mehg = 1.61616    #site S2 Han et al., 2007
	
b7_layerC_pw =c(29.2929,31.3131)#site S2 Han et al., 2007
b7_layerC_pw_mehg = c(1.71717	,0.808081) #site S2 Han et al., 2007


box1<-c(median(b1_layerA_pw),median(b1_layerB_pw),median(b1_layerC_pw))
box1_mehg<-c(median(b1_layerA_pw_mehg),median(b1_layerB_pw_mehg),median(b1_layerC_pw_mehg))

box2<-c(median(b2_layerA_pw),median(b2_layerB_pw),median(b2_layerC_pw))
box2_mehg<-c(median(b2_layerA_pw_mehg),median(b2_layerB_pw_mehg),median(b2_layerC_pw_mehg))

box6<-c(median(b6_layerA_pw),median(b6_layerB_pw),median(b6_layerC_pw))
box6_mehg<-c(median(b6_layerA_pw_mehg),median(b6_layerB_pw_mehg),median(b6_layerC_pw_mehg))

box7<-c(median(b7_layerA_pw),median(b7_layerB_pw),median(b7_layerC_pw))
box7_mehg<-c(median(b7_layerA_pw_mehg),median(b7_layerB_pw_mehg),median(b7_layerC_pw_mehg))


time.steps <- hgdiss[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")


rdate[1262:1321]

plot(hgD$la1[1262:1321])
b1_profile_mod<-c(mean(hgD$la1[1262:1321]), mean(hgD$lb1[1262:1321]),mean(hgD$lc1[1262:1321]))
b2_profile_mod<-c(mean(hgD$la2[1262:1321]), mean(hgD$lb2[1262:1321]),mean(hgD$lc2[1262:1321]))
b4_profile_mod<-c(mean(hgD$la4[1262:1321]), mean(hgD$lb4[1262:1321]),mean(hgD$lc4[1262:1321]))
b6_profile_mod<-c(mean(hgD$la6[1262:1273]), mean(hgD$lb6[1262:1273]),mean(hgD$lc6[1262:1273]))
b7_profile_mod<-c(mean(hgD$la7[1262:1273]), mean(hgD$lb7[1262:1273]),mean(hgD$lc7[1262:1273]))

b1_profile_mod_mhg<-c(mean(mehgD$la1[1262:1321]), mean(mehgD$lb1[1262:1321]),mean(mehgD$lc1[1262:1321]))
b2_profile_mod_mhg<-c(mean(mehgD$la2[1262:1321]), mean(mehgD$lb2[1262:1321]),mean(mehgD$lc2[1262:1321]))
b4_profile_mod_mhg<-c(mean(mehgD$la4[1262:1321]), mean(mehgD$lb4[1262:1321]),mean(mehgD$lc4[1262:1321]))
b6_profile_mod_mhg<-c(mean(mehgD$la6[1262:1273]), mean(mehgD$lb6[1262:1273]),mean(mehgD$lc6[1262:1273]))
b7_profile_mod_mhg<-c(mean(mehgD$la7[1262:1273]), mean(mehgD$lb7[1262:1273]),mean(mehgD$lc7[1262:1273]))

rdate[1262:1273]
mm<-c(b1_profile_mod, b2_profile_mod, b6_profile_mod[2:3], b7_profile_mod)
dd<-c(box1,box2,box6[2:3],box7)

mm_mehg<-c(b1_profile_mod_mhg, b2_profile_mod_mhg, b6_profile_mod_mhg[2:3], b7_profile_mod_mhg)
dd_mehg<-c(box1_mehg,box2_mehg,box6_mehg[2:3],box7_mehg)


y=c(-2,-7, -15)

df<-cbind(dd,mm)
df2<-cbind(dd_mehg,mm_mehg)

write.table(df, file = 'pw_hg_perTaylorD.txt')
write.table(df2, file = 'pw_mehg_perTaylorD.txt')


png('PoreWaaatyter51.png', width =1000*1.5, height =630*1.5,
    units = "px")
par(mfrow=c(2,4),mar=c(3,0,5,0.5), oma=c(1,3.5,0,.7),  bty='n',cex=1.5) # bg='black',fg = 'white',col.axis = "white", col.clab = "white"

boxplot(b1_layerA_pw,b1_layerB_pw,b1_layerC_pw, xlim=c(-20,0),cex=1.5, range = T,outline = T,
        at=c(-2,-7, -15),boxwex=3.,ylim=c(0,100),   yaxt='n',xaxt='n',
        col='#31369577', horizontal = T)
par(new=T)
plot(b1_profile_mod[1:3],y, xlim=c(0,100), cex=1.6, ylim=c(-20,0), #yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#313695',   type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=2.5)
mtext(side=3, text='box1',  cex=1.6, line=.5,  font=2)
mtext(side=3, text='box1',  cex=1.6, line=.5,  font=2)
mtext(side=1, text=expression(paste('ng l'^-1)), cex=1.7, line=2.5)

boxplot(b2_layerA_pw,b2_layerB_pw,b2_layerC_pw, xlim=c(-20,0),cex=1.5, range = T,outline = T,
        at=c(-2,-7, -15),boxwex=3.,ylim=c(0,100),    yaxt='n',xaxt='n',
        col='#4575b477', horizontal = T)
par(new=T)
plot(b2_profile_mod[1:3],y, xlim=c(0,100), cex=1.6, ylim=c(-20,0),  yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#4575b4',   type='b', pch=25)
mtext(side=3, text='box2',  cex=1.6, line=.5,  font=2)
mtext(side=1, text=expression(paste('ng l'^-1)), cex=1.7, line=2.5)
mtext(side=3, text=expression(paste('Hg'[D]~'pore-water')), font=2, cex=1.7,line=1.6,at=100, outer=F)
                              

boxplot(b6_layerA_pw,b6_layerB_pw,b6_layerC_pw, xlim=c(-20,0),cex=1.5, range = T,outline = T,
        at=c(-2,-7, -15),boxwex=3.,ylim=c(0,100), yaxt='n',xaxt='n',
        col='#fed97677', horizontal = T)
par(new=T)
plot(b6_profile_mod[1:3],y, xlim=c(0,100), cex=1.6, ylim=c(-20,0),  yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#fed976',   type='b', pch=25)
mtext(side=3, text='box6',  cex=1.6, line=0.5, font=2)
mtext(side=1, text=expression(paste('ng l'^-1)), cex=1.7, line=2.5)

boxplot(b7_layerA_pw,b7_layerB_pw,b7_layerC_pw, xlim=c(-20,0),cex=1.5, range = T,outline = T,
        at=c(-2,-7, -15),boxwex=3.,ylim=c(0,100), yaxt='n',xaxt='n',
        col='#f7922077', horizontal = T)
par(new=T)
plot(b7_profile_mod[1:3],y, xlim=c(0,100), cex=1.6, ylim=c(-20,0),  yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#f79220',   type='b', pch=25)
mtext(side=3, text='box7',  cex=1.6, line=0.5, font=2)
mtext(side=1, text=expression(paste('ng l'^-1)), cex=1.7, line=2.5)

text(80,-2, 'layer A', cex=1, col='grey30')
text(80,-7, 'layer B', cex=1, col='grey30')
text(80,-15, 'layer C', cex=1, col='grey30')
text(80,-25, 'layer D', cex=1, col='grey30')
text(80,-40, 'layer E', cex=1, col='grey30')
#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)

boxplot(b1_layerA_pw_mehg ,b1_layerB_pw_mehg,b1_layerC_pw_mehg, xlim=c(-20,0),cex=1.5, range = T,outline = T,
        at=c(-2,-7, -15),boxwex=3.,ylim=c(0,4),  yaxt='n',xaxt='n',
        col='#31369577', horizontal = T)
par(new=T)
plot(b1_profile_mod_mhg[1:3],y, xlim=c(0,4), cex=1.6, ylim=c(-20,0), 
     ylab=' ',xlab=' ',col='black',bg='#313695',   type='b', pch=25)
#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box1',  cex=1.6, line=.5,  font=2)
mtext(side=2, text='depth (cm)',  cex=1.6, line=2.5)
mtext(side=1, text=expression(paste('ng l'^-1)), cex=1.7, line=2.5)

boxplot(b2_layerA_pw_mehg,b2_layerB_pw_mehg,b2_layerC_pw_mehg, xlim=c(-20,0),cex=1.5, range = T,outline = T,
        at=c(-2,-7, -15),boxwex=3.,ylim=c(0,4),  yaxt='n',xaxt='n',
        col='#4575b477', horizontal = T)
par(new=T)
plot(b2_profile_mod_mhg[1:3],y, xlim=c(0,4), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#4575b4',   type='b', pch=25)
mtext(side=3, text='box2',  cex=1.6, line=.5,  font=2)
mtext(side=3, text=expression(paste('MeHg'[D]~'pore-water')), font=2, cex=1.7,line=1.6,at=4, outer=F)
mtext(side=1, text=expression(paste('ng l'^-1)), cex=1.7, line=2.5)

boxplot(b6_layerA_pw_mehg,b6_layerB_pw_mehg,b6_layerC_pw_mehg, xlim=c(-20,0),cex=1.5, range = T,outline = T,
        at=c(-2,-7, -15),boxwex=3.,ylim=c(0,4), yaxt='n',xaxt='n',
        col='#fed97677', horizontal = T)
par(new=T)
plot(b6_profile_mod_mhg[1:3],y, xlim=c(0,4), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#fed976',   type='b', pch=25)
#mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box6',  cex=1.6, line=.5,  font=2)
mtext(side=1, text=expression(paste('ng l'^-1)), cex=1.7, line=2.5)

boxplot(b7_layerA_pw_mehg,b7_layerB_pw_mehg,b7_layerC_pw_mehg, xlim=c(-20,0),cex=1.5, range = T,outline = T,
        at=c(-2,-7, -15),boxwex=3.,ylim=c(0,4), yaxt='n',xaxt='n',
        col='#f7922077', horizontal = T)
par(new=T)
plot(b7_profile_mod_mhg[1:3],y, xlim=c(0,4), cex=1.6, ylim=c(-20,0), yaxt='n',
     ylab=' ',xlab=' ',col='black',bg='#f79220',   type='b', pch=25)
 #mtext(side=1, text=expression(paste ('ng g'^-1)), cex=1.6, line=2.2)
mtext(side=3, text='box7',  cex=1.6, line=.5,  font=2)
mtext(side=1, text=expression(paste('ng l'^-1)), cex=1.7, line=2.5)

text(3,-2, 'layer A', cex=1, col='grey30')
text(3,-7, 'layer B', cex=1, col='grey30')
text(3,-15, 'layer C', cex=1, col='grey30')
text(3,-25, 'layer D', cex=1, col='grey30')
text(3,-40, 'layer E', cex=1, col='grey30')
 dev.off()


cor.test(dd,mm)
cor.test(dd_mehg,mm_mehg)

#________________________________ Fine plot POre water hg mehg ________________________________
