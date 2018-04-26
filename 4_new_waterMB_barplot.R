setwd('C:/Users/gi/Dropbox/2017_Venice')
input<-read.table('input_NEW.txt', header=TRUE)
str(input)
input<-input[(input$anno>=1920 & 
                input$anno<=2020), ]

setwd('C:/Users/gi/Desktop/finaleRITAMRE/nuoviin2')

sed_bal<-read.table("sed_balHg.txt", header=TRUE)
sed_bal<-sed_bal[13:2428,]

uu<-(sed_bal$Hg_depo6_kg_y)
vv<-sed_bal$Hg_depo7_kg_y
zz<-(sed_bal$Hg_depo10_kg_y)
neg<-cbind(uu,vv,zz)

apa<-(sed_bal$Hg_depo1_kg_y)
abi<-(sed_bal$Hg_depo2_kg_y)
aczi<-(sed_bal$Hg_depo3_kg_y)
ace<-(sed_bal$Hg_depo4_kg_y)
ado<-(sed_bal$Hg_depo5_kg_y)

sed_bal_pos<-sed_bal[(sed_bal>0),]
sed_bal_neg<-rowSums(neg)

plot((sed_bal_neg))
(summary(sed_bal))

volat<-read.table('volat.txt', header=T); str(volat)
names(volat)<-'vol'


hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
hg<-hg[1:2412,]

temp<-read.csv('Segment_temperature.csv', skip=1)
names(temp)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
 temp<-temp[1:2412,]

 TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
 names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
 TOTs<-TOTs[1:2412,]
 
