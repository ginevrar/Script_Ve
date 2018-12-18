setwd('C:/Users/gi/Dropbox/NNN61')
setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')

sed_bal<-read.table("Net_hgSed_kgy.txt", header=TRUE);
input_long<-read.table('Total_IN_long.txt');input_short<-read.table('Total_IN.txt')
volat<-read.table('volat.txt', header=T); str(volat)
names(volat)<-'vol'
plot(volat$vol)

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
hg<-hg[1:2412,]

 TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
 names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
 TOTs<-TOTs[1:2412,]
 
time.steps <- TOTs[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1901-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

netDepo1_kg_y 		<-rowSums(sed_bal)
#burial2_kg_y 			<-sed_bal$TOT_buried
#depo_Phg_kg_y 		<-sed_bal$Hg_depo_tot
#res_Phg_kg_y 		  <-sed_bal$Hg_res_tot
evasione_kg_y     <-volat$vol
plot(evasione_kg_y)
## ------------ bound mc/s -> mc/y --------------------
bound3  <-	(-7) *60*60*24 *365  
bound10 <-	(-25)*60*60*24 *365  
bound7  <-	(-15) *60*60*24 *365   

 #8.4 10^10 m3 year acque nord 
# 6.9 10^8 bound 3 + 7
# 6.9 10^8 bound 3 + 7
water3<-hg$wn3; solids3<-TOTs$wn3  #Lido       
water7<-hg$wc7; solids7<-TOTs$wc7  #Malamocco     1.5768e+08
water10<-hg$ws10; solids10<-TOTs$ws10  #chioggia  9.77616e+08

#lido and Malamocco:  5.6 10^10 m3 year?1
#Chioggia :  2.8 10^10 m3 year?1

#ngL*mcy
outflow_ugy<-(water3*bound3)+(water10*bound10)+(water7*bound7)  #ug /y
hg_outflow_kg_y<-outflow_ugy/10^9
### solids out
outflow_solids<-(bound3*solids3)+(bound10*solids10)+(bound7*solids7)
## _______________________________

evasione_kg_y<-evasione_kg_y[1:2412]
depo_Phg_kg_y<-netDepo1_kg_y[1:2412]
hg_outflow_kg_y<-hg_outflow_kg_y[1:2412]

evasione_kg_y_media<-tapply(evasione_kg_y, 
                            rep(1:(length(evasione_kg_y)/12),each = 12),mean)
depo_Phg_kg_y_media<-tapply(netDepo1_kg_y[1:2412], 
                            rep(1:(length(netDepo1_kg_y[1:2412])/12),each = 12),mean)

plot(depo_Phg_kg_y_media)

str(hg_outflow_kg_y)
hg_outflow_kg_y_media<-tapply(hg_outflow_kg_y, rep(1:(length(hg_outflow_kg_y)/12),each = 12),mean)

#diffusion_kg_y_media<-tapply(diffusion_kg_y, rep(1:(length(diffusion_kg_y)/12),each = 12),mean)
#burial2_kg_y_media<-tapply(burial2_kg_y, rep(1:(length(burial2_kg_y)/12),each = 12),mean)

#____________SOMMA DEI TERMINI DI OUTPUT delle ACQUE
Output_terms<-as.numeric(evasione_kg_y_media + depo_Phg_kg_y_media +
                            hg_outflow_kg_y_media); str(Output_terms); 

#____________SOMMA DEI TERMINI DI INPUT delle ACQUE

str(input_long)

Marghera<-input_long$tot_ind
river_hg<-input_long$tot_riv+input_long$mmr
atm_hg<-input_long$tot_depo
veCity<-input_long$tot_city
anno<-input_long$years
TOT_in<-input_long$TOT

Marghera_kg_y_media<-tapply(Marghera, 
                            rep(1:(length(Marghera)/12),each = 12),mean)

Input_terms<-(river_hg+atm_hg+Marghera+
              +veCity); str(Input_terms); 

Nett_IN_OUT<-as.numeric(input_short$tt-Output_terms); str(diffe)
plot(Nett_IN_OUT, type='l')
abline(h=0, col='red')

ax2<-(seq(1900,2100, by=1))

OUt<-cbind(ax2,evasione_kg_y_media, depo_Phg_kg_y_media, 
           hg_outflow_kg_y_media,Output_terms) 

# output 1910 
ev_10<-mean(evasione_kg_y_media[11])
dp_10<-mean(depo_Phg_kg_y_media[11])
outf_10<-mean(hg_outflow_kg_y_media[11])

ev_95<-mean(evasione_kg_y_media[96])
dp_95<-mean(depo_Phg_kg_y_media[96])
outf_95<-mean(hg_outflow_kg_y_media[96])

ev_70<-mean(evasione_kg_y_media[71])
dp_70<-mean(depo_Phg_kg_y_media[71])
outf_70<-mean(hg_outflow_kg_y_media[71])

# output 2019 
ev_19<-mean(evasione_kg_y_media[120])
dp_19<-mean(depo_Phg_kg_y_media[120])
outf_19<-mean(hg_outflow_kg_y_media[120])

plot(ax2,depo_Phg_kg_y_media)
 abline(v=1995)

T_ou_10<-ev_10+dp_10+outf_10
T_ou_95<-ev_95+dp_95+outf_95
T_ou_70<-ev_70+dp_70+outf_70
T_ou_19<-ev_19+dp_19+outf_19

# input from Marghera 
M_10<-input_short$ind3[11];M_70<-input_short$ind3[71]
M_95<-input_short$ind3[96];M_19<-input_short$ind3[120]

# input from River 
F_10<-input_short$ri[11]+input_short$riv_mehg[11]; F_70  <-input_short$ri[71]+input_short$riv_mehg[71]
F_95<-input_short$ri[96]+input_short$riv_mehg[96]; F_19<-input_short$riv_mehg[120]

# input from atmosph. 
atm_10<-input_short$de[11]; atm_70  <-input_short$de[71] 
atm_95<-input_short$de[96]; atm_19<-input_short$de[120] 

# input from city 
V_10<-input_short$ci[11]; V_70  <-input_short$ci[71] 
V_95<-input_short$ci[96]; V_19<-input_short$ci[120] 

All_out_10=c(NA,-ev_10,-dp_10,outf_10)
All_out_70=c(NA,-ev_70,-dp_70,outf_70)
All_out_95=c(NA,-ev_95,-dp_95,outf_95)
All_out_19=c(NA,-ev_17,-dp_17,outf_17)

All_in_10=c(M_10,F_10,atm_10,V_10)
All_in_70=c(M_70,F_70,atm_70,V_70)
All_in_95=c(M_95,F_95,atm_95,V_95)
All_in_19=c(M_19,F_19,atm_19,V_19)

T_in_10=M_10+F_10+atm_10+V_10
T_in_70=M_70+F_70+atm_70+V_70
T_in_95=M_95+F_95+atm_95+V_95
T_in_19=M_19+F_19+atm_19+V_19

M_70/T_in_70*100; M_95/T_in_95*100;M_2019/T_in_19*100

tiff('Barplot_Hg_1910.tiff', height=25, width=23, units='cm', 
      compression="lzw", res=300)
par(mar=c(0.5, 3, 2.5, 1), mfrow=c(1,1))  #bottom-left-top-right
plot.new()
plot.window(xlim=c(-20, 20), ylim=c(-1, 4.5))
ticks <- seq(-20,20,10)
y <- c(0.5,1.5,2.5,3.5) # posizione barre
h <- 0.15
### aggiungere produzione interna e degradazione  m
lines(rep(0, 2), c(0, 4), col="grey")
segments(-22, y, 22, y, lty="dotted", col="grey")  #linee orizzontali 

#out ev_10,dp_10,outf_10 
rect(All_out_10, y-h, 0, y+h, col=c('black','cyan3','orange','royalblue'))
text(-12,3.5, expression("Outflow"), cex=.9)
text(-12,2.5, expression("Hg"[p]*~"Deposition"), cex=.9)
text(-12,1.5, expression("Hg"^0*~"Evasion"), cex=.9)

rect(0, y-h, All_in_10, y+h, col=c('black',"lightcyan2","lightcyan2",
                              "lightcyan2","lightcyan2",
                              "lightcyan2"))
text(13,1.5, expression("Hg"[T]*~"River"), cex=.9)
text(13,2.5, expression("Hg"[p]*~"Atmospheric Deposition"), cex=.9)
text(13,3.5, expression("Venice City"), cex=.9)

plot.window(xlim=c(-20, 20), ylim=c(-1, 4.5))
ticks <- seq(-20,20,10)
y <- c(0.5,1.5,2.5,3.5) # posizione barre
h <- 0.15
### aggiungere produzione interna e degradazione  m
lines(rep(0, 2), c(0, 4), col="grey")
segments(-22, y, 22, y, lty="dotted", col="grey")  #linee orizzontali 
dev.off()

tiff('Barplot_Hg_1970.tiff', height=25, width=23, units='cm', 
     compression="lzw", res=300)
par(mar=c(0.5, 3, 2.5, 1), mfrow=c(1,1))  #bottom-left-top-right
plot.new()
plot.window(xlim=c(-500, 1100), ylim=c(-1, 4.5))
ticks <- seq(-500,1100,50)
y <- c(0.5,1.5,2.5,3.5) # posizione barre
h <- 0.15
### aggiungere produzione interna e degradazione  m
lines(rep(0, 2), c(0, 4), col="grey")
segments(-500, y, 1100, y, lty="dotted", col="grey")  #linee orizzontali 

#out ev_10,dp_10,outf_10 
rect(All_out_70, y-h, 0, y+h, col=c('black','cyan3','orange','royalblue'))
text(-32,3.5, expression("Outflow"), cex=.9)
text(-32,2.5, expression("Hg"[p]*~"Deposition"), cex=.9)
text(-32,1.5, expression("Hg"^0*~"Evasion"), cex=.9)

rect(0, y-h, All_in_70, y+h, col=c('darkgray',"lightcyan2","lightcyan2",
                                   "lightcyan2","lightcyan2",
                                   "lightcyan2"))
text(130,1.5, expression("Hg"[T]*~"River"), cex=.9)
text(130,2.5, expression("Hg"[p]*~"Atmospheric Deposition"), cex=.9)
text(130,3.5, expression("Venice City"), cex=.9)
dev.off()

tiff('Barplot_Hg_1995.tiff', height=25, width=23, units='cm', 
     compression="lzw", res=300)
par(mar=c(0.5, 3, 2.5, 1), mfrow=c(1,1))  #bottom-left-top-right
plot.new()
plot.window(xlim=c(-20, 20), ylim=c(-1, 4.5))
ticks <- seq(-20,20,10)
y <- c(0.5,1.5,2.5,3.5) # posizione barre
h <- 0.15
### aggiungere produzione interna e degradazione  m
lines(rep(0, 2), c(0, 4), col="grey")
segments(-22, y, 22, y, lty="dotted", col="grey")  #linee orizzontali 
rect(All_out_95, y-h, 0, y+h, col=c('black','cyan3','orange','royalblue'))
text(-12,3.5, expression("Outflow"), cex=.9)
text(-12,2.5, expression("Hg"[p]*~"Deposition"), cex=.9)
text(-12,1.5, expression("Hg"^0*~"Evasion"), cex=.9)

rect(0, y-h, All_in_95, y+h, col=c('darkgray',"lightcyan2","lightcyan2",
                                   "lightcyan2","lightcyan2",
                                   "lightcyan2"))
text(13,1.5, expression("Hg"[T]*~"River"), cex=.9)
text(13,2.5, expression("Hg"[p]*~"Atmospheric Deposition"), cex=.9)
text(13,3.5, expression("Venice City"), cex=.9)
dev.off()



tiff('Barplot_Hg_1995.tiff', height=25, width=23, units='cm', 
     compression="lzw", res=300)
par(mar=c(0.5, 3, 2.5, 1), mfrow=c(1,1))  #bottom-left-top-right
plot.new()
plot.window(xlim=c(-80, 80), ylim=c(-1, 4.5))

ticks <- seq(-80,80,20)
y <- c(0.5,1.5,2.5,3.5) # posizione barre
h <- 0.15
### aggiungere produzione interna e degradazione  m
lines(rep(0, 2), c(0, 4), col="grey")
segments(-80, y, 80, y, lty="dotted", col="grey")  #linee orizzontali 

rect(All_out_95, y-h, 0, y+h, col=c('black','cyan3','orange','royalblue'))
text(-12,3.5, expression("Outflow"), cex=.9)
text(-12,2.5, expression("Hg"[p]*~"Deposition"), cex=.9)
text(-12,1.5, expression("Hg"^0*~"Evasion"), cex=.9)

rect(0, y-h, All_in_95, y+h, col=c('darkgray',"lightcyan2","lightcyan2",
                                   "lightcyan2","lightcyan2",
                                   "lightcyan2"))
text(13,1.5, expression("Hg"[T]*~"River"), cex=.9)
text(13,2.5, expression("Hg"[p]*~"Atmospheric Deposition"), cex=.9)
text(13,3.5, expression("Venice City"), cex=.9)
dev.off()






bilancio_hg_10<-c(M_10, F_10, atm_10,V_10, 
                 -ev_10,-dp_10, outf_10)
names(bilancio_hg_10)<-c('Marghera','Fiumi','Atmosfera','Citta',
                         'Evasione','Deposizione','Outflow')

bilancio_hg95<-c( M_95, F_95, atm_95,V_95, 
                 -ev_95,dp_95, outf_95)
names(bilancio_hg95)<-c('Marghera','Fiumi','Atmosfera',
                        'Citta','Evasione',
                      'Deposizione','Outflow')

bilancio_hg2019<-c(M_19, F_19, atm_19,V_19, 
                    -ev_19,dp_19, outf_19)
names(bilancio_hg2019)<-c('Marghera','Fiumi','Atmo','Citta','Output','Evasione',
                      'Deposizione')

bilancio_hg_70<-c( M_70, F_70, atm_70,V_70, 
                    -ev_70,-dp_70, outf_70)
names(bilancio_hg_70)<-c('Marghera','Fiumi','Atmosfera','Citta',
                         'Evasione','Deposizione','Outflow')

png('TUTTI_Bilancis2z.png',height = 13, width=22,
    units = 'cm',res=300)
par(mfrow=c(2,2),cex.axis=1.4, bty='n', mgp=c(2.3, 1, 0))
barplot(bilancio_hg_10,horiz =T, xlab='kg/y',
        main='Bilancio del Hg \n (1910)',
        axisnames=F,
        xlim=c(-10,10),cex.names = .6,las=1,
        col=c('grey40','chartreuse3',
              'cyan3','wheat',
              'cyan4','darkorange',
              'darkblue'))
#axis(side=2,at=c(1.2,2.3,3.4,4.5,5.6,7,8),las=2,col='white',
  #   line=-6,  labels = names(bilancio_hg_10), cex=.5)
text(-10,8.2, expression("Outflow"), cex=.9,adj=0)
text(-10,7., expression("Hg"[p]*~"Deposition"),adj=0, cex=.9)
text(-10,6., expression("Hg"^0*~"Evasion"), cex=.9,adj=0)
text(-10,4.5, expression("Hg"[T]*~"Venice City"), cex=.9,adj=0)
text(-10,3.2, expression("Hg"[p]*~"Atmospheric Deposition"),adj=0, cex=.9)
text(-10,2.1, expression("Hg"[T]*~"River"), cex=.9,adj=0)
text(-10,1.1, expression("Hg"[T]*~"Industrial"), cex=.9,adj=0)

barplot(bilancio_hg_70,horiz =T, xlab='kg/y',
        main='Bilancio del Hg \n (1970)',names.arg = F,
        xlim=c(-1100,1100),cex.names = .6,
        axisnames=F,
        col=c('grey40','chartreuse3',
              'cyan3','wheat',
              'cyan4','darkorange',
              'darkblue'))
text(-1000,8.2, expression("Outflow"), cex=.9,adj=0)
text(-1000,7., expression("Hg"[p]*~"Deposition"),adj=0, cex=.9)
text(-1000,6., expression("Hg"^0*~"Evasion"), cex=.9,adj=0)
text(-1000,4.5, expression("Hg"[T]*~"Venice City"), cex=.9,adj=0)
text(-1000,3.2, expression("Hg"[p]*~"Atmospheric Deposition"),adj=0, cex=.9)
text(-1000,2.1, expression("Hg"[T]*~"River"), cex=.9,adj=0)
text(-1000,1.1, expression("Hg"[T]*~"Industrial"), cex=.9,adj=0)

barplot(bilancio_hg95, horiz = T,ylab='kg/y',
        main='Bilancio del Hg \n (1995)',
        cex.names=0.6,xlim=c(-100,100),
        axisnames=F,
        col=c('grey60','grey40','chartreuse3',
              'cyan3','wheat',
              'grey80','cyan4','darkorange',
              'darkblue'))
text(-100,8.2, expression("Outflow"), cex=.9,adj=0)
text(-100,7., expression("Hg"[p]*~"Deposition"),adj=0, cex=.9)
text(-100,6., expression("Hg"^0*~"Evasion"),adj=0, cex=.9)
text(-100,4.5, expression("Hg"[T]*~"Venice City"),adj=0, cex=.9)
text(-100,3.2, expression("Hg"[p]*~"Atmospheric Deposition"), adj=0,cex=.9)
text(-100,2.1, expression("Hg"[T]*~"River"), adj=0,cex=.9)
text(-100,1.1, expression("Hg"[T]*~"Industrial"), adj=0,cex=.9)


barplot(bilancio_hg2019, horiz = T, cex.names=0.6,
        ylab='kg/y',axisnames=F,
        xlim = c(-20,20),main='Bilancio del Hg \n (2019)',
        col=c('grey40','chartreuse3',
              'cyan3','wheat',
              'cyan4','darkorange',
              'darkblue'))
text(-20,8.2, expression("Outflow"), cex=.9,adj=0)
text(-20,7., expression("Hg"[p]*~"Deposition"),adj=0, cex=.9)
text(-20,6., expression("Hg"^0*~"Evasion"),adj=0, cex=.9)
text(-20,4.5, expression("Hg"[T]*~"Venice City"),adj=0, cex=.9)
text(-20,3.2, expression("Hg"[p]*~"Atmospheric Deposition"), adj=0,cex=.9)
text(-20,2.1, expression("Hg"[T]*~"River"), adj=0,cex=.9)
text(-20,1.1, expression("Hg"[T]*~"Industrial"),adj=0, cex=.9)
dev.off()
