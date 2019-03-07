  #### Calcolo Dispersione - Boundaries Exchange
  
  # formula Vb*Sb = ((Ei*Ai)/Lci)*(Cbk-Cbi)
  
 # setwd('C:/Users/Acer/Dropbox/NewVenice20/w')
 # setwd('C:\\Users\\gi\\Desktop\\2156\\b')
 # setwd('C:\\Users\\Acer\\Desktop\\in_high_50_88b')
  setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\long')     #sim_cl
  
  hg<-read.csv('Total_Hg.csv', skip=1)
  names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  
  mehg<-read.csv('Methyl_Hg.csv', skip=1)
  names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  # water Hg conc
  water3<-hg$wn3; solids3<-TOTs$wn3  #Lido       
  water7<-hg$wc7; solids7<-TOTs$wc7  #Malamocco     1.5768e+08
  water10<-hg$ws10; solids10<-TOTs$ws10  #chioggia  9.77616e+08
  
  plot(water7)
  
  water3_mhg<-mehg$wn3;    #Lido       
  water7_mhg<-mehg$wc7;    #Malamocco     1.5768e+08
  water10_mhg<-mehg$ws10;    #chioggia  9.77616e+08
  #--------------------------- DISPERSION AT BOUNDARIES --------------------------- 
  ## Boundaries Volumes 
  Ai3=8710; Ai7=4290; Ai10=5150
  d=1
  Vb3<-Ai3*d; Vb7<-Ai7*d; Vb10<-Ai10*d
  
  Lci=2000    # Length exchange (m)
  E= 40*86400 ## Exchange coefficient (Ei), m s-1 to m d-1
       
  bound_hg=1.75
  bound_mhg=2.76583E-2
  
  # (Cbk-Cbi)   #formula Vb*Sb = ((Ei*Ai)/Lci)*
  grad3 = (bound_hg-water3); grad7 = (bound_hg-water7); grad10 = (bound_hg-water10)  # ng L
  grad3_mhg = (bound_mhg-water3_mhg); grad7_mhg = (bound_mhg-water7_mhg); grad10_mhg = (bound_mhg-water10_mhg)  # ng L
  
  grad3_solidi = (11.7-solids3); grad7_solidi = (11.7-solids7); grad10_solidi = (11.7-solids10)  # ng L
  
  exchB3=(E*Ai3)/Lci; exchB7=(E*Ai7)/Lci; exchB10=(E*Ai10)/Lci       # m2 s-1*m2 *m-1 = m3 d-1
  
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
  
  par(mfrow=c(2,2))
  plot(Sb3_kgy);plot(Sb7_kgy);plot(Sb10_kgy)
  
  Disper_tot_kgy<-(Sb3_kgy)+(Sb7_kgy)+(Sb10_kgy)
  Disper_tot_kgy_mhg<-(Sb3_kgy_mhg)+(Sb7_kgy_mhg)+(Sb10_kgy_mhg)
  
  plot(Disper_tot_kgy)
  
  
  #---------------- ADVECTIVE FLOWS  (Qi) m3 s-1 to m3 d-1  --------------------------------------
  bound3  <-	(-7) *86400; bound10 <-	(-25)*86400; bound7  <-	(-15)*86400
  
  #lido and Malamocco:  5.6 10^10 m3 year?1
  #Chioggia :  2.8 10^10 m3 year?1
  
  #ngL*mcy
  outflow_ugd<-(water3*bound3)+(water10*bound10)+(water7*bound7)  # ug m-3 * m3 d-1 = 
  hg_outflow_kg_y<-outflow_ugd*365/10^9
  
  
  outflow_ugd_mhg<-(water3_mhg*bound3)+(water10_mhg*bound10)+(water7_mhg*bound7)  # ug m-3 * m3 d-1 = 
  hg_outflow_kg_y_mhg<-outflow_ugd_mhg*365/10^9
  
  ### solids out
  outflow_solids_gy<-(bound3*solids3)+(bound10*solids10)+(bound7*solids7)
  ## _______________________________
  
  plot(hg_outflow_kg_y)
  plot(Disper_tot_kgy)
  
  write.table(Disper_tot_kgy, file='Disper_tot_kgy.txt')
  write.table(hg_outflow_kg_y, file='Outflow_tot_kgy.txt')
  
  write.table(Disper_tot_kgy_mhg, file='Disper_tot_MHG_kgy.txt')
  write.table(hg_outflow_kg_y_mhg, file='Outflow_tot_MHG_kgy.txt')
  
    outflow_solids_tgy<-outflow_solids_gy/10^6
  plot(outflow_solids_tgy)
      