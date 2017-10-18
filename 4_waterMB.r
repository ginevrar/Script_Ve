setwd('C:/Users/Ginevra/Dropbox/2017_Venice')
input<-read.csv('input103_1900.csv', header=TRUE, sep=';')
str(input)

setwd('C:/Users/Ginevra/Dropbox/2017_Venice/107')
sed_bal<-read.table("sed_bal.txt", header=TRUE)
sed_bal<-sed_bal[13:2428,]
str(sed_bal)
volat<-read.table('volat.txt', header=T); str(volat)

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
hg<-hg[15:2426,]

temp<-read.csv('Segment_temperature.csv', skip=1)
names(temp)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
 temp<-temp[15:2426,]

 TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
 names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
 TOTs<-TOTs[15:2426,]
 
time.steps <- temp[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1901-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate

diss_hg<-hgD+DOChg+hg0; str(diss_hg);


2416/151
151*16
#FR_medie<-read.csv("A_fotoreazioni_media1_2050.csv", header=TRUE)

diffusion_kg_y		<-sed_bal$diff_Hg
#diffusion_sed_to_sed_kmol_y	<-bent_dyn$diffusion_sed_to_sed_kmol_y
netDepo1_kg_y 		<-sed_bal$NET_deposited
burial2_kg_y 			<-sed_bal$TOT_buried
depo_Phg_kg_y 		<-sed_bal$Hg_depo_tot
res_Phg_kg_y 		  <-sed_bal$Hg_res_tot
evasione_kg_y     <-volat$v1

## ----_____   bound mc/s -> mc/y  __________
bound3  <-	(-8) *60*60*24 *365  
bound10 <-	(-31)*60*60*24 *365  
bound7  <-	5    *60*60*24 *365   

water3<-hg$wn3; solids3<-TOTs$wn3  #Lido       2.52288e+08
water7<-hg$wc7; solids7<-TOTs$wc7  #Malamocco     1.5768e+08
water10<-hg$ws10; solids10<-TOTs$ws10  #chioggia  9.77616e+08

#lido and Malamocco:  5.6 10^10 m3 year?1
#Chioggia :  2.8 10^10 m3 year?1

outflow<-(water3*bound3)+(water10*bound10)  #ug /y
inflow<-water7*bound7

hg_outflow_kg_y<-outflow/10^9
hg_inflow_kg_y<-inflow/10^9

### solids out
outflow_solids<-(bound3*solids3)+(bound10*solids10)
inflow_solids<-bound7*solids7

## _______________________________
str(evasione_kg_y)

evasione_kg_y<-evasione_kg_y[15:2426]
depo_Phg_kg_y<-depo_Phg_kg_y[15:2426]
res_Phg_kg_y<-res_Phg_kg_y[15:2426]
hg_inflow_kg_y<-hg_inflow_kg_y[15:2426]
hg_outflow_kg_y<-hg_outflow_kg_y[15:2426]
diffusion_kg_y<-diffusion_kg_y [15:2426]
burial2_kg_y <-burial2_kg_y[15:2426]

evasione_kg_y_media<-tapply(evasione_kg_y, rep(1:(length(evasione_kg_y)/12),each = 12),mean)
depo_Phg_kg_y_media<-tapply(depo_Phg_kg_y, rep(1:(length(depo_Phg_kg_y)/12),each = 12),mean)
res_Phg_kg_y_media<-tapply(res_Phg_kg_y, rep(1:(length(res_Phg_kg_y)/12),each = 12),mean)
hg_outflow_kg_y_media<-tapply(hg_outflow_kg_y, rep(1:(length(hg_outflow_kg_y)/12),each = 12),mean)
hg_inflow_kg_y_media<-tapply(hg_inflow_kg_y, rep(1:(length(hg_inflow_kg_y)/12),each = 12),mean)
hg_outflow_kg_y_media<-tapply(hg_outflow_kg_y, rep(1:(length(hg_outflow_kg_y)/12),each = 12),mean)
diffusion_kg_y_media<-tapply(diffusion_kg_y, rep(1:(length(diffusion_kg_y)/12),each = 12),mean)
burial2_kg_y_media<-tapply(burial2_kg_y, rep(1:(length(burial2_kg_y)/12),each = 12),mean)

#____________SOMMA DEI TERMINI DI OUTPUT delle ACQUE
Output_terms<-as.numeric(evasione_kg_y_media + depo_Phg_kg_y_media + 
                           hg_outflow_kg_y_media); str(Output_terms); 

#____________SOMMA DEI TERMINI DI INPUT delle ACQUE

Marghera<-input$Marghera
river_hg<-input$Fiumi
atm_hg<-input$Atmo
veCity<-input$city

Input_terms<-(river_hg+atm_hg+hg_inflow_kg_y_media+Marghera+
                diffusion_kg_y_media+veCity); str(Input_terms); 


diffe<-as.numeric(Input_terms-Output_terms); str(diffe)
diff_media   <-tapply(diffe,rep(1:(length(diffe)/12),each = 12), mean); 

cumulative_diff_kmol<-cumsum(diff_media); tail(cumulative_diff_kmol,1)

in_out<-cbind(evasione_kg_y_media, depo_Phg_kg_y_media, 
                     hg_outflow_kg_y_media,Output_terms, river_hg, atm_hg,
                   hg_inflow_kg_y_media, diffusion_kg_y_media,veCity, Input_terms)

str(in_out)
write.table(in_out, file="water_input_output.txt")

ax2<-(seq(1900,2100, by=1))


at<-mean(atm_hg[101])
empty_v<-rep('NA',201)
empty_v[101]<- at

ri<-river_hg[101]
empty_v2<-rep('NA',201)
empty_v2[101]<-ri

ri/T_in
inc<-mean(hg_inflow_kg_y_media[101])
empty_v3<-rep('NA',201)
empty_v3[101]<- inc

di<-mean(diffusion_kg_y_media[101])
empty_v4<-rep('NA',201)
empty_v4[101]<- di

0.4/T_in*100

T_in<-mean(Input_terms[101])
empty_v5<-rep('NA',201)
empty_v5[101]<- T_in

ev<-mean(evasione_kg_y_media[101])
empty_v6<-rep('NA',201)
empty_v6[101]<- -ev

dp<-mean(depo_Phg_kg_y_media[101])
empty_v7<-rep('NA',201)
empty_v7[101]<- -dp

ev/T_ou*100
dp/T_ou*100

mean(burial2_kmol_y[101])/dp*100

di/dp*100

outc<-mean(hg_outflow_kg_y_media[101])
empty_v8<-rep('NA',201)
empty_v8[101]<--outc
outc/T_ou*100

T_ou<-mean(Output_terms[101])
empty_v9<-rep('NA',201)
empty_v9[101]<--T_ou

bilancio_hg<-c(T_in,ri,di,ev,dp, outc,T_ou)
names(bilancio_hg)<-c('input','river','diff','evas','depo','outflow','output')
bilancio_hg
#setwd("C:/Users/gi/Dropbox/BlackSea2/implementazione/BlackSea_IIDraft/submission_figures")
str(atm_hg_kmol_y)

#tiff('Fig.7A_Hg.tiff', height=25, width=23, units='cm', 
#   compression="lzw", res=300)
str(inou)

par(mfrow=c(1,1), mar=c(5,5,4,1), bty='n') 

plot(ax2, atm_hg, col="cyan3", type="l", ylim=c(-2000,400000), 
     main=expression(paste('Hg'[T]*' fluxes to the Black Sea')), ylab= " ", 
     xlab= " ",  lwd=1, cex.axis=2, cex.lab=2,cex.main=2.3)
par(new=T)
plot(ax2,empty_v, type='p', xlab= " ", ylab= " ",
     pch=23, cex=2.8, xaxt='n',yaxt='n', ylim=c(-2000,400000), bg='cyan4',col='black')
#axis(1,at=c(1850,1900,1950,2000,2050),labels=T, cex.axis=2.5)
#abline(v=2013, lty=2, col='gray60', lwd=2)
#text(2025,38,'2013',col='gray60', cex=1.9)
par(new=TRUE)
plot(ax2,river_hg, col="chartreuse3", type="l", 
     xaxt='n',yaxt='n', ylim=c(-2000,400000), 
     ylab= " ",xlab= " ",  lwd=1)
par(new=TRUE)
plot(ax2,empty_v2, bg='chartreuse4' ,col='black',type='p', xlab= " ", ylab= " ", 
     pch=23, cex=2.8, xaxt='n',yaxt='n',ylim=c(-2000,400000))
par(new=TRUE)
plot(ax2,hg_inflow_kg_y_media, col="darkblue", type="l", 
     xaxt='n',yaxt='n',
     ylim=c(-2000,400000), ylab= " ", xlab= " ",  lwd=2)
par(new=TRUE)
plot(ax2,empty_v3, bg='darkblue' ,col='black',type='p',
     xlab= " ", ylab= " ", pch=23, cex=2.8, xaxt='n',yaxt='n', ylim=c(-2000,400000))
par(new=TRUE)
plot(ax2,diffusion_kg_y_media, col="darkgoldenrod1", type="l", 
     xaxt='n',yaxt='n',
    ylim=c(-2000,400000), ylab= " ", xlab= " ",  lwd=2)
par(new=TRUE)
plot(ax2,empty_v4, bg='darkgoldenrod' ,col='black',type='p', xlab= " ", ylab= " ",
     pch=23, cex=2.8, xaxt='n',yaxt='n', ylim=c(-2000,400000))
par(new=TRUE)
plot(ax2, Input_terms, col="black", type="l", lty=2, 
     xaxt='n',yaxt='n',
     ylim=c(-2000,400000), ylab= " ", xlab= " ",  lwd=1)
par(new=TRUE)
plot(ax2,empty_v5, bg='grey90' ,col='darkgrey',type='p', xlab= " ", 
     ylab= " ", pch=23, cex=4, xaxt='n',yaxt='n', ylim=c(-2000,400000))
par(new=TRUE)
plot(ax2,Marghera, bg='grey90' ,col='gray50',type='l', xlab= " ", ylab= " ", 
     pch=23, cex=4, xaxt='n',yaxt='n',ylim=c(-2000,400000))
par(new=TRUE)
plot(ax2,-evasione_kg_y_media, col="cyan4", type="l", xlab= " ", 
   ylim=c(-2000,400000), xaxt='n',yaxt='n',
     main=" ", ylab= " ",  lwd=1)
par(new=TRUE)
plot(ax2,empty_v6, bg='cyan4' ,col='black',type='p',
     xlab= " ", ylab= " ", pch=23, cex=2.8, xaxt='n',yaxt='n', ylim=c(-2000,400000))
par(new=TRUE)

plot(ax2,res_Phg_kg_y_media, col="orange", type="l", xlab= " ", 
     ylim=c(-2000,400000), xaxt='n',yaxt='n',
     ylab= " ",  lwd=1)
par(new=TRUE)
plot(ax2,-depo_Phg_kg_y_media, col="orange", type="l", xlab= " ", 
     ylim=c(-2000,400000), xaxt='n',yaxt='n',
     ylab= " ",  lwd=1)
par(new=TRUE)
plot(ax2,empty_v7, bg='darkorange' ,col='black',type='p', xlab= " ", ylab= " ", 
     pch=23, cex=2.8, xaxt='n',yaxt='n', ylim=c(-2000,400000))
par(new=TRUE)
plot(ax2, -hg_outflow_kg_y_media, col="darkblue", type="l", 
     ylim=c(-2000,400000),xlab= " ",xaxt='n',yaxt='n',
     ylab= " ",  lwd=2)
par(new=TRUE)
plot(ax2,empty_v8, bg=' darkblue' ,col='black',type='p', xlab= " ", ylab= " ", 
     pch=23, cex=2.8, xaxt='n',yaxt='n', ylim=c(-2000,400000))
par(new=TRUE)
plot(ax2,-Output_terms, col="black", type="l", lty=2, 
     ylim=c(-2000,400000), xaxt='n',yaxt='n',
     xlab= " ", ylab= "",  lwd=1)
par(new=TRUE)
plot(ax2,empty_v9, bg='grey90' ,col='darkgrey',
     type='p', xlab= " ", ylab= " ", pch=23, cex=4, xaxt='n',yaxt='n',
     ylim=c(-2000,400000))

mtext(expression(paste('kmol y'^-1)), 2, at= 0, line=2.6, cex=2)
