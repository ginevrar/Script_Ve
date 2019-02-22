#### Calcolo Dispersione - Boundaries Exchange

# formula Vb*Sb = ((Ei*Ai)/Lci)*(Cbk-Cbi)

setwd('C:/Users/Acer/Dropbox/NewVenice20/w')
setwd('C:\\Users\\gi\\Desktop\\2156\\b')
setwd('C:\\Users\\Acer\\Desktop\\in_high_50_88b')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

# water Hg conc
water3<-hg$wn3; solids3<-TOTs$wn3  #Lido       
water7<-hg$wc7; solids7<-TOTs$wc7  #Malamocco     1.5768e+08
water10<-hg$ws10; solids10<-TOTs$ws10  #chioggia  9.77616e+08

plot(water7)

#--------------------------- DISPERSION AT BOUNDARIES --------------------------- 
## Boundaries Volumes 
Ai3=1200*2; Ai7=500*2; Ai10=420*2
d=1
Vb3<-Ai3*d; Vb7<-Ai7*d; Vb10<-Ai10*d

Lci=3000    # Length exchange (m)
E= 50*86400 ## Exchange coefficient (Ei), m s-1 to m d-1
     


# (Cbk-Cbi)
grad3 = (1.97-water3); grad7 = (1.97-water7); grad10 = (1.97-water10)  # ng L
head(hg$wn3)
grad3_solidi = (12.5-solids3); grad7_solidi = (12.5-solids7); grad10_solidi = (12.5-solids10)  # ng L

#formula Vb*Sb = ((Ei*Ai)/Lci)*
exchB3=(E*1200)/Lci; exchB7=(E*500)/Lci; exchB10=(E*420)/Lci       # m2 s-1*m2 *m-1 = m3 d-1

VbSb3=(exchB3*grad3)     # m3 d-1 * ug m-3 = ug d-1
VbSb7=(exchB7*grad7)     # m3 d-1 * ug m-3 = ug d-1
VbSb10=(exchB10*grad10)  # m3 d-1 * ug m-3 = ug d-1

Sb3_kgy=VbSb3*365/10^9
Sb7_kgy=VbSb7*365/10^9
Sb10_kgy=VbSb10*365/10^9

plot(Sb3_kgy);plot(Sb7_kgy);plot(Sb10_kgy)

Disper_tot_kgy<-(Sb3_kgy)+(Sb7_kgy)+(Sb10_kgy)

plot(Disper_tot_kgy)


#---------------- ADVECTIVE FLOWS  (Qi) m3 s-1 to m3 d-1  --------------------------------------
bound3  <-	(-7) *86400; bound10 <-	(-25)*86400; bound7  <-	(-15)*86400

#lido and Malamocco:  5.6 10^10 m3 year?1
#Chioggia :  2.8 10^10 m3 year?1

#ngL*mcy
outflow_ugd<-(water3*bound3)+(water10*bound10)+(water7*bound7)  # ug m-3 * m3 d-1 = 
hg_outflow_kg_y<-outflow_ugd*365/10^9
### solids out
outflow_solids_gy<-(bound3*solids3)+(bound10*solids10)+(bound7*solids7)
## _______________________________

plot(hg_outflow_kg_y)

write.table(Disper_tot_kgy, file='Disper_tot_kgy.txt')
write.table(hg_outflow_kg_y, file='Outflow_tot_kgy.txt')

