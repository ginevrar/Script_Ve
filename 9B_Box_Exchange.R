
water1<-mehg_19$wn1;  
water2<-mehg_19$wn2;  
water3<-mehg_19$wn3;  
water4<-mehg_19$wn4;  
water5<-mehg_19$wn5;  
water6<-mehg_19$wc6; 
water7<-mehg_19$wc7; 
water8<-mehg_19$ws8; 
water9<-mehg_19$ws9; 
water10<-mehg_19$ws10; 

water3_mhg<-mehg_19$wn3;    #Lido       water7_mhg<-mehg_19$wc7;    #Malamocco     1.5768e+08water10_mhg<-mehg_19$ws10;    #chioggia  9.77616e+08
#--------------------------- DISPERSION AT BOUNDARIES --------------------------- 
## Boundaries Volumes 
Ai21=9180; Ai24=3000; Ai15=1500; Ai13 = 3002; Ai45=3000; Ai25=3000; Ai35=15352; Ai63=6400; 
Ai67=5000; Ai73=3000; Ai78=5630; Ai89=5630; Ai810=5630; Ai910=4200; Ai710=4200; Ai56=3170

Lci=900    # Length exchange (m)
E= 6*86400 ## Exchange coefficient (Ei), m s-1 to m d-1

# (Cbk-Cbi)   #formula Vb*Sb = ((Ei*Ai)/Lci)*
grad21 = (water1-water2); grad24 = (water4-water2);
grad15 = (water5-water1); grad13 = (water3-water1);
grad45 = (water5-water4); grad25 = (water5-water2);
grad35 = (water5-water3); grad63 = (water3-water6);
grad67 = (water7-water6); grad73 = (water3-water7);
grad78 = (water8-water7); grad89 = (water9-water8);
grad810 = (water10-water8); grad910 = (water10-water9);
grad710 = (water10-water7); grad56 = (water6-water5);

exch56=grad56*((E*Ai56)/Lci)/10^9*365;
adv56=(27.9*water6)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv56+exch56)

exch710=grad710*((E*Ai710)/Lci)/10^9*365;
adv710=(16*water7)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv710-exch710)

exch910=grad910*((E*Ai910)/Lci)/10^9*365;
adv910=(9*water9)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv910-exch910)

exch810=grad810*((E*Ai810)/Lci)/10^9*365;
mean(exch810)

exch89=grad89*((E*Ai89)/Lci)/10^9*365;
adv89=(.4*water9)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv89+exch89)

exch78=grad73*((E*Ai78)/Lci)/10^9*365;
adv78=(3*water8)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv78+exch78)

exch73=grad73*((E*Ai73)/Lci)/10^9*365;
adv73=(0.03*water7)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv73-exch73)

exch67=grad67*((E*Ai67)/Lci)/10^9*365;
adv67=(28*water6)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv67-exch67)

exch63=grad63*((E*Ai63)/Lci)/10^9*365;
adv63=(44.03*water3)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv63+exch63)

exch35=grad35*((E*Ai35)/Lci)/10^9*365;
adv35=(3*water3)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv35-exch35)

exch45=grad45*((E*Ai45)/Lci)/10^9*365;
adv45=(19*water5)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv45+exch45)  #exchange da 4 a 5 ; adv da 5 a 4

exch25=grad25*((E*Ai25)/Lci)/10^9*365;
mean(exch25)  #da 2 a 5

exch21=grad21*((E*Ai21)/Lci)/10^9*365;
adv21=(35*water2)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv21-exch21)

exch24=grad24*((E*Ai24)/Lci)/10^9*365;
adv42=(19*water4)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv42+exch24)

exch15=grad15*((E*Ai15)/Lci)/10^9*365;
adv15=(19*water5)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv15+exch15)

exch13=grad13*((E*Ai13)/Lci)/10^9*365;
adv13=(54*water1)*31536000/10^9  #m3 s-1 *ug m3 
mean(adv13-exch13)


exchB7=(E*Ai7)/Lci; exchB10=(E*Ai10)/Lci       # m2 s-1*m2 *m-1 = m3 d-1

exchB3/1.05E+8


