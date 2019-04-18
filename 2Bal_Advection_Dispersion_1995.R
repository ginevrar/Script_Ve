  #### Calcolo Dispersione - Boundaries Exchange
  # formula Vb*Sb = ((Ei*Ai)/Lci)*(Cbk-Cbi)
  
 # setwd('C:/Users/Acer/Dropbox/NewVenice20/w')
 # setwd('C:\\Users\\gi\\Desktop\\2156\\b')
 # setwd('C:\\Users\\Acer\\Desktop\\in_high_50_88b')
#  setwd('C:\\Users\\Acer\\Desktop\\last\\CL_95\\long_long')     #sim_cl
  setwd('G:\\Il mio Drive\\CL_10\\out')
  
  hg<-read.csv('Total_Hg.csv', skip=1)
  names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  
  hg_10<-hg[91244:100359,1:11]
  hg_70<-hg[644318:653661,1:11]
  hg_95<-hg[878071:887414,1:11]
  hg_19<-hg[1102481:1111824,1:11]

  mehg<-read.csv('Methyl_Hg.csv', skip=1)
  names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  mehg_10<-mehg[91244:100359,1:11]
  mehg_70<-mehg[644318:653661,1:11]
  mehg_95<-mehg[878071:887414,1:11]
  mehg_19<-mehg[1102481:1111824,1:11]
  
  TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')  
  TOTs_10<-TOTs[91244:100359,1:11]
  TOTs_70<-TOTs[644318:653661,1:11]
  TOTs_95<-TOTs[878071:887414,1:11]
  TOTs_19<-TOTs[1102481:1111824,1:11]
  
  time.steps <- hg[,1]; time.steps3 <- time.steps*24*3600
  time.st_media<-tapply(time.steps3[2:147461], rep(1:(length(time.steps3[2:147461])/365),each = 365),mean)
  TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
  TEMPO2 <- as.POSIXct(time.st_media, tz= "GMT", origin = "1900-01-01")
  TEMPO[1:10]
  rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

  rdate10<-rdate[91244:100359]     #2019
  rdate70<-rdate[644318:653661]     #2019
  rdate95<-rdate[878071:887414]       #1995
  rdate19<-rdate[1102481:1111824]     #2019
  
  # water Hg conc
  water3<-hg_19$wn3; solids3<-TOTs_19$wn3  #Lido       
  water7<-hg_19$wc7; solids7<-TOTs_19$wc7  #Malamocco     1.5768e+08
  water10<-hg_19$ws10; solids10<-TOTs_19$ws10  #chioggia  9.77616e+08

  water3_mhg<-mehg_19$wn3;    #Lido       
  water7_mhg<-mehg_19$wc7;    #Malamocco     1.5768e+08
  water10_mhg<-mehg_19$ws10;    #chioggia  9.77616e+08
  #--------------------------- DISPERSION AT BOUNDARIES --------------------------- 
  ## Boundaries Volumes 
  Ai3=8710; Ai7=4290; Ai10=5150
  d=1
  Vb3<-Ai3*d; Vb7<-Ai7*d; Vb10<-Ai10*d
  
  Lci=2000    # Length exchange (m)
  Lci_b3=1500    # Length exchange (m)
  E= 40*86400 ## Exchange coefficient (Ei), m s-1 to m d-1
       
  bound_hg=1.75
  bound_mhg=2.76583E-2
  
  # (Cbk-Cbi)   #formula Vb*Sb = ((Ei*Ai)/Lci)*
  grad3 = (bound_hg-water3); grad7 = (bound_hg-water7); grad10 = (bound_hg-water10)  # ng L
  grad3_mhg = (bound_mhg-water3_mhg); grad7_mhg = (bound_mhg-water7_mhg); grad10_mhg = (bound_mhg-water10_mhg)  # ng L
  
  grad3_solidi = (11.7-solids3); grad7_solidi = (11.7-solids7); grad10_solidi = (11.7-solids10)  # ng L
  
  exchB3=(E*Ai3)/Lci_b3; exchB7=(E*Ai7)/Lci; exchB10=(E*Ai10)/Lci       # m2 s-1*m2 *m-1 = m3 d-1
  
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
  
  out3_kgy_mhg<-mean((water3_mhg*bound3)*365/10^9)
  out7_kgy_mhg<-mean((water7_mhg*bound7)*365/10^9)
  out10_kgy_mhg<-mean((water10_mhg*bound10)*365/10^9)
  
  mean(out3_kgy+Sb3_kgy)+ mean(out7_kgy+Sb7_kgy)+ mean(out10_kgy+Sb10_kgy)
  mean(out3_kgy_mhg+Sb3_kgy_mhg)
  mean(out7_kgy_mhg+Sb7_kgy_mhg)
  mean(out10_kgy_mhg+Sb10_kgy_mhg)
  
  mean(out3_kgy+Sb3_kgy)
  mean(out7_kgy+Sb7_kgy)
  mean(out10_kgy+Sb10_kgy)
  
  mean(out3_kgy+Sb3_kgy)
  mean(out7_kgy+Sb7_kgy)
  mean(out10_kgy+Sb10_kgy)
   
  mean(Sb7_kgy)
  mean(Sb3_kgy)
  mean(Sb10_kgy)
 # plot(Disper_tot_kgy)
  dfff<-data.frame(rdate19,hg_outflow_kg_y, Disper_tot_kgy, hg_outflow_kg_y_mhg,
                   Disper_tot_kgy_mhg,hg_outflow_kg_y_SED, Disper_tot_kgy_SED)
  write.table(dfff, file='Disper_and_OUTfl_tot_kgy_19.txt')
  
  #write.table(hg_outflow_kg_y, file='Outflow_tot_kgy.txt')
 # write.table(Disper_tot_kgy_mhg, file='Disper_tot_MHG_kgy.txt')
  #write.table(hg_outflow_kg_y_mhg, file='Outflow_tot_MHG_kgy.txt')
  
    outflow_solids_tgy<-hg_outflow_kg_y_SED/10^3


