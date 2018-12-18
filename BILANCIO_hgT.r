#setwd('C:/Users/gi/Desktop/finaleRITAMRE/nuoviin2')
setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')

sed_bal<-read.table("sed_balHg.txt", header=TRUE) # leggo output Mass balance Hg - kg y-1; 1 output al mese
sed_bal2<-read.table("Net_hg_flux.txt", header=TRUE) # leggo output Mass balance Hg - kg y-1; 1 output al mese

input_long<-read.table('Total_IN_long.txt')  #leggo input: 1 al mese  - kg y-1;
input_short<-read.table('Total_IN.txt')   #leggo input: 1 all'anno - kg y-1;

evasione_kg_y     <-volat$vol[1:2412]
netDepo1_kg_y 		<-rowSums(sed_bal[1:2412,])
plot(netDepo1_kg_y)
plot(sed_bal2$x)


po_Phg_kg_y<-depo_Phg_kg_y[1:2412]
res_Phg_kg_y<-res_Phg_kg_y[1:2412]
hg_inflow_kg_y<-hg_inflow_kg_y[1:2412]
hg_outflow_kg_y<-hg_outflow_kg_y[1:2412]
diffusion_kg_y<-diffusion_kg_y [1:2412]
burial2_kg_y <-burial2_kg_y[1:2412]

 # leggo output concentrazioni modello
hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

time.steps <- temp[,1]; time.steps3 <- time.steps*24*3600; TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1901-01-01")
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y");rdate

plot(evasione_kg_y)
## ------------ bound mc/s -> mc/y --------------------
bound3  <-	(-7) *60*60*24*365; bound10 <-	(-25)*60*60*24*365; bound7  <-	(-15)*60*60*24*365  #8.4 10^10 m3 year acque nord; 6.9x10^8 bound 3 + 7 

water3<-hg$wn3; solids3<-TOTs$wn3  #Lido       
water7<-hg$wc7; solids7<-TOTs$wc7  #Malamocco     1.5768e+08
water10<-hg$ws10; solids10<-TOTs$ws10  #chioggia  9.77616e+08   
#lido and Malamocco:  5.6 10^10 m3 year?1
#Chioggia :  2.8 10^10 m3 year?1

#ngL*mcy
outflow_ugy<-(water3*bound3)+(water10*bound10)+(water7*bound7)  #ug /y
hg_outflow_kg_y<-outflow_ugy/10^9
hg_inflow_kg_y<-inflow/10^9

plot(hg_outflow_kg_y)
### solids out
outflow_solids<-(bound3*solids3)+(bound10*solids10)+(bound7*solids7)
str(Marghera)
## _______________________________
  str(evasione_kg_y); tail(rdate[1:2412])


  hg_outflow_kg_y_media<-tapply(hg_outflow_kg_y, rep(1:(length(hg_outflow_kg_y)/12),each = 12),mean)
#anno_media<-tapply(input_hg1$anno[1:2412], rep(1:(length(input_hg1$anno[1:2412])/12),each = 12),mean)

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

str(veCity)
Input_terms<-(river_hg+atm_hg+hg_inflow_kg_y_media+Marghera+
              +veCity); str(Input_terms); 

diffe<-as.numeric(input_short$tt-Output_terms); str(diffe)

plot(diffe)

in_out<-cbind(evasione_kg_y_media, depo_Phg_kg_y_media, 
                     hg_outflow_kg_y_media,Output_terms, river_hg, atm_hg,
                   hg_inflow_kg_y_media,veCity, Input_terms) 
#diffusion_kg_y_media

str(in_out)
write.table(in_out, file="water_input_output.txt")

ax2<-(seq(1900,2100, by=1))

ev_10<-mean(evasione_kg_y_media[10])
dp_10<-mean(depo_Phg_kg_y_media[10])
outf_10<-mean(hg_outflow_kg_y_media[10])

ev_17<-mean(evasione_kg_y_media[117])
dp_17<-mean(depo_Phg_kg_y_media[117])
outf_17<-mean(hg_outflow_kg_y_media[117])

ev_95<-mean(evasione_kg_y_media[95])
dp_95<-mean(depo_Phg_kg_y_media[95])
outf_95<-mean(hg_outflow_kg_y_media[95])

ev_70<-mean(evasione_kg_y_media[70])
dp_70<-mean(depo_Phg_kg_y_media[70])
outf_70<-mean(hg_outflow_kg_y_media[70])

T_ou_95<-ev_95+dp_95+outf_95
T_ou_70<-ev_70+dp_70+outf_70
T_ou_17<-ev_17+dp_17+outf_17
T_ou_10<-ev_10+dp_10+outf_10


# input from Marghera 
M_10<-input_short$ind3[11];M_70<-input_short$ind3[71]
M_95<-input_short$ind3[96];M_2017<-input_short$ind3[119]