VbSb3=(exchB3*grad3)     # m3 d-1 * ug m-3 = ug d-1
VbSb7=(exchB7*grad7)     # m3 d-1 * ug m-3 = ug d-1
VbSb10=(exchB10*grad10)  # m3 d-1 * ug m-3 = ug d-1

Sb3_kgy=VbSb3*365/10^9
Sb7_kgy=VbSb7*365/10^9
Sb10_kgy=VbSb10*365/10^9

VbSb3_mhg=(exchB3*grad3_mhg)     # m3 d-1 * ug m-3 = ug d-1
VbSb7_mhg=(exchB7*grad7_mhg)     # m3 d-1 * ug m-3 = ug d-1
VbSb10_mhg=(exchB10*grad10_mhg)  # m3 d-1 * ug m-3 = ug d-1

Sb3_kgy_mhg=VbSb3_mhg*365/10^9
Sb7_kgy_mhg=VbSb7_mhg*365/10^9
Sb10_kgy_mhg=VbSb10_mhg*365/10^9


VbSb3_SED=(exchB3*grad3_solidi)     # m3 d-1 * ug m-3 = ug d-1
VbSb7_SED=(exchB7*grad7_solidi)     # m3 d-1 * ug m-3 = ug d-1
VbSb10_SED=(exchB10*grad10_solidi)  # m3 d-1 * ug m-3 = ug d-1

Sb3_kgy_SED=VbSb3_SED*365/10^9
Sb7_kgy_SED=VbSb7_SED*365/10^9
Sb10_kgy_SED=VbSb10_SED*365/10^9

par(mfrow=c(2,2))
#plot(Sb3_kgy);plot(Sb7_kgy);plot(Sb10_kgy)


Disper_tot_kgy<-(Sb3_kgy)+(Sb7_kgy)+(Sb10_kgy)
Disper_tot_kgy_mhg<-(Sb3_kgy_mhg)+(Sb7_kgy_mhg)+(Sb10_kgy_mhg)
Disper_tot_kgy_SED<-(Sb3_kgy_SED)+(Sb7_kgy_SED)+(Sb10_kgy_SED)


#---------------- ADVECTIVE FLOWS  (Qi) m3 s-1 to m3 d-1  --------------------------------------
bound3<-(-7)*86400; bound10 <-(-25.0005)*86400; bound7<-	(-14.999)*86400

#lido and Malamocco:  5.6 10^10 m3 year?1
#Chioggia :  2.8 10^10 m3 year?1

#ngL*mcy
outflow_ugd<-(water3*bound3)+(water10*bound10)+(water7*bound7)  # ug m-3 * m3 d-1 = 
hg_outflow_kg_y<-outflow_ugd*365/10^9


outflow_ugd_mhg<-(water3_mhg*bound3)+(water10_mhg*bound10)+(water7_mhg*bound7)  # ug m-3 * m3 d-1 = 
hg_outflow_kg_y_mhg<-outflow_ugd_mhg*365/10^9

### solids out
outflow_SED_gd<-((bound3*solids3)+(bound10*solids10)+(bound7*solids7)) # g m-3 * m3 d-1 = g d-1
hg_outflow_kg_y_SED<-outflow_SED_gd*365/1000
## _______________________________

out3_kgy<-(bound3*water3)*365/10^9
out10_kgy<-(bound10*water10)*365/10^9
out7_kgy<-(bound7*water7)*365/10^9

mean(out3_kgy+Sb3_kgy)+ mean(out7_kgy+Sb7_kgy)+ mean(out10_kgy+Sb10_kgy)



mean(Sb7_kgy)
mean(Sb10_kgy)
# plot(Disper_tot_kgy)
dfff<-data.frame(rdate19,hg_outflow_kg_y, Disper_tot_kgy, hg_outflow_kg_y_mhg,
                 Disper_tot_kgy_mhg,hg_outflow_kg_y_SED, Disper_tot_kgy_SED)
write.table(dfff, file='Disper_and_OUTfl_tot_kgy_19.txt')

#write.table(hg_outflow_kg_y, file='Outflow_tot_kgy.txt')
# write.table(Disper_tot_kgy_mhg, file='Disper_tot_MHG_kgy.txt')
#write.table(hg_outflow_kg_y_mhg, file='Outflow_tot_MHG_kgy.txt')

outflow_solids_tgy<-hg_outflow_kg_y_SED/10^3