time.steps <- temp[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1901-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate
diss_hg<-hgD+DOChg+hg0; str(diss_hg);

2416/151
151*16

netDepo1_kg_y 		<-rowSums(sed_bal)
#burial2_kg_y 			<-sed_bal$TOT_buried
#depo_Phg_kg_y 		<-sed_bal$Hg_depo_tot
#res_Phg_kg_y 		  <-sed_bal$Hg_res_tot
evasione_kg_y     <-volat$vol

## ----_____   bound mc/s -> mc/y  __________
bound3  <-	(-7) *60*60*24 *365  
bound10 <-	(-25)*60*60*24 *365  
bound7  <-	(-15) *60*60*24 *365   

 #8.4 10^10 m3 year acque nord 
# 6.9 10^8 bound 3 + 7
# 6.9 10^8 bound 3 + 7
bound3+bound7; bound10
water3<-hg$wn3; solids3<-TOTs$wn3  #Lido       
water7<-hg$wc7; solids7<-TOTs$wc7  #Malamocco     1.5768e+08
water10<-hg$ws10; solids10<-TOTs$ws10  #chioggia  9.77616e+08

#lido and Malamocco:  5.6 10^10 m3 year?1
#Chioggia :  2.8 10^10 m3 year?1

#ngL*mcy
outflow_ugy<-(water3*bound3)+(water10*bound10)+(water7*bound7)  #ug /y

plot(water3)
hg_outflow_kg_y<-outflow_ugy/10^9
hg_inflow_kg_y<-inflow/10^9

plot(hg_outflow_kg_y)
### solids out
outflow_solids<-(bound3*solids3)+(bound10*solids10)+(bound7*solids7)
str(Marghera)
## _______________________________
str(evasione_kg_y)

evasione_kg_y<-evasione_kg_y[1:2412]
depo_Phg_kg_y<-depo_Phg_kg_y[1:2412]
res_Phg_kg_y<-res_Phg_kg_y[1:2412]
hg_inflow_kg_y<-hg_inflow_kg_y[1:2412]
hg_outflow_kg_y<-hg_outflow_kg_y[1:2412]
diffusion_kg_y<-diffusion_kg_y [1:2412]
burial2_kg_y <-burial2_kg_y[1:2412]

evasione_kg_y_media<-tapply(evasione_kg_y, 
                            rep(1:(length(evasione_kg_y)/12),each = 12),mean)
depo_Phg_kg_y_media<-tapply(netDepo1_kg_y[1:2412], 
                            rep(1:(length(netDepo1_kg_y[1:2412])/12),each = 12),mean)

plot(depo_Phg_kg_y_media)

str(hg_outflow_kg_y)
hg_outflow_kg_y_media<-tapply(hg_outflow_kg_y, rep(1:(length(hg_outflow_kg_y)/12),each = 12),mean)
anno_media<-tapply(input_hg1$anno[1:2412], rep(1:(length(input_hg1$anno[1:2412])/12),each = 12),mean)

#diffusion_kg_y_media<-tapply(diffusion_kg_y, rep(1:(length(diffusion_kg_y)/12),each = 12),mean)
#burial2_kg_y_media<-tapply(burial2_kg_y, rep(1:(length(burial2_kg_y)/12),each = 12),mean)

#____________SOMMA DEI TERMINI DI OUTPUT delle ACQUE
Output_terms<-as.numeric(evasione_kg_y_media + depo_Phg_kg_y_media +
                            hg_outflow_kg_y_media); str(Output_terms); 

#____________SOMMA DEI TERMINI DI INPUT delle ACQUE

Marghera<-input$Marghera
river_hg<-input$Fiumi
atm_hg<-input$Atmo
veCity<-input$city
anno<-input$anno

str(anno)
plot(anno)
Marghera_kg_y_media<-tapply(Marghera, 
                            rep(1:(length(Marghera)/12),each = 12),mean)

str(veCity)
Input_terms<-(river_hg+atm_hg+hg_inflow_kg_y_media+Marghera+
              +veCity); str(Input_terms); 

diffe<-as.numeric(Input_terms-Output_terms); str(diffe)

in_out<-cbind(evasione_kg_y_media, depo_Phg_kg_y_media, 
                     hg_outflow_kg_y_media,Output_terms, 
              river_hg, atm_hg,
                   hg_inflow_kg_y_media, 
              veCity, Input_terms) 
#diffusion_kg_y_media

str(in_out)
write.table(in_out, file="water_input_output.txt")

ax2<-(seq(1900,2100, by=1))


ev_17<-mean(evasione_kg_y_media[117])
dp_17<-mean(depo_Phg_kg_y_media[117])
outf_17<-mean(hg_outflow_kg_y_media[117])

ev_95<-mean(evasione_kg_y_media[95])
dp_95<-mean(depo_Phg_kg_y_media[95])
outf_95<-mean(hg_outflow_kg_y_media[95])

ev_70<-mean(evasione_kg_y_media[70])
dp_70<-mean(depo_Phg_kg_y_media[70])
outf_70<-mean(hg_outflow_kg_y_media[70])

T_ou_95<-ev_95+dp_95-outf_95
T_ou_70<-ev_70+dp_70-outf_70
T_ou_17<-ev_17+dp_17-outf_17

M_95<-40;M_2017<-4
F_95<-24;F_2017<-10
atm_95<-11.7;atm_2017<-5.85
Ve_95<-12;Ve_2017<-5
M_70=295;F_70=40; atm_70=23.44076;Ve_70= 6
M_70/T_in_70*100
M_95/T_in_95*100

T_in_70=M_70+F_70+atm_70+Ve_70
T_in_95=M_95+F_95+atm_95+Ve_95
T_in_17=M_2017+F_2017+atm_2017+Ve_2017

F_2017/T_in_17
M_2017/T_in_17*100
Ve_2017/T_in_17
atm_2017/T_in_17

bilancio_hg95<-c(T_in_95, M_95, F_95, atm_95,Ve_95, 
               -T_ou_95, -ev_95,-dp_95, outf_95)
names(bilancio_hg95)<-c('Carichi totali','Marghera',
                      'Fiumi','Atmosfera','Città',
                      'Output','Evasione',
                      'Deposizione','Outflow')

bilancio_hg2017<-c(T_in_17, M_2017, F_2017, atm_2017,Ve_2017, 
                   -T_ou_17, -ev_17,-dp_17, outf_17)
names(bilancio_hg2017)<-c('Input','Marghera',
                      'Fiumi','Atmosfera','Città',
                      'Output','Evasione',
                      'Deposizione','Outflow')

bilancio_hg_70<-c(T_in_70, M_70, F_70, atm_70,Ve_70, 
                   -T_ou_70, -ev_70,-dp_70, outf_70)
names(bilancio_hg_70)<-c('Carichi totali','Marghera',
                          'Fiumi','Atmosfera','Città',
                          'Output','Evasione',
                          'Deposizione','Outflow')
bilancio_hg
bilancio_hg_70

png('Bilanc1.png',height = 13, width=18,
    units = 'cm',res=300)
par(mfrow=c(1,1), bty=T)
barplot(bilancio_hg_70,horiz = F, ylab='kg/y',
        main='Bilancio del Hg \n (1970)',
        ylim=c(-400,400),cex.names = .6,
        col=c('grey60','grey40','chartreuse3',
              'cyan3','wheat',
              'grey80','cyan4','darkorange',
              'darkblue'))
dev.off()

png('Bilanc2.png',height = 13, width=18,
    units = 'cm',res=300)
par(mfrow=c(1,1))
barplot(bilancio_hg95, horiz = F,ylab='kg/y',
        main='Bilancio del Hg \n (1995)',cex.names=0.6,ylim=c(-100,100),
        col=c('grey60','grey40','chartreuse3',
                     'cyan3','wheat',
              'grey80','cyan4','darkorange',
                              'darkblue'))
dev.off()

png('Bilanc3.png',height = 13, width=18,
    units = 'cm',res=300)
par(mfrow=c(1,1))
barplot(bilancio_hg2017, horiz = F, cex.names=0.6,ylab='kg/y',
        ylim = c(-30,30),main='Bilancio del Hg \n (2017)',
        col=c('grey60','grey40','chartreuse3',
                              'cyan3','wheat',
              'grey80','cyan4','darkorange',
                              'darkblue'))
dev.off()