# input from River 
F_10<-input_short$ri[11]+input_short$riv_mehg[11]; F_70  <-input_short$ri[71]+input_short$riv_mehg[71]
F_95<-input_short$ri[96]+input_short$riv_mehg[96]; F_2017<-input_short$ri[119]+input_short$riv_mehg[119]

# input from atmosph. 
atm_10<-input_short$de[11]; atm_70  <-input_short$de[71] 
atm_95<-input_short$de[96]; atm_2017<-input_short$de[119] 

# input from city 
V_10<-input_short$ci[11]; V_70  <-input_short$ci[71] 
V_95<-input_short$ci[96]; V_2017<-input_short$ci[119] 

M_70/T_in_70*100
M_95/T_in_95*100

T_in_10=M_10+F_10+atm_10+V_10
T_in_70=M_70+F_70+atm_70+V_70
T_in_95=M_95+F_95+atm_95+V_95
T_in_17=M_2017+F_2017+atm_2017+V_2017

F_2017/T_in_17
M_2017/T_in_17*100
Ve_2017/T_in_17
atm_2017/T_in_17

bilancio_hg95<-c(T_in_95, M_95, F_95, atm_95,V_95, 
                 -T_ou_95, -ev_95,dp_95, outf_95)
names(bilancio_hg95)<-c('Carichi totali','Marghera','Fiumi','Atmosfera','Citta','Output','Evasione',
                      'Deposizione','Outflow')

bilancio_hg2017<-c(T_in_17, M_2017, F_2017, atm_2017,V_2017, 
                   -T_ou_17, -ev_17,-dp_17, outf_17)
names(bilancio_hg2017)<-c('Input','Marghera','Fiumi','Atmosfera','Citta','Output','Evasione',
                      'Deposizione','Outflow')

bilancio_hg_70<-c(T_in_70, M_70, F_70, atm_70,V_70, 
                   -T_ou_70, -ev_70,-dp_70, outf_70)
names(bilancio_hg_70)<-c('Carichi totali','Marghera','Fiumi','Atmosfera','Citta',
                          'Output','Evasione','Deposizione','Outflow')

bilancio_hg_10<-c(T_in_10, M_10, F_10, atm_10,V_10, 
                  -T_ou_10, -ev_10,-dp_10, outf_10)
names(bilancio_hg_10)<-c('Carichi totali','Marghera','Fiumi','Atmosfera','Citta',
                         'Output','Evasione','Deposizione','Outflow')

png('Bilanc123.png',height = 13, width=18,
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

png('Bilanc223.png',height = 13, width=18,
    units = 'cm',res=300)
par(mfrow=c(1,1))
barplot(bilancio_hg95, horiz = F,ylab='kg/y',
        main='Bilancio del Hg \n (1995)',cex.names=0.6,ylim=c(-100,100),
        col=c('grey60','grey40','chartreuse3',
                     'cyan3','wheat',
              'grey80','cyan4','darkorange',
                              'darkblue'))
dev.off()

png('Bilanc323.png',height = 13, width=18,
    units = 'cm',res=300)
par(mfrow=c(1,1))
barplot(bilancio_hg2017, horiz = F, cex.names=0.6,ylab='kg/y',
        ylim = c(-30,30),main='Bilancio del Hg \n (2017)',
        col=c('grey60','grey40','chartreuse3',
                              'cyan3','wheat',
              'grey80','cyan4','darkorange',
                              'darkblue'))
dev.off()



png('TUTTI_Bilancis2q23.png',height = 13, width=22,
    units = 'cm',res=300)
par(mfrow=c(2,2), bty=T)
barplot(bilancio_hg_10,horiz =T, ylab='kg/y',
        main='Bilancio del Hg \n (1910)',
        xlim=c(-1000,1000),cex.names = .6,
        col=c('grey60','grey40','chartreuse3',
              'cyan3','wheat',
              'grey80','cyan4','darkorange',
              'darkblue'))
barplot(bilancio_hg_70,horiz =T, ylab='kg/y',
        main='Bilancio del Hg \n (1970)',
        xlim=c(-1000,1000),cex.names = .6,
        col=c('grey60','grey40','chartreuse3',
              'cyan3','wheat',
              'grey80','cyan4','darkorange',
              'darkblue'))
barplot(bilancio_hg95, horiz = T,ylab='kg/y',
        main='Bilancio del Hg \n (1995)',cex.names=0.6,xlim=c(-1000,1000),
        col=c('grey60','grey40','chartreuse3',
              'cyan3','wheat',
              'grey80','cyan4','darkorange',
              'darkblue'))
barplot(bilancio_hg2017, horiz = T, cex.names=0.6,ylab='kg/y',
        xlim = c(-1000,1000),main='Bilancio del Hg \n (2018)',
        col=c('grey60','grey40','chartreuse3',
              'cyan3','wheat',
              'grey80','cyan4','darkorange',
              'darkblue'))
dev.off()