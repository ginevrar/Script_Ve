setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')
setwd('C:/Users/gi/Dropbox/NNN61/')

#sed_bal<-read.table("Net_hgSed_kgy.txt", header=TRUE);
sed_bal_ugd<-read.table("hgbal.txt", header=TRUE);
input_long<-read.table('Total_IN_long.txt');input_short<-read.table('Total_IN.txt')
volat<-read.table('volat.txt', header=T); str(volat)
names(volat)<-'vol'
plot(volat$vol)

cumsum(input_short[1:11,])

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
hg_outflow_kg_y<-hg_outflow_kg_y[1:2412]

evasione_kg_y_media<-tapply(evasione_kg_y, 
                            rep(1:(length(evasione_kg_y)/12),each = 12),mean)

depo_Phg_ug_d_media<-tapply(sed_bal_ugd[1:2412,], 
                            rep(1:(length(sed_bal_ugd[1:2412,])/12),each = 12),mean)

depo_Phg_ug_d_somma<-tapply(sed_bal_ugd[1:2412,], 
                            rep(1:(length(sed_bal_ugd[1:2412,])/12),each = 12),sum)


depo_Phg_kg_y_media<-depo_Phg_ug_d_media*365/10^9
depo_Phg_kg_y_somma<-depo_Phg_ug_d_somma*365/10^9

#sed_bal_ugd*365/10^9
#                           rep(1:(length(sed_bal_ugd[1:2412,])/12),each = 12),mean)

hg_outflow_kg_y_media<-tapply(hg_outflow_kg_y, rep(1:(length(hg_outflow_kg_y)/12),each = 12),mean)

#diffusion_kg_y_media<-tapply(diffusion_kg_y, rep(1:(length(diffusion_kg_y)/12),each = 12),mean)
#burial2_kg_y_media<-tapply(burial2_kg_y, rep(1:(length(burial2_kg_y)/12),each = 12),mean)

#____________SOMMA DEI TERMINI DI OUTPUT delle ACQUE
Output_terms<-as.numeric(-evasione_kg_y_media +
                           hg_outflow_kg_y_media); str(Output_terms); 

input_short

plot(input_short$tt-Output_terms)

reservoir_hg_w1<-a1*d1*hg$wn1/10^9  
reservoir_hg_w2<-a2*d2*hg$wn2/10^9
reservoir_hg_w3<-a3*d3*hg$wn3/10^9
reservoir_hg_w4<-a4*d4*hg$wn4/10^9
reservoir_hg_w5<-a5*d5*hg$wn5/10^9
reservoir_hg_w6<-a6*d6*hg$wc6/10^9
reservoir_hg_w7<-a7*d7*hg$wc7/10^9
reservoir_hg_w8<-a8*d8*hg$ws8/10^9
reservoir_hg_w9<-a9*d9*hg$ws9/10^9
reservoir_hg_w10<-a10*d10*hg$ws10/10^9

reservoir_hg_s1<-a1*d1*hg$sn1/10^9    #yg m-3 * m3/10^9 = kg
reservoir_hg_s2<-a2*d2*hg$sn2/10^9
reservoir_hg_s3<-a3*d3*hg$sn3/10^9
reservoir_hg_s4<-a4*d4*hg$sn4/10^9
reservoir_hg_s5<-a5*d5*hg$sn5/10^9
reservoir_hg_s6<-a6*d6*hg$sc6/10^9
reservoir_hg_s7<-a7*d7*hg$sc7/10^9
reservoir_hg_s8<-a8*d8*hg$ss8/10^9
reservoir_hg_s9<-a9*d9*hg$ss9/10^9
reservoir_hg_s10<-a10*d10*hg$ss10/10^9


total_reservoir_W<-c(reservoir_hg_w1+reservoir_hg_w2+reservoir_hg_w3+reservoir_hg_w4+
  reservoir_hg_w5+reservoir_hg_w6+reservoir_hg_w7+reservoir_hg_w8+reservoir_hg_w9+reservoir_hg_w10)

total_reservoir_Sed<-c(reservoir_hg_s1+reservoir_hg_s2+reservoir_hg_s3+reservoir_hg_s4+
  reservoir_hg_s5+reservoir_hg_s6+reservoir_hg_s7+reservoir_hg_s8+reservoir_hg_s9+reservoir_hg_s10)

total_reservoir_Sed_media<-tapply(total_reservoir_Sed[1:2412], 
                            rep(1:(length(total_reservoir_Sed[1:2412])/12),each = 12),mean)


total_reservoir_W_media<-tapply(total_reservoir_W[1:2412], 
                                  rep(1:(length(total_reservoir_W[1:2412])/12),each = 12),mean)


write.table(total_reservoir_W, file='total_reservoir_W.txt')
write.table(total_reservoir_Sed, file='total_reservoir_Sed.txt')

dep_net<-(input_short$tt-Output_terms-total_reservoir_Sed_media-total_reservoir_W_media)
total_reservoir_Sed_media
head(dep_net)

#total_reservoir_Sed_media[2]-total_reservoir_Sed_media[1]+


ax<-seq(1900,2100)
plot(ax,dep_net,type='l', col='orange',lwd=2)
abline(h=0)
abline(v=1970)

plot(rdate,total_reservoir_Sed,type='l', col='brown',lwd=2, yaxt='n')
par(new=T)
plot(rdate,total_reservoir_W,type='l', col='blue')
abline(v=rdate[1020])

head(total_reservoir_Sed)
str(total_reservoir_Sed)
