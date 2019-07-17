setwd('G:\\Il mio Drive\\CL_10\\out')
setwd('D:\\Ref_long')

a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

Model_aree<-c(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
Model_area<-sum(Model_aree)
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71

RESERV<-data.frame(RrW,RrS,RrDS, RrOS)

solids_sed1  <-silts_19$sn1+POMs_19$sn1;   solids_dsed1  <-silts_19$dsn1+POMs_19$dsn1;
solids_sed2  <-silts_19$sn2+POMs_19$sn2;   solids_dsed2  <-silts_19$dsn2+POMs_19$dsn2;
solids_sed3  <-silts_19$sn3+POMs_19$sn3;   solids_dsed3  <-silts_19$dsn3+POMs_19$dsn3;
solids_sed4  <-silts_19$sn4+POMs_19$sn4;   solids_dsed4  <-silts_19$dsn4+POMs_19$dsn4;
solids_sed5  <-silts_19$sn5+POMs_19$sn5;   solids_dsed5  <-silts_19$dsn5+POMs_19$dsn5;
solids_sed6  <-silts_19$sc6+POMs_19$sc6;   solids_dsed6  <-silts_19$dsc6+POMs_19$dsc6;
solids_sed7  <-silts_19$sc7+POMs_19$sc7;   solids_dsed7  <-silts_19$dsc7+POMs_19$dsc7;
solids_sed8  <-silts_19$ss8+POMs_19$ss8;   solids_dsed8  <-silts_19$dss8+POMs_19$dss8;
solids_sed9  <-silts_19$ss9+POMs_19$ss9;   solids_dsed9  <-silts_19$dss9+POMs_19$dss9;
solids_sed10  <-silts_19$ss10+POMs_19$ss10; solids_dsed10  <-silts_19$dss10+POMs_19$dss10;

#fraction of POM
fPOM  <-POMs_19/(POMs_19+silts_19)
fsilt <-silts_19/(POMs_19+silts_19)

write.table(POMs_19,'POM_19.txt')
write.table(silts_19,'silts_19.txt')
write.table(Phgs_19,'Phgs_19.txt')
write.table(POM_res_19,'POM_res_19.txt')
write.table(silt_res_19,'silts_res_19.txt')

POMs_19$wn1

#SEDhg*solid_sed -> ng/g
SEDhg_sed1   <-SEDhg_19$sn1;    SEDhg_dsed1   <-SEDhg_19$dsn1
SEDhg_sed2   <-SEDhg_19$sn2;    SEDhg_dsed2   <-SEDhg_19$dsn2
SEDhg_sed3   <-SEDhg_19$sn3;    SEDhg_dsed3   <-SEDhg_19$dsn3
SEDhg_sed4   <-SEDhg_19$sn4;    SEDhg_dsed4   <-SEDhg_19$dsn4
SEDhg_sed5   <-SEDhg_19$sn5;    SEDhg_dsed5   <-SEDhg_19$dsn5
SEDhg_sed6   <-SEDhg_19$sc6;    SEDhg_dsed6   <-SEDhg_19$dsc6
SEDhg_sed7   <-SEDhg_19$sc7;    SEDhg_dsed7   <-SEDhg_19$dsc7
SEDhg_sed8   <-SEDhg_19$ss8;    SEDhg_dsed8   <-SEDhg_19$dss8
SEDhg_sed9   <-SEDhg_19$ss9;    SEDhg_dsed9   <-SEDhg_19$dss9
SEDhg_sed10   <-SEDhg_19$ss10;  SEDhg_dsed10   <-SEDhg_19$dss10

POM_depo_gm2_day <-POM_depos_19*POMs_19[1:11]   #m/day * g m3  = g m2d
silt_depo_gm2_day<-silt_depos_19 *silts_19[1:11]

depo_gy_1<-(POM_depo_gm2_day$wn1+silt_depo_gm2_day$wn1)*a1*365
depo_gy_2<-(POM_depo_gm2_day$wn2+silt_depo_gm2_day$wn2)*a2*365
depo_gy_3<-(POM_depo_gm2_day$wn3+silt_depo_gm2_day$wn3)*a3*365
depo_gy_4<-(POM_depo_gm2_day$wn4+silt_depo_gm2_day$wn4)*a4*365
depo_gy_5<-(POM_depo_gm2_day$wn5+silt_depo_gm2_day$wn5)*a5*365
depo_gy_6<-(POM_depo_gm2_day$wc6+silt_depo_gm2_day$wc6)*a6*365
depo_gy_7<-(POM_depo_gm2_day$wc7+silt_depo_gm2_day$wc7)*a7*365
depo_gy_8<-(POM_depo_gm2_day$ws8+silt_depo_gm2_day$ws8)*a8*365
depo_gy_9<-(POM_depo_gm2_day$ws9+silt_depo_gm2_day$ws9)*a9*365
depo_gy_10<-(POM_depo_gm2_day$ws10+silt_depo_gm2_day$ws10)*a10*365

#metodo 1 - Phg
depo1_Phg_ug_m2_d<-(POM_depos_19$wn1*Phgs_19$wn1 *fPOM$wn1)+ (silt_depos_19$wn1*Phgs_19$wn1 *fsilt$wn1)     #m/day *ug/m3 = ug m2 d-1
depo2_Phg_ug_m2_d<-(POM_depos_19$wn2*Phgs_19$wn2 *fPOM$wn2)+ (silt_depos_19$wn2*Phgs_19$wn2 *fsilt$wn2)     #m/day *ug/m3 = ug m2 d-1
depo3_Phg_ug_m2_d<-(POM_depos_19$wn3*Phgs_19$wn3 *fPOM$wn3)+ (silt_depos_19$wn3*Phgs_19$wn3 *fsilt$wn3)     #m/day *ug/m3 = ug m2 d-1
depo4_Phg_ug_m2_d<-(POM_depos_19$wn4*Phgs_19$wn4 *fPOM$wn4)+ (silt_depos_19$wn4*Phgs_19$wn4 *fsilt$wn4)     #m/day *ug/m3 = ug m2 d-1
depo5_Phg_ug_m2_d<-(POM_depos_19$wn5*Phgs_19$wn5 *fPOM$wn5)+ (silt_depos_19$wn5*Phgs_19$wn5 *fsilt$wn5)     #m/day *ug/m3 = ug m2 d-1
depo6_Phg_ug_m2_d<-(POM_depos_19$wc6*Phgs_19$wc6 *fPOM$wc6)+ (silt_depos_19$wc6*Phgs_19$wc6 *fsilt$wc6)     #m/day *ug/m3 = ug m2 d-1
depo7_Phg_ug_m2_d<-(POM_depos_19$wc7*Phgs_19$wc7 *fPOM$wc7)+ (silt_depos_19$wc7*Phgs_19$wc7 *fsilt$wc7)     #m/day *ug/m3 = ug m2 d-1
depo8_Phg_ug_m2_d<-(POM_depos_19$ws8*Phgs_19$ws8 *fPOM$ws8)+ (silt_depos_19$ws8*Phgs_19$ws8 *fsilt$ws8)     #m/day *ug/m3 = ug m2 d-1
depo9_Phg_ug_m2_d<-(POM_depos_19$ws9*Phgs_19$ws9 *fPOM$ws9)+ (silt_depos_19$ws9*Phgs_19$ws9 *fsilt$ws9)     #m/day *ug/m3 = ug m2 d-1
depo10_Phg_ug_m2_d<-(POM_depos_19$ws10*Phgs_19$ws10 *fPOM$ws10)+ (silt_depos_19$ws10*Phgs_19$ws10 *fsilt$ws10)     #m/day *ug/m3 = ug m2 d-1

depo1_Phg_kg_y<-depo1_Phg_ug_m2_d*a1/10^9*365
depo2_Phg_kg_y<-depo2_Phg_ug_m2_d*a2/10^9*365
depo3_Phg_kg_y<-depo3_Phg_ug_m2_d*a3/10^9*365
depo4_Phg_kg_y<-depo4_Phg_ug_m2_d*a4/10^9*365
depo5_Phg_kg_y<-depo5_Phg_ug_m2_d*a5/10^9*365
depo6_Phg_kg_y<-depo6_Phg_ug_m2_d*a6/10^9*365
depo7_Phg_kg_y<-depo7_Phg_ug_m2_d*a7/10^9*365
depo8_Phg_kg_y<-depo8_Phg_ug_m2_d*a8/10^9*365
depo9_Phg_kg_y<-depo9_Phg_ug_m2_d*a9/10^9*365
depo10_Phg_kg_y<-depo10_Phg_ug_m2_d*a10/10^9*365

depo1b_Phg_ug_d<-depo1_Phg_ug_m2_d*a1
depo2b_Phg_ug_d<-depo2_Phg_ug_m2_d*a2
depo3b_Phg_ug_d<-depo3_Phg_ug_m2_d*a3
depo4b_Phg_ug_d<-depo4_Phg_ug_m2_d*a4
depo5b_Phg_ug_d<-depo5_Phg_ug_m2_d*a5
depo6b_Phg_ug_d<-depo6_Phg_ug_m2_d*a6
depo7b_Phg_ug_d<-depo7_Phg_ug_m2_d*a7
depo8b_Phg_ug_d<-depo8_Phg_ug_m2_d*a8
depo9b_Phg_ug_d<-depo9_Phg_ug_m2_d*a9
depo10b_Phg_ug_d<-depo10_Phg_ug_m2_d*a10

#metodo 2 -  depo hg
depo1_hg_ng_m2_d<-(SEDhg_19$wn1* POM_depo_gm2_day$wn1)+(SEDhg_19$wn1* silt_depo_gm2_day$wn1) #/1000   #ng g * g m-2 d-1 -> ng m2 d-1
depo2_hg_ng_m2_d<-(SEDhg_19$wn2* POM_depo_gm2_day$wn2)+(SEDhg_19$wn1* silt_depo_gm2_day$wn2) #/1000   #ng g * g m-2 d-1 -> ng m2 d-1
depo3_hg_ng_m2_d<-(SEDhg_19$wn3* POM_depo_gm2_day$wn3)+(SEDhg_19$wn1* silt_depo_gm2_day$wn3) #/1000   #ng g * g m-2 d-1 -> ng m2 d-1
depo4_hg_ng_m2_d<-(SEDhg_19$wn4* POM_depo_gm2_day$wn4)+(SEDhg_19$wn1* silt_depo_gm2_day$wn4) #/1000   #ng g * g m-2 d-1 -> ng m2 d-1
depo5_hg_ng_m2_d<-(SEDhg_19$wn5* POM_depo_gm2_day$wn5)+(SEDhg_19$wn1* silt_depo_gm2_day$wn5) #/1000   #ng g * g m-2 d-1 -> ng m2 d-1
depo6_hg_ng_m2_d<-(SEDhg_19$wc6* POM_depo_gm2_day$wc6)+(SEDhg_19$wn1* silt_depo_gm2_day$wc6) #/1000   #ng g * g m-2 d-1 -> ng m2 d-1
depo7_hg_ng_m2_d<-(SEDhg_19$wc7* POM_depo_gm2_day$wc7)+(SEDhg_19$wn1* silt_depo_gm2_day$wc7) #/1000   #ng g * g m-2 d-1 -> ng m2 d-1
depo8_hg_ng_m2_d<-(SEDhg_19$ws8* POM_depo_gm2_day$ws8)+(SEDhg_19$wn1* silt_depo_gm2_day$ws8) #/1000   #ng g * g m-2 d-1 -> ng m2 d-1
depo9_hg_ng_m2_d<-(SEDhg_19$ws9* POM_depo_gm2_day$ws9)+(SEDhg_19$wn1* silt_depo_gm2_day$ws9) #/1000   #ng g * g m-2 d-1 -> ng m2 d-1
depo10_hg_ng_m2_d <-(SEDhg_19$ws10* POM_depo_gm2_day$ws10)+(SEDhg_19$wn1* silt_depo_gm2_day$ws10) #/1000   #ng g * g m-2 d-1 -> ng m2 d-1

depo1c_hg_ng_d<-depo1_hg_ng_m2_d*a1
depo2c_hg_ng_d<-depo2_hg_ng_m2_d*a2
depo3c_hg_ng_d<-depo3_hg_ng_m2_d*a3
depo4c_hg_ng_d<-depo4_hg_ng_m2_d*a4
depo5c_hg_ng_d<-depo5_hg_ng_m2_d*a5
depo6c_hg_ng_d<-depo6_hg_ng_m2_d*a6
depo7c_hg_ng_d<-depo7_hg_ng_m2_d*a7
depo8c_hg_ng_d<-depo8_hg_ng_m2_d*a8
depo9c_hg_ng_d<-depo9_hg_ng_m2_d*a9
depo10c_hg_ng_d<-depo10_hg_ng_m2_d*a10

depo1_hg_kg_y<-depo1_hg_ng_m2_d*a1/10^12*365
depo2_hg_kg_y<-depo2_hg_ng_m2_d*a2/10^12*365
depo3_hg_kg_y<-depo3_hg_ng_m2_d*a3/10^12*365
depo4_hg_kg_y<-depo4_hg_ng_m2_d*a4/10^12*365
depo5_hg_kg_y<-depo5_hg_ng_m2_d*a5/10^12*365
depo6_hg_kg_y<-depo6_hg_ng_m2_d*a6/10^12*365
depo7_hg_kg_y<-depo7_hg_ng_m2_d*a7/10^12*365
depo8_hg_kg_y<-depo8_hg_ng_m2_d*a8/10^12*365
depo9_hg_kg_y<-depo9_hg_ng_m2_d*a9/10^12*365
depo10_hg_kg_y<-depo10_hg_ng_m2_d*a10/10^12*365

mean(depo1_hg_kg_y);mean(depo1_Phg_kg_y)
mean(depo2_hg_kg_y);mean(depo2_Phg_kg_y)
mean(depo3_hg_kg_y);mean(depo3_Phg_kg_y)
mean(depo4_hg_kg_y);mean(depo4_Phg_kg_y)
mean(depo5_hg_kg_y);mean(depo5_Phg_kg_y)
mean(depo6_hg_kg_y);mean(depo6_Phg_kg_y)
mean(depo7_hg_kg_y);mean(depo7_Phg_kg_y)
mean(depo8_hg_kg_y);mean(depo8_Phg_kg_y)
mean(depo9_hg_kg_y);mean(depo9_Phg_kg_y)

POM_res1_m_day<-POM_res_19$sn1      #
silt_res1_m_day<-silt_res_19$sn1
POM_res2_m_day<-POM_res_19$sn2
silt_res2_m_day<-silt_res_19$sn2 #
POM_res3_m_day<-POM_res_19$sn3      #res m/day *
silt_res3_m_day<-silt_res_19$sn3#
POM_res4_m_day<-POM_res_19$sn4
silt_res4_m_day<-silt_res_19$sn4
POM_res5_m_day<-POM_res_19$sn5
silt_res5_m_day<-silt_res_19$sn5
POM_res6_m_day<-POM_res_19$sc6
silt_res6_m_day<-silt_res_19$sc6
POM_res7_m_day<-POM_res_19$sc7
silt_res7_m_day<-silt_res_19$sc7
POM_res8_m_day<-POM_res_19$ss8
silt_res8_m_day<-silt_res_19$ss8
POM_res9_m_day<-POM_res_19$ss9
silt_res9_m_day<-silt_res_19$ss9
POM_res10_m_day<-POM_res_19$ss10
silt_res10_m_day<-silt_res_19$ss10

# RESUS SEDIMENT
res1_g_m2_d<-(POM_res1_m_day * POMs_19$sn1)+(silt_res1_m_day * silts_19$sn1)#/porosity$sn1      #m/day * g/m3 --> gm2d
res2_g_m2_d<-(POM_res2_m_day * POMs_19$sn2)+(silt_res2_m_day * silts_19$sn2)#/porosity$sn2      #m/day * g/m3
res3_g_m2_d<-(POM_res3_m_day * POMs_19$sn3)+(silt_res3_m_day * silts_19$sn3)#/porosity$sn3      #
res4_g_m2_d<-(POM_res4_m_day * POMs_19$sn4)+(silt_res4_m_day * silts_19$sn4)#/porosity$sn4
res5_g_m2_d<-(POM_res5_m_day * POMs_19$sn5)+(silt_res5_m_day * silts_19$sn5)#/porosity$sn5
res6_g_m2_d<-(POM_res6_m_day * POMs_19$sc6)+(silt_res6_m_day * silts_19$sc6)##/porosity$sc6
res7_g_m2_d<-(POM_res7_m_day * POMs_19$sc7)+(silt_res1_m_day * silts_19$sc7)#/porosity$sc7
res8_g_m2_d<-(POM_res8_m_day * POMs_19$ss8)+(silt_res1_m_day * silts_19$ss8)#/porosity$ss8      #1/day * g/m3
res9_g_m2_d<-(POM_res9_m_day * POMs_19$ss9)+(silt_res1_m_day * silts_19$ss9)#/porosity$ss9      #1/day * g/m3
res10_g_m2_d<-(POM_res10_m_day * POMs_19$ss10)+(silt_res1_m_day * silts_19$ss10)#/porosity$ss10      #1/day * g/m3

res1_kg_y <-(res1_g_m2_d*a1)*365/1000
res2_kg_y <-(res2_g_m2_d*a2)*365/1000
res3_kg_y <-(res3_g_m2_d*a3)*365/1000
res4_kg_y <-(res4_g_m2_d*a4)*365/1000
res5_kg_y <-(res5_g_m2_d*a5)*365/1000
res6_kg_y <-(res6_g_m2_d*a6)*365/1000
res7_kg_y <-(res7_g_m2_d*a7)*365/1000
res8_kg_y <-(res8_g_m2_d*a8)*365/1000
res9_kg_y <-(res9_g_m2_d*a9)*365/1000
res10_kg_y <-(res10_g_m2_d*a10)*365/1000

TOT_res_gy<-(res1_kg_y+res2_kg_y+res3_kg_y+res4_kg_y+res5_kg_y+
          res6_kg_y+res7_kg_y+res8_kg_y+res9_kg_y+res10_kg_y)*1000
mean(TOT_res_gy)


TOT_depo_gy<-(depo_gy_1+depo_gy_2+depo_gy_3+depo_gy_4+depo_gy_5+
              depo_gy_6+depo_gy_7+depo_gy_8+depo_gy_9+depo_gy_10)


mean(TOT_depo_gy)
#92.4% of re-suspension (1.13*10^12 g year?1) occurs in the northern basin
#and 7.6% from the southern basin (9.27?1010 g year-1).

# ::::::::::: METODO 1 :::::::::::::
res1_Phg_ug_m2_d<-(POM_res_19$sn1*Phgs_19$sn1 *fPOM$sn1)+ (silt_res_19$sn1*Phgs_19$sn1 *fsilt$sn1)     #m/day *ug/m3 = ug m2 d-1
res2_Phg_ug_m2_d<-(POM_res_19$sn2*Phgs_19$sn2 *fPOM$sn2)+ (silt_res_19$sn2*Phgs_19$sn2 *fsilt$sn2)     #m/day *ug/m3 = ug m2 d-1
res3_Phg_ug_m2_d<-(POM_res_19$sn3*Phgs_19$sn3 *fPOM$sn3)+ (silt_res_19$sn3*Phgs_19$sn3 *fsilt$sn3)     #m/day *ug/m3 = ug m2 d-1
res4_Phg_ug_m2_d<-(POM_res_19$sn4*Phgs_19$sn4 *fPOM$sn4)+ (silt_res_19$sn4*Phgs_19$sn4 *fsilt$sn4)     #m/day *ug/m3 = ug m2 d-1
res5_Phg_ug_m2_d<-(POM_res_19$sn5*Phgs_19$sn5 *fPOM$sn5)+ (silt_res_19$sn5*Phgs_19$sn5 *fsilt$sn5)     #m/day *ug/m3 = ug m2 d-1
res6_Phg_ug_m2_d<-(POM_res_19$sc6*Phgs_19$sc6 *fPOM$sc6)+ (silt_res_19$sc6*Phgs_19$sc6 *fsilt$sc6)     #m/day *ug/m3 = ug m2 d-1
res7_Phg_ug_m2_d<-(POM_res_19$sc7*Phgs_19$sc7 *fPOM$sc7)+ (silt_res_19$sc7*Phgs_19$sc7 *fsilt$sc7)     #m/day *ug/m3 = ug m2 d-1
res8_Phg_ug_m2_d<-(POM_res_19$ss8*Phgs_19$ss8 *fPOM$ss8)+ (silt_res_19$ss8*Phgs_19$ss8 *fsilt$ss8)     #m/day *ug/m3 = ug m2 d-1
res9_Phg_ug_m2_d<-(POM_res_19$ss9*Phgs_19$ss9 *fPOM$ss9)+ (silt_res_19$ss9*Phgs_19$ss9 *fsilt$ss9)     #m/day *ug/m3 = ug m2 d-1
res10_Phg_ug_m2_d<-(POM_res_19$ss10*Phgs_19$ss10 *fPOM$ss10)+ (silt_res_19$ss10*Phgs_19$ss10 *fsilt$ss10)     #m/day *ug/m3 = ug m2 d-1

res1_Phg_kg_y<-res1_Phg_ug_m2_d*a1/10^9*365
res2_Phg_kg_y<-res2_Phg_ug_m2_d*a2/10^9*365
res3_Phg_kg_y<-res3_Phg_ug_m2_d*a3/10^9*365
res4_Phg_kg_y<-res4_Phg_ug_m2_d*a4/10^9*365
res5_Phg_kg_y<-res5_Phg_ug_m2_d*a5/10^9*365
res6_Phg_kg_y<-res6_Phg_ug_m2_d*a6/10^9*365
res7_Phg_kg_y<-res7_Phg_ug_m2_d*a7/10^9*365
res8_Phg_kg_y<-res8_Phg_ug_m2_d*a8/10^9*365
res9_Phg_kg_y<-res9_Phg_ug_m2_d*a9/10^9*365
res10_Phg_kg_y<-res10_Phg_ug_m2_d*a10/10^9*365

res1b_Phg_ug_d<-res1_Phg_ug_m2_d*a1
res2b_Phg_ug_d<-res2_Phg_ug_m2_d*a2
res3b_Phg_ug_d<-res3_Phg_ug_m2_d*a3
res4b_Phg_ug_d<-res4_Phg_ug_m2_d*a4
res5b_Phg_ug_d<-res5_Phg_ug_m2_d*a5
res6b_Phg_ug_d<-res6_Phg_ug_m2_d*a6
res7b_Phg_ug_d<-res7_Phg_ug_m2_d*a7
res8b_Phg_ug_d<-res8_Phg_ug_m2_d*a8
res9b_Phg_ug_d<-res9_Phg_ug_m2_d*a9
res10b_Phg_ug_d<-res10_Phg_ug_m2_d*a10

# ::::::::::: METODO 2 :::::::::::::
res1_hg_ng_m2_d<-res1_g_m2_d*SEDhg_19$sn1   #/10^3   #g m-2 d * ng g-1   = ng m-2 d
res2_hg_ng_m2_d<-res2_g_m2_d*SEDhg_19$sn2   #/10^3
res3_hg_ng_m2_d<-res3_g_m2_d*SEDhg_19$sn3  ##/10^3   ## kg/y*ng/kg--> ng/y
res4_hg_ng_m2_d<-res4_g_m2_d*SEDhg_19$sn4  #/10^3
res5_hg_ng_m2_d<-res5_g_m2_d*SEDhg_19$sn5  #/10^3
res6_hg_ng_m2_d<-res6_g_m2_d*SEDhg_19$sc6  #/10^3
res7_hg_ng_m2_d<-res7_g_m2_d*SEDhg_19$sc7  #/10^3
res8_hg_ng_m2_d<-res8_g_m2_d*SEDhg_19$ss8  #/10^3
res9_hg_ng_m2_d<-res9_g_m2_d*SEDhg_19$ss9  #/10^3
res10_hg_ng_m2_d<-res10_g_m2_d*SEDhg_19$ss10#/10^3

res1c_hg_ng_d<-res1_hg_ng_m2_d*a1
res2c_hg_ng_d<-res2_hg_ng_m2_d*a2
res3c_hg_ng_d<-res3_hg_ng_m2_d*a3
res4c_hg_ng_d<-res4_hg_ng_m2_d*a4
res5c_hg_ng_d<-res5_hg_ng_m2_d*a5
res6c_hg_ng_d<-res6_hg_ng_m2_d*a6
res7c_hg_ng_d<-res7_hg_ng_m2_d*a7
res8c_hg_ng_d<-res8_hg_ng_m2_d*a8
res9c_hg_ng_d<-res9_hg_ng_m2_d*a9
res10c_hg_ng_d<-res10_hg_ng_m2_d*a10

res1_hg_kg_y<-res1c_hg_ng_d/10^12*365
res2_hg_kg_y<-res2c_hg_ng_d/10^12*365
res3_hg_kg_y<-res3c_hg_ng_d/10^12*365
res4_hg_kg_y<-res4c_hg_ng_d/10^12*365
res5_hg_kg_y<-res5c_hg_ng_d/10^12*365
res6_hg_kg_y<-res6c_hg_ng_d/10^12*365
res7_hg_kg_y<-res7c_hg_ng_d/10^12*365
res8_hg_kg_y<-res8c_hg_ng_d/10^12*365
res9_hg_kg_y<-res9c_hg_ng_d/10^12*365
res10_hg_kg_y<-res10c_hg_ng_d/10^12*365

mean(res1_Phg_kg_y)
mean(res1_hg_kg_y)

mean(res1_hg_kg_y);mean(res1_Phg_kg_y)
mean(res2_hg_kg_y);mean(res2_Phg_kg_y)
mean(res3_hg_kg_y);mean(res3_Phg_kg_y)
mean(res4_hg_kg_y);mean(res4_Phg_kg_y)
mean(res5_hg_kg_y);mean(res5_Phg_kg_y)
mean(res6_hg_kg_y);mean(res6_Phg_kg_y)
mean(res7_hg_kg_y);mean(res7_Phg_kg_y)
mean(res8_hg_kg_y);mean(res8_Phg_kg_y)
mean(res9_hg_kg_y);mean(res9_Phg_kg_y)

RRRR<-cbind(res1_Phg_kg_y,res2_Phg_kg_y,res3_Phg_kg_y,res4_Phg_kg_y,res5_Phg_kg_y,
      res6_Phg_kg_y,res7_Phg_kg_y,res8_Phg_kg_y,res9_Phg_kg_y,res10_Phg_kg_y)

DDDD<-cbind(depo1_Phg_kg_y,depo2_Phg_kg_y,depo3_Phg_kg_y,depo4_Phg_kg_y,depo5_Phg_kg_y,
  depo6_Phg_kg_y,depo7_Phg_kg_y,depo8_Phg_kg_y,depo9_Phg_kg_y,depo10_Phg_kg_y)

plot(DDDD-RRRR)


kgy_long<-cbind(DDDD,RRRR)
write.table(kgy_long,file='kgy_long.txt')

mean(depo1_hg_kg_y)
# depo1_Phg_kg_y,depo1b_Phg_ug_d,depo1c_hg_ug_d,res1_Phg_kg_y, res1b_Phg_ug_d, res1c_hg_ug_d
b1<-(depo1_Phg_ug_m2_d-res1_Phg_ug_m2_d)*a1    #
bb1<-(depo1_hg_ng_m2_d-res1_hg_ng_m2_d)*a1/10^3

b2<-(depo2_Phg_ug_m2_d-res2_Phg_ug_m2_d)*a2
bb2<-(depo2_hg_ng_m2_d-res2_hg_ng_m2_d)*a2/10^3

b3<-(depo3_Phg_ug_m2_d-res3_Phg_ug_m2_d)*a3
bb3<-(depo3_hg_ng_m2_d-res3_hg_ng_m2_d)*a3/10^3

b4<-(depo4_Phg_ug_m2_d-res4_Phg_ug_m2_d)*a4
bb4<-(depo4_hg_ng_m2_d-res4_hg_ng_m2_d)*a4/10^3

b5<-(depo5_Phg_ug_m2_d-res5_Phg_ug_m2_d)*a5
bb5<-(depo5_hg_ng_m2_d-res5_hg_ng_m2_d)*a5/10^3

b6<-(depo6_Phg_ug_m2_d-res6_Phg_ug_m2_d)*a6
bb6<-(depo6_hg_ng_m2_d-res6_hg_ng_m2_d)*a6/10^3

b7<-(depo7_Phg_ug_m2_d-res7_Phg_ug_m2_d)*a7
bb7<-(depo7_hg_ng_m2_d-res7_hg_ng_m2_d)*a7/10^3

b8<-(depo8_Phg_ug_m2_d-res8_Phg_ug_m2_d)*a8
bb8<-(depo8_hg_ng_m2_d-res8_hg_ng_m2_d)*a8/10^3

b9<-(depo9_Phg_ug_m2_d-res9_Phg_ug_m2_d)*a9
bb9<-(depo9_hg_ng_m2_d-res9_hg_ng_m2_d)*a9/10^3

b10<-(depo10_Phg_ug_m2_d-res10_Phg_ug_m2_d)*a10     # ng d-1
bb10<-(depo10_hg_ng_m2_d-res10_hg_ng_m2_d)*a10/10^3


b1b<- (depo1b_Phg_ug_d-res1b_Phg_ug_d)/10^6  # g d-1
#bb1c<-(depo1c_hg_ng_d-res1c_hg_ng_d)/10^9

b2b<- (depo2b_Phg_ug_d-res2b_Phg_ug_d)/10^6  # g d-1
#bb2c<-(depo2c_hg_ng_d-res2c_hg_ng_d)/10^9

b3b<- (depo3b_Phg_ug_d-res3b_Phg_ug_d)/10^6  # g d-1
#bb3c<-(depo3c_hg_ng_d-res3c_hg_ng_d)/10^9

b4b<- (depo4b_Phg_ug_d-res4b_Phg_ug_d)/10^6  # g d-1
#bb4c<-(depo4c_hg_ng_d-res4c_hg_ng_d)/10^9

b5b<- (depo5b_Phg_ug_d-res5b_Phg_ug_d)/10^6  #g d-1
##bb5c<-(depo5c_hg_ng_d-res5c_hg_ng_d)/10^9

b6b<- (depo6b_Phg_ug_d-res6b_Phg_ug_d)/10^6  # g d-1
#bb6c<-(depo6c_hg_ng_d-res6c_hg_ng_d)/10^9

b7b<- (depo7b_Phg_ug_d-res7b_Phg_ug_d)/10^6  # g d-1
#bb7c<-(depo7c_hg_ng_d-res7c_hg_ng_d)/10^9

b8b<- (depo8b_Phg_ug_d-res8b_Phg_ug_d)/10^6  # g d-1
#bb8c<-(depo8c_hg_ng_d-res8c_hg_ng_d)/10^9

b9b<- (depo9b_Phg_ug_d-res9b_Phg_ug_d)/10^6  # g d-1
#bb9c<-(depo9c_hg_ng_d-res9c_hg_ng_d)/10^9

b10b<- (depo10b_Phg_ug_d-res10b_Phg_ug_d)/10^6  # g d-1
#bb10c<-(depo10c_hg_ng_d-res10c_hg_ng_d)/10^9

plot(netto1b/10^9*365, type='l')

netto1b<-(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10) 
netto1<-(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10)*365/10^9
netto2<-(bb1+bb2+bb3+bb4+bb5+bb6+bb7+bb8+bb9+bb10)/10^9*365

netto3<-(b1b+b2b+b3b+b4b+b5b+
           b6b+b7b+b8b+b9b+b10b)*365/10^3
netto4<-(bb1c+bb2c+bb3c+bb4c+bb5c+bb6c+bb7c+bb8c+bb9c+bb10c)*365/10^3

risospensione_ug_m2_d<-data.frame(res1_hg_ug_m2_d,res2_hg_ug_m2_d,res3_hg_ug_m2_d,res4_hg_ug_m2_d,res5_hg_ug_m2_d,
                                  res6_hg_ug_m2_d,res7_hg_ug_m2_d,res8_hg_ug_m2_d,res9_hg_ug_m2_d,res10_hg_ug_m2_d)

depo_ug_m2_d<-data.frame(depo1_Phg_ug_m2_d,depo2_Phg_ug_m2_d,depo3_Phg_ug_m2_d,depo4_Phg_ug_m2_d,depo5_Phg_ug_m2_d,
                         depo6_Phg_ug_m2_d,depo7_Phg_ug_m2_d,depo8_Phg_ug_m2_d,depo9_Phg_ug_m2_d,depo10_Phg_ug_m2_d)

write.table(risospensione_ug_m2_d, file='risospensione_ug_m2_d.txt')   # g d-1
write.table(depo_ug_m2_d, file='depo_ug_m2_d.txt')   # g d-1


alll_bal_19<-data.frame(b1,b2,b3,b4,b5,b6,b7,b8,b9,b10)
alll_bal_19b<-data.frame(b1b,b2b,b3b,b4b,b5b,b6b,b7b,b8b,b9b,b10b)    # g d-1 
alll_bal_19c<-data.frame(bb1c,bb2c,bb3c,bb4c,bb5c,bb6c,bb7c,bb8c,bb9c,bb10c)
alll_bal_19d<-data.frame(bb1,bb2,bb3,bb4,bb5,bb6,bb7,bb8,bb9,bb10)

write.table(alll_bal_19, file='alll_bal_19.txt')   # g d-1
write.table(alll_bal_19c, file='alll_bal_19c.txt')   # g d-1
write.table(alll_bal_19b, file='alll_bal_19b.txt')   # g d-1
write.table(alll_bal_19d, file='alll_bal_19d.txt')   # g d-1

plot(netto3, type='l')
plot(netto4, type='l')

plot(depo1_Phg_kg_y-res1_Phg_kg_y,type='l',col='blue')
plot(depo1_hg_kg_y-res1_hg_kg_y,type='l',col='blue')

colMeans(alll_bal_19b)/10^3*365


plot(depo2_Phg_kg_y-res2_Phg_kg_y,type='l',col='blue')
plot(depo3_Phg_kg_y-res3_Phg_kg_y,type='l',col='blue')
plot(depo4_Phg_kg_y-res4_Phg_kg_y,type='l',col='blue')

mean(depo1_hg_kg_y-res1_hg_kg_y)
mean(depo2_Phg_kg_y-res2_Phg_kg_y)
mean(depo2_Phg_kg_y-res2_Phg_kg_y)
mean(depo3_Phg_kg_y-res3_Phg_kg_y)
mean(depo4_Phg_kg_y-res4_Phg_kg_y)
mean(depo5_Phg_kg_y-res5_Phg_kg_y)
mean(depo6_Phg_kg_y-res6_Phg_kg_y)
mean(depo7_Phg_kg_y-res7_Phg_kg_y)
mean(depo8_Phg_kg_y-res8_Phg_kg_y)
mean(depo9_Phg_kg_y-res9_Phg_kg_y)
mean(depo10_Phg_kg_y-res10_Phg_kg_y)

Hg_depo<-cbind(depo1_Phg_kg_y,depo2_Phg_kg_y,depo3_Phg_kg_y,depo4_Phg_kg_y,
               depo5_Phg_kg_y,depo6_Phg_kg_y,depo7_Phg_kg_y,depo8_Phg_kg_y,
               depo9_Phg_kg_y,depo10_Phg_kg_y)

Hg_depoB<-cbind(depo1b_Phg_ug_d,depo2b_Phg_ug_d,depo3b_Phg_ug_d,depo4b_Phg_ug_d,depo5b_Phg_ug_d,
                depo6b_Phg_ug_d,depo7b_Phg_ug_d,depo8b_Phg_ug_d,depo9b_Phg_ug_d,depo10b_Phg_ug_d)

Hg_depoC<-cbind(depo1c_hg_ng_d,depo2c_hg_ng_d,depo3c_hg_ng_d,depo4c_hg_ng_d,depo5c_hg_ng_d,
                depo6c_hg_ng_d,depo7c_hg_ng_d,depo8c_hg_ng_d,depo9c_hg_ng_d,depo10c_hg_ng_d)

Hg_res<-cbind(res1_Phg_kg_y,res2_Phg_kg_y,res3_Phg_kg_y,res4_Phg_kg_y,res5_Phg_kg_y,
  res6_Phg_kg_y,res7_Phg_kg_y,res8_Phg_kg_y,res9_Phg_kg_y,res10_Phg_kg_y)

Hg_resB<-cbind(res1b_Phg_ug_d,res2b_Phg_ug_d,res3b_Phg_ug_d,res4b_Phg_ug_d,res5b_Phg_ug_d,
                res6b_Phg_ug_d,res7b_Phg_ug_d,res8b_Phg_ug_d,res9b_Phg_ug_d,res10b_Phg_ug_d)

Hg_resC<-cbind(res1c_hg_ng_d,res2c_hg_ng_d,res3c_hg_ng_d,res4c_hg_ng_d,res5c_hg_ng_d,
                res6c_hg_ng_d,res7c_hg_ng_d,res8c_hg_ng_d,res9c_hg_ng_d,res10c_hg_ng_d)

Hg_res_tot<-rowSums(Hg_res)  #â¢rowMeans
Hg_depo_tot<-rowSums(Hg_depo)

mean(Hg_res_tot)-mean(Hg_depo_tot)

Hg_res_totB<-rowSums(Hg_resB)*365/10^9
Hg_depo_totB<-rowSums(Hg_depoB)*365/10^9

Hg_res_totC<-rowSums(Hg_resC)*365/10^9
Hg_depo_totC<-rowSums(Hg_depoC)*365/10^9

sed_bal<-data.frame( Hg_res_tot,Hg_depo_tot,Hg_res_totB,Hg_depo_totB,Hg_res_totC,Hg_depo_totC,
                     netto1,netto2,netto3,netto4)

write.table(sed_bal,'sed_bal_19bC.txt')

mean(netto1)
mean(netto2)
mean(netto3)

plot(Hg_depo_tot,col='blue' ,type='l', ylim=c(0,100))
par(new=T)
plot(Hg_res_tot,col='red', type='l',ylim=c(0,100))

NEt_Net<-Hg_depo_tot-Hg_res_tot

plot(NEt_Net,col='hotpink',type='b',  ylim=c(0,1000))

plot(Hg_depo_tot-Hg_res_tot, type='l')
plot(Hg_depo_totB-Hg_res_totB, type='l')
plot(Hg_depo_totC-Hg_res_totC, type='l')







NEt_Net_media<-tapply(NEt_Net[2:692041], rep(1:(length(NEt_Net[2:692041])/8760),each = 8760),mean)
NET_deposited_media<-tapply(NET_deposited[2:692041], rep(1:(length(NET_deposited[2:692041])/8760),each = 8760),mean)

1.65*3
