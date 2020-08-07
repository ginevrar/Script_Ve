
wCN2002<-filter(Water_centro_n_df, Anno==2002)
wCN2003<-filter(Water_centro_n_df, Anno==2003)
wCN2004<-filter(Water_centro_n_df, Anno==2004)
wCN2005<-filter(Water_centro_n_df, Anno==2005)
wCN2006<-filter(Water_centro_n_df, Anno==2006)
wCN2008<-filter(Water_centro_n_df, Anno==2008)
wCN2008<-filter(Water_centro_n_df, Anno==2008)

Cnord1_2002		<-(filter(wCN2002, Mese == 1))
Cnord1_median_2002 <-median(Cnord1_2002$Hg1)
Cnord1_mean_2002   <-mean(Cnord1_2002$Hg1)
Cnord1_min_2002    <-min(Cnord1_2002$Hg1)
Cnord1_max_2002    <-min(Cnord1_2002$Hg1)

Cnord2_2002<-(filter(wCN2002, Mese == 2))
Cnord2_median_2002<-median(Cnord2_2002$Hg1)
Cnord2_mean_2002<-mean(Cnord2_2002$Hg1)
Cnord2_min_2002<-min(Cnord2_2002$Hg1)
Cnord2_max_2002<-min(Cnord2_2002$Hg1)

Cnord3<-(filter(wCN2002, Mese == 3))
Cnord3_median_2002<-median(Cnord3_2002$Hg1)
Cnord3_mean_2002<-mean(Cnord3_2002$Hg1)
Cnord3_min_2002<-min(Cnord3_2002$Hg1)
Cnord3_max_2002<-min(Cnord3_2002$Hg1)

Cnord4_2002<-(filter(wCN2002, Mese == 4))
Cnord4_median_2002<-median(Cnord4_2002$Hg1)
Cnord4_mean_2002<-mean(Cnord4_2002$Hg1)
Cnord4_min_2002<-min(Cnord4_2002$Hg1)
Cnord4_max_2002<-min(Cnord4_2002$Hg1)

Cnord5_2002<-(filter(wCN2002, Mese == 5))
Cnord5_median_2002<-median(Cnord5_2002$Hg1)
Cnord5_mean_2002<-mean(Cnord5_2002$Hg1)
Cnord5_min_2002<-min(Cnord5_2002$Hg1)
Cnord5_max_2002<-min(Cnord5_2002$Hg1)

Cnord6_2002<-(filter(wCN2002, Mese == 6))
Cnord6_median_2002<-median(Cnord6_2002$Hg1)
Cnord6_mean_2002<-mean(Cnord6_2002$Hg1)
Cnord6_min_2002<-min(Cnord6_2002$Hg1)
Cnord6_max_2002<-min(Cnord6_2002$Hg1)

Cnord7_2002<-(filter(wCN2002, Mese ==7))
Cnord7_median_2002<-median(Cnord7_2002$Hg1)
Cnord7_mean_2002<-mean(Cnord7_2002$Hg1)
Cnord7_min_2002<-min(Cnord7_2002$Hg1)
Cnord7_max_2002<-min(Cnord7_2002$Hg1)

Cnord8_2002<-(filter(wCN2002, Mese == 8))
Cnord8_median_2002<-median(Cnord8_2002$Hg1)
Cnord8_mean_2002<-mean(Cnord8_2002$Hg1)
Cnord8_min_2002<-min(Cnord8_2002$Hg1)
Cnord8_max_2002<-min(Cnord8_2002$Hg1)

Cnord9_2002<-(filter(wCN2002, Mese == 9))
Cnord9_median_2002<-median(Cnord9_2002$Hg1)
Cnord9_mean_2002<-mean(Cnord9_2002$Hg1)
Cnord9_min_2002<-min(Cnord9_2002$Hg1)
Cnord9_max_2002<-min(Cnord9_2002$Hg1)

Cnord10_2002<-(filter(wCN2002, Mese == 10))
Cnord10_median_2002<-median(Cnord10_2002$Hg1)
Cnord10_mean_2002<-mean(Cnord10_2002$Hg1)
Cnord10_min_2002<-min(Cnord10_2002$Hg1)
Cnord10_max_2002<-min(Cnord10_2002$Hg1)

Cnord11_2002<-(filter(wCN2002, Mese == 11))
Cnord11_median_2002<-median(Cnord11_2002$Hg1)
Cnord11_mean_2002<-mean(Cnord11_2002$Hg1)
Cnord11_min_2002<-min(Cnord11_2002$Hg1)
Cnord11_max_2002<-min(Cnord11_2002$Hg1)

Cnord12_2002<-(filter(wCN2002, Mese == 12))
Cnord12_median_2002<-median(Cnord12_2002$Hg1)
Cnord12_mean_2002<-mean(Cnord12_2002$Hg1)
Cnord12_min_2002<-min(Cnord12_2002$Hg1)
Cnord12_max_2002<-min(Cnord12_2002$Hg1)


Cnords_median_2002<-c(Cnord1_median_2002, Cnord2_median_2002, Cnord3_median_2002,Cnord4_median_2002,
				  Cnord5_median_2002,Cnord6_median_2002,  Cnord7_median_2002,Cnord8_median_2002,Cnord9_median_2002,
				  Cnord10_median_2002,Cnord11_median_2002,Cnord12_median_2002)		  
				  
Cnords_mean_2002<-c(Cnord1_mean_2002, Cnord2_mean_2002,Cnord3_mean_2002,Cnord4_mean_2002,
				  Cnord5_mean_2002,Cnord6_mean_2002, Cnord7_mean_2002,Cnord8_mean_2002,Cnord9_mean_2002,
				  Cnord10_mean_2002,Cnord11_mean_2002,Cnord12_mean_2002)
				  				  
Cnords_min_2002<-c(Cnord1_min_2002, Cnord2_min_2002,Cnord3_min_2002,Cnord4_min_2002,
				  Cnord5_min_2002,Cnord6_min_2002, Cnord7_min_2002,Cnord8_min_2002,Cnord9_min_2002,
				  Cnord10_min_2002,Cnord11_min_2002,Cnord12_min_2002)		  
				  				  
Cnords_max_2002<-c(Cnord1_max_2002, Cnord2_max_2002,Cnord3_max_2002,Cnord4_max_2002,
				  Cnord5_max_2002,Cnord6_max_2002, Cnord7_max_2002,Cnord8_max_2002,Cnord9_max_2002,
				  Cnord10_max_2002,Cnord11_max_2002,Cnord12_max_2002)
				  
Cnord1_2003		<-(filter(wCN2003, Mese == 1))
Cnord1_median_2003 <-median(Cnord1_2003$Hg1)
Cnord1_mean_2003   <-mean(Cnord1_2003$Hg1)
Cnord1_min_2003    <-min(Cnord1_2003$Hg1)
Cnord1_max_2003    <-min(Cnord1_2003$Hg1)

Cnord2_2003<-(filter(wCN2003, Mese == 2))
Cnord2_median_2003<-median(Cnord2_2003$Hg1)
Cnord2_mean_2003<-mean(Cnord2_2003$Hg1)
Cnord2_min_2003<-min(Cnord2_2003$Hg1)
Cnord2_max_2003<-min(Cnord2_2003$Hg1)

Cnord3<-(filter(wCN2003, Mese == 3))
Cnord3_median_2003<-median(Cnord3_2003$Hg1)
Cnord3_mean_2003<-mean(Cnord3_2003$Hg1)
Cnord3_min_2003<-min(Cnord3_2003$Hg1)
Cnord3_max_2003<-min(Cnord3_2003$Hg1)

Cnord4_2003<-(filter(wCN2003, Mese == 4))
Cnord4_median_2003<-median(Cnord4_2003$Hg1)
Cnord4_mean_2003<-mean(Cnord4_2003$Hg1)
Cnord4_min_2003<-min(Cnord4_2003$Hg1)
Cnord4_max_2003<-min(Cnord4_2003$Hg1)

Cnord5_2003<-(filter(wCN2003, Mese == 5))
Cnord5_median_2003<-median(Cnord5_2003$Hg1)
Cnord5_mean_2003<-mean(Cnord5_2003$Hg1)
Cnord5_min_2003<-min(Cnord5_2003$Hg1)
Cnord5_max_2003<-min(Cnord5_2003$Hg1)

Cnord6_2003<-(filter(wCN2003, Mese == 6))
Cnord6_median_2003<-median(Cnord6_2003$Hg1)
Cnord6_mean_2003<-mean(Cnord6_2003$Hg1)
Cnord6_min_2003<-min(Cnord6_2003$Hg1)
Cnord6_max_2003<-min(Cnord6_2003$Hg1)

Cnord7_2003<-(filter(wCN2003, Mese ==7))
Cnord7_median_2003<-median(Cnord7_2003$Hg1)
Cnord7_mean_2003<-mean(Cnord7_2003$Hg1)
Cnord7_min_2003<-min(Cnord7_2003$Hg1)
Cnord7_max_2003<-min(Cnord7_2003$Hg1)

Cnord8_2003<-(filter(wCN2003, Mese == 8))
Cnord8_median_2003<-median(Cnord8_2003$Hg1)
Cnord8_mean_2003<-mean(Cnord8_2003$Hg1)
Cnord8_min_2003<-min(Cnord8_2003$Hg1)
Cnord8_max_2003<-min(Cnord8_2003$Hg1)

Cnord9_2003<-(filter(wCN2003, Mese == 9))
Cnord9_median_2003<-median(Cnord9_2003$Hg1)
Cnord9_mean_2003<-mean(Cnord9_2003$Hg1)
Cnord9_min_2003<-min(Cnord9_2003$Hg1)
Cnord9_max_2003<-min(Cnord9_2003$Hg1)

Cnord10_2003<-(filter(wCN2003, Mese == 10))
Cnord10_median_2003<-median(Cnord10_2003$Hg1)
Cnord10_mean_2003<-mean(Cnord10_2003$Hg1)
Cnord10_min_2003<-min(Cnord10_2003$Hg1)
Cnord10_max_2003<-min(Cnord10_2003$Hg1)

Cnord11_2003<-(filter(wCN2003, Mese == 11))
Cnord11_median_2003<-median(Cnord11_2003$Hg1)
Cnord11_mean_2003<-mean(Cnord11_2003$Hg1)
Cnord11_min_2003<-min(Cnord11_2003$Hg1)
Cnord11_max_2003<-min(Cnord11_2003$Hg1)

Cnord12_2003<-(filter(wCN2003, Mese == 12))
Cnord12_median_2003<-median(Cnord12_2003$Hg1)
Cnord12_mean_2003<-mean(Cnord12_2003$Hg1)
Cnord12_min_2003<-min(Cnord12_2003$Hg1)
Cnord12_max_2003<-min(Cnord12_2003$Hg1)


Cnords_median_2003<-c(Cnord1_median_2003, Cnord2_median_2003, Cnord3_median_2003,Cnord4_median_2003,
				  Cnord5_median_2003,Cnord6_median_2003,  Cnord7_median_2003,Cnord8_median_2003,Cnord9_median_2003,
				  Cnord10_median_2003,Cnord11_median_2003,Cnord12_median_2003)		  
				  
Cnords_mean_2003<-c(Cnord1_mean_2003, Cnord2_mean_2003,Cnord3_mean_2003,Cnord4_mean_2003,
				  Cnord5_mean_2003,Cnord6_mean_2003, Cnord7_mean_2003,Cnord8_mean_2003,Cnord9_mean_2003,
				  Cnord10_mean_2003,Cnord11_mean_2003,Cnord12_mean_2003)
				  				  
Cnords_min_2003<-c(Cnord1_min_2003, Cnord2_min_2003,Cnord3_min_2003,Cnord4_min_2003,
				  Cnord5_min_2003,Cnord6_min_2003, Cnord7_min_2003,Cnord8_min_2003,Cnord9_min_2003,
				  Cnord10_min_2003,Cnord11_min_2003,Cnord12_min_2003)		  
				  				  
Cnords_max_2003<-c(Cnord1_max_2003, Cnord2_max_2003,Cnord3_max_2003,Cnord4_max_2003,
				  Cnord5_max_2003,Cnord6_max_2003, Cnord7_max_2003,Cnord8_max_2003,Cnord9_max_2003,
				  Cnord10_max_2003,Cnord11_max_2003,Cnord12_max_2003)
	
	
Cnord1_2004		<-(filter(wCN2004, Mese == 1))
Cnord1_median_2004 <-median(Cnord1_2004$Hg1)
Cnord1_mean_2004   <-mean(Cnord1_2004$Hg1)
Cnord1_min_2004    <-min(Cnord1_2004$Hg1)
Cnord1_max_2004    <-min(Cnord1_2004$Hg1)

Cnord2_2004<-(filter(wCN2004, Mese == 2))
Cnord2_median_2004<-median(Cnord2_2004$Hg1)
Cnord2_mean_2004<-mean(Cnord2_2004$Hg1)
Cnord2_min_2004<-min(Cnord2_2004$Hg1)
Cnord2_max_2004<-min(Cnord2_2004$Hg1)

Cnord3<-(filter(wCN2004, Mese == 3))
Cnord3_median_2004<-median(Cnord3_2004$Hg1)
Cnord3_mean_2004<-mean(Cnord3_2004$Hg1)
Cnord3_min_2004<-min(Cnord3_2004$Hg1)
Cnord3_max_2004<-min(Cnord3_2004$Hg1)

Cnord4_2004<-(filter(wCN2004, Mese == 4))
Cnord4_median_2004<-median(Cnord4_2004$Hg1)
Cnord4_mean_2004<-mean(Cnord4_2004$Hg1)
Cnord4_min_2004<-min(Cnord4_2004$Hg1)
Cnord4_max_2004<-min(Cnord4_2004$Hg1)

Cnord5_2004<-(filter(wCN2004, Mese == 5))
Cnord5_median_2004<-median(Cnord5_2004$Hg1)
Cnord5_mean_2004<-mean(Cnord5_2004$Hg1)
Cnord5_min_2004<-min(Cnord5_2004$Hg1)
Cnord5_max_2004<-min(Cnord5_2004$Hg1)

Cnord6_2004<-(filter(wCN2004, Mese == 6))
Cnord6_median_2004<-median(Cnord6_2004$Hg1)
Cnord6_mean_2004<-mean(Cnord6_2004$Hg1)
Cnord6_min_2004<-min(Cnord6_2004$Hg1)
Cnord6_max_2004<-min(Cnord6_2004$Hg1)

Cnord7_2004<-(filter(wCN2004, Mese ==7))
Cnord7_median_2004<-median(Cnord7_2004$Hg1)
Cnord7_mean_2004<-mean(Cnord7_2004$Hg1)
Cnord7_min_2004<-min(Cnord7_2004$Hg1)
Cnord7_max_2004<-min(Cnord7_2004$Hg1)

Cnord8_2004<-(filter(wCN2004, Mese == 8))
Cnord8_median_2004<-median(Cnord8_2004$Hg1)
Cnord8_mean_2004<-mean(Cnord8_2004$Hg1)
Cnord8_min_2004<-min(Cnord8_2004$Hg1)
Cnord8_max_2004<-min(Cnord8_2004$Hg1)

Cnord9_2004<-(filter(wCN2004, Mese == 9))
Cnord9_median_2004<-median(Cnord9_2004$Hg1)
Cnord9_mean_2004<-mean(Cnord9_2004$Hg1)
Cnord9_min_2004<-min(Cnord9_2004$Hg1)
Cnord9_max_2004<-min(Cnord9_2004$Hg1)

Cnord10_2004<-(filter(wCN2004, Mese == 10))
Cnord10_median_2004<-median(Cnord10_2004$Hg1)
Cnord10_mean_2004<-mean(Cnord10_2004$Hg1)
Cnord10_min_2004<-min(Cnord10_2004$Hg1)
Cnord10_max_2004<-min(Cnord10_2004$Hg1)

Cnord11_2004<-(filter(wCN2004, Mese == 11))
Cnord11_median_2004<-median(Cnord11_2004$Hg1)
Cnord11_mean_2004<-mean(Cnord11_2004$Hg1)
Cnord11_min_2004<-min(Cnord11_2004$Hg1)
Cnord11_max_2004<-min(Cnord11_2004$Hg1)

Cnord12_2004<-(filter(wCN2004, Mese == 12))
Cnord12_median_2004<-median(Cnord12_2004$Hg1)
Cnord12_mean_2004<-mean(Cnord12_2004$Hg1)
Cnord12_min_2004<-min(Cnord12_2004$Hg1)
Cnord12_max_2004<-min(Cnord12_2004$Hg1)


Cnords_median_2004<-c(Cnord1_median_2004, Cnord2_median_2004, Cnord3_median_2004,Cnord4_median_2004,
				  Cnord5_median_2004,Cnord6_median_2004,  Cnord7_median_2004,Cnord8_median_2004,Cnord9_median_2004,
				  Cnord10_median_2004,Cnord11_median_2004,Cnord12_median_2004)		  
				  
Cnords_mean_2004<-c(Cnord1_mean_2004, Cnord2_mean_2004,Cnord3_mean_2004,Cnord4_mean_2004,
				  Cnord5_mean_2004,Cnord6_mean_2004, Cnord7_mean_2004,Cnord8_mean_2004,Cnord9_mean_2004,
				  Cnord10_mean_2004,Cnord11_mean_2004,Cnord12_mean_2004)
				  				  
Cnords_min_2004<-c(Cnord1_min_2004, Cnord2_min_2004,Cnord3_min_2004,Cnord4_min_2004,
				  Cnord5_min_2004,Cnord6_min_2004, Cnord7_min_2004,Cnord8_min_2004,Cnord9_min_2004,
				  Cnord10_min_2004,Cnord11_min_2004,Cnord12_min_2004)		  
				  				  
Cnords_max_2004<-c(Cnord1_max_2004, Cnord2_max_2004,Cnord3_max_2004,Cnord4_max_2004,
				  Cnord5_max_2004,Cnord6_max_2004, Cnord7_max_2004,Cnord8_max_2004,Cnord9_max_2004,
				  Cnord10_max_2004,Cnord11_max_2004,Cnord12_max_2004)
				  
Cnord1_2005		<-(filter(wCN2005, Mese == 1))
Cnord1_median_2005 <-median(Cnord1_2005$Hg1)
Cnord1_mean_2005   <-mean(Cnord1_2005$Hg1)
Cnord1_min_2005    <-min(Cnord1_2005$Hg1)
Cnord1_max_2005    <-min(Cnord1_2005$Hg1)

Cnord2_2005<-(filter(wCN2005, Mese == 2))
Cnord2_median_2005<-median(Cnord2_2005$Hg1)
Cnord2_mean_2005<-mean(Cnord2_2005$Hg1)
Cnord2_min_2005<-min(Cnord2_2005$Hg1)
Cnord2_max_2005<-min(Cnord2_2005$Hg1)

Cnord3<-(filter(wCN2005, Mese == 3))
Cnord3_median_2005<-median(Cnord3_2005$Hg1)
Cnord3_mean_2005<-mean(Cnord3_2005$Hg1)
Cnord3_min_2005<-min(Cnord3_2005$Hg1)
Cnord3_max_2005<-min(Cnord3_2005$Hg1)

Cnord4_2005<-(filter(wCN2005, Mese == 4))
Cnord4_median_2005<-median(Cnord4_2005$Hg1)
Cnord4_mean_2005<-mean(Cnord4_2005$Hg1)
Cnord4_min_2005<-min(Cnord4_2005$Hg1)
Cnord4_max_2005<-min(Cnord4_2005$Hg1)

Cnord5_2005<-(filter(wCN2005, Mese == 5))
Cnord5_median_2005<-median(Cnord5_2005$Hg1)
Cnord5_mean_2005<-mean(Cnord5_2005$Hg1)
Cnord5_min_2005<-min(Cnord5_2005$Hg1)
Cnord5_max_2005<-min(Cnord5_2005$Hg1)

Cnord6_2005<-(filter(wCN2005, Mese == 6))
Cnord6_median_2005<-median(Cnord6_2005$Hg1)
Cnord6_mean_2005<-mean(Cnord6_2005$Hg1)
Cnord6_min_2005<-min(Cnord6_2005$Hg1)
Cnord6_max_2005<-min(Cnord6_2005$Hg1)

Cnord7_2005<-(filter(wCN2005, Mese ==7))
Cnord7_median_2005<-median(Cnord7_2005$Hg1)
Cnord7_mean_2005<-mean(Cnord7_2005$Hg1)
Cnord7_min_2005<-min(Cnord7_2005$Hg1)
Cnord7_max_2005<-min(Cnord7_2005$Hg1)

Cnord8_2005<-(filter(wCN2005, Mese == 8))
Cnord8_median_2005<-median(Cnord8_2005$Hg1)
Cnord8_mean_2005<-mean(Cnord8_2005$Hg1)
Cnord8_min_2005<-min(Cnord8_2005$Hg1)
Cnord8_max_2005<-min(Cnord8_2005$Hg1)

Cnord9_2005<-(filter(wCN2005, Mese == 9))
Cnord9_median_2005<-median(Cnord9_2005$Hg1)
Cnord9_mean_2005<-mean(Cnord9_2005$Hg1)
Cnord9_min_2005<-min(Cnord9_2005$Hg1)
Cnord9_max_2005<-min(Cnord9_2005$Hg1)

Cnord10_2005<-(filter(wCN2005, Mese == 10))
Cnord10_median_2005<-median(Cnord10_2005$Hg1)
Cnord10_mean_2005<-mean(Cnord10_2005$Hg1)
Cnord10_min_2005<-min(Cnord10_2005$Hg1)
Cnord10_max_2005<-min(Cnord10_2005$Hg1)

Cnord11_2005<-(filter(wCN2005, Mese == 11))
Cnord11_median_2005<-median(Cnord11_2005$Hg1)
Cnord11_mean_2005<-mean(Cnord11_2005$Hg1)
Cnord11_min_2005<-min(Cnord11_2005$Hg1)
Cnord11_max_2005<-min(Cnord11_2005$Hg1)

Cnord12_2005<-(filter(wCN2005, Mese == 12))
Cnord12_median_2005<-median(Cnord12_2005$Hg1)
Cnord12_mean_2005<-mean(Cnord12_2005$Hg1)
Cnord12_min_2005<-min(Cnord12_2005$Hg1)
Cnord12_max_2005<-min(Cnord12_2005$Hg1)


Cnords_median_2005<-c(Cnord1_median_2005, Cnord2_median_2005, Cnord3_median_2005,Cnord4_median_2005,
				  Cnord5_median_2005,Cnord6_median_2005,  Cnord7_median_2005,Cnord8_median_2005,Cnord9_median_2005,
				  Cnord10_median_2005,Cnord11_median_2005,Cnord12_median_2005)		  
				  
Cnords_mean_2005<-c(Cnord1_mean_2005, Cnord2_mean_2005,Cnord3_mean_2005,Cnord4_mean_2005,
				  Cnord5_mean_2005,Cnord6_mean_2005, Cnord7_mean_2005,Cnord8_mean_2005,Cnord9_mean_2005,
				  Cnord10_mean_2005,Cnord11_mean_2005,Cnord12_mean_2005)
				  				  
Cnords_min_2005<-c(Cnord1_min_2005, Cnord2_min_2005,Cnord3_min_2005,Cnord4_min_2005,
				  Cnord5_min_2005,Cnord6_min_2005, Cnord7_min_2005,Cnord8_min_2005,Cnord9_min_2005,
				  Cnord10_min_2005,Cnord11_min_2005,Cnord12_min_2005)		  
				  				  
Cnords_max_2005<-c(Cnord1_max_2005, Cnord2_max_2005,Cnord3_max_2005,Cnord4_max_2005,
				  Cnord5_max_2005,Cnord6_max_2005, Cnord7_max_2005,Cnord8_max_2005,Cnord9_max_2005,
				  Cnord10_max_2005,Cnord11_max_2005,Cnord12_max_2005)
				  
Cnord1_2006		<-(filter(wCN2006, Mese == 1))
Cnord1_median_2006 <-median(Cnord1_2006$Hg1)
Cnord1_mean_2006   <-mean(Cnord1_2006$Hg1)
Cnord1_min_2006    <-min(Cnord1_2006$Hg1)
Cnord1_max_2006    <-min(Cnord1_2006$Hg1)

Cnord2_2006<-(filter(wCN2006, Mese == 2))
Cnord2_median_2006<-median(Cnord2_2006$Hg1)
Cnord2_mean_2006<-mean(Cnord2_2006$Hg1)
Cnord2_min_2006<-min(Cnord2_2006$Hg1)
Cnord2_max_2006<-min(Cnord2_2006$Hg1)

Cnord3<-(filter(wCN2006, Mese == 3))
Cnord3_median_2006<-median(Cnord3_2006$Hg1)
Cnord3_mean_2006<-mean(Cnord3_2006$Hg1)
Cnord3_min_2006<-min(Cnord3_2006$Hg1)
Cnord3_max_2006<-min(Cnord3_2006$Hg1)

Cnord4_2006<-(filter(wCN2006, Mese == 4))
Cnord4_median_2006<-median(Cnord4_2006$Hg1)
Cnord4_mean_2006<-mean(Cnord4_2006$Hg1)
Cnord4_min_2006<-min(Cnord4_2006$Hg1)
Cnord4_max_2006<-min(Cnord4_2006$Hg1)

Cnord5_2006<-(filter(wCN2006, Mese == 5))
Cnord5_median_2006<-median(Cnord5_2006$Hg1)
Cnord5_mean_2006<-mean(Cnord5_2006$Hg1)
Cnord5_min_2006<-min(Cnord5_2006$Hg1)
Cnord5_max_2006<-min(Cnord5_2006$Hg1)

Cnord6_2006<-(filter(wCN2006, Mese == 6))
Cnord6_median_2006<-median(Cnord6_2006$Hg1)
Cnord6_mean_2006<-mean(Cnord6_2006$Hg1)
Cnord6_min_2006<-min(Cnord6_2006$Hg1)
Cnord6_max_2006<-min(Cnord6_2006$Hg1)

Cnord7_2006<-(filter(wCN2006, Mese ==7))
Cnord7_median_2006<-median(Cnord7_2006$Hg1)
Cnord7_mean_2006<-mean(Cnord7_2006$Hg1)
Cnord7_min_2006<-min(Cnord7_2006$Hg1)
Cnord7_max_2006<-min(Cnord7_2006$Hg1)

Cnord8_2006<-(filter(wCN2006, Mese == 8))
Cnord8_median_2006<-median(Cnord8_2006$Hg1)
Cnord8_mean_2006<-mean(Cnord8_2006$Hg1)
Cnord8_min_2006<-min(Cnord8_2006$Hg1)
Cnord8_max_2006<-min(Cnord8_2006$Hg1)

Cnord9_2006<-(filter(wCN2006, Mese == 9))
Cnord9_median_2006<-median(Cnord9_2006$Hg1)
Cnord9_mean_2006<-mean(Cnord9_2006$Hg1)
Cnord9_min_2006<-min(Cnord9_2006$Hg1)
Cnord9_max_2006<-min(Cnord9_2006$Hg1)

Cnord10_2006<-(filter(wCN2006, Mese == 10))
Cnord10_median_2006<-median(Cnord10_2006$Hg1)
Cnord10_mean_2006<-mean(Cnord10_2006$Hg1)
Cnord10_min_2006<-min(Cnord10_2006$Hg1)
Cnord10_max_2006<-min(Cnord10_2006$Hg1)

Cnord11_2006<-(filter(wCN2006, Mese == 11))
Cnord11_median_2006<-median(Cnord11_2006$Hg1)
Cnord11_mean_2006<-mean(Cnord11_2006$Hg1)
Cnord11_min_2006<-min(Cnord11_2006$Hg1)
Cnord11_max_2006<-min(Cnord11_2006$Hg1)

Cnord12_2006<-(filter(wCN2006, Mese == 12))
Cnord12_median_2006<-median(Cnord12_2006$Hg1)
Cnord12_mean_2006<-mean(Cnord12_2006$Hg1)
Cnord12_min_2006<-min(Cnord12_2006$Hg1)
Cnord12_max_2006<-min(Cnord12_2006$Hg1)


Cnords_median_2006<-c(Cnord1_median_2006, Cnord2_median_2006, Cnord3_median_2006,Cnord4_median_2006,
				  Cnord5_median_2006,Cnord6_median_2006,  Cnord7_median_2006,Cnord8_median_2006,Cnord9_median_2006,
				  Cnord10_median_2006,Cnord11_median_2006,Cnord12_median_2006)		  
				  
Cnords_mean_2006<-c(Cnord1_mean_2006, Cnord2_mean_2006,Cnord3_mean_2006,Cnord4_mean_2006,
				  Cnord5_mean_2006,Cnord6_mean_2006, Cnord7_mean_2006,Cnord8_mean_2006,Cnord9_mean_2006,
				  Cnord10_mean_2006,Cnord11_mean_2006,Cnord12_mean_2006)
				  				  
Cnords_min_2006<-c(Cnord1_min_2006, Cnord2_min_2006,Cnord3_min_2006,Cnord4_min_2006,
				  Cnord5_min_2006,Cnord6_min_2006, Cnord7_min_2006,Cnord8_min_2006,Cnord9_min_2006,
				  Cnord10_min_2006,Cnord11_min_2006,Cnord12_min_2006)		  
				  				  
Cnords_max_2006<-c(Cnord1_max_2006, Cnord2_max_2006,Cnord3_max_2006,Cnord4_max_2006,
				  Cnord5_max_2006,Cnord6_max_2006, Cnord7_max_2006,Cnord8_max_2006,Cnord9_max_2006,
				  Cnord10_max_2006,Cnord11_max_2006,Cnord12_max_2006)
				  
Cnord1_2007		<-(filter(wCN2007, Mese == 1))
Cnord1_median_2007 <-median(Cnord1_2007$Hg1)
Cnord1_mean_2007   <-mean(Cnord1_2007$Hg1)
Cnord1_min_2007    <-min(Cnord1_2007$Hg1)
Cnord1_max_2007    <-min(Cnord1_2007$Hg1)

Cnord2_2007<-(filter(wCN2007, Mese == 2))
Cnord2_median_2007<-median(Cnord2_2007$Hg1)
Cnord2_mean_2007<-mean(Cnord2_2007$Hg1)
Cnord2_min_2007<-min(Cnord2_2007$Hg1)
Cnord2_max_2007<-min(Cnord2_2007$Hg1)

Cnord3<-(filter(wCN2007, Mese == 3))
Cnord3_median_2007<-median(Cnord3_2007$Hg1)
Cnord3_mean_2007<-mean(Cnord3_2007$Hg1)
Cnord3_min_2007<-min(Cnord3_2007$Hg1)
Cnord3_max_2007<-min(Cnord3_2007$Hg1)

Cnord4_2007<-(filter(wCN2007, Mese == 4))
Cnord4_median_2007<-median(Cnord4_2007$Hg1)
Cnord4_mean_2007<-mean(Cnord4_2007$Hg1)
Cnord4_min_2007<-min(Cnord4_2007$Hg1)
Cnord4_max_2007<-min(Cnord4_2007$Hg1)

Cnord5_2007<-(filter(wCN2007, Mese == 5))
Cnord5_median_2007<-median(Cnord5_2007$Hg1)
Cnord5_mean_2007<-mean(Cnord5_2007$Hg1)
Cnord5_min_2007<-min(Cnord5_2007$Hg1)
Cnord5_max_2007<-min(Cnord5_2007$Hg1)

Cnord6_2007<-(filter(wCN2007, Mese == 6))
Cnord6_median_2007<-median(Cnord6_2007$Hg1)
Cnord6_mean_2007<-mean(Cnord6_2007$Hg1)
Cnord6_min_2007<-min(Cnord6_2007$Hg1)
Cnord6_max_2007<-min(Cnord6_2007$Hg1)

Cnord7_2007<-(filter(wCN2007, Mese ==7))
Cnord7_median_2007<-median(Cnord7_2007$Hg1)
Cnord7_mean_2007<-mean(Cnord7_2007$Hg1)
Cnord7_min_2007<-min(Cnord7_2007$Hg1)
Cnord7_max_2007<-min(Cnord7_2007$Hg1)

Cnord8_2007<-(filter(wCN2007, Mese == 8))
Cnord8_median_2007<-median(Cnord8_2007$Hg1)
Cnord8_mean_2007<-mean(Cnord8_2007$Hg1)
Cnord8_min_2007<-min(Cnord8_2007$Hg1)
Cnord8_max_2007<-min(Cnord8_2007$Hg1)

Cnord9_2007<-(filter(wCN2007, Mese == 9))
Cnord9_median_2007<-median(Cnord9_2007$Hg1)
Cnord9_mean_2007<-mean(Cnord9_2007$Hg1)
Cnord9_min_2007<-min(Cnord9_2007$Hg1)
Cnord9_max_2007<-min(Cnord9_2007$Hg1)

Cnord10_2007<-(filter(wCN2007, Mese == 10))
Cnord10_median_2007<-median(Cnord10_2007$Hg1)
Cnord10_mean_2007<-mean(Cnord10_2007$Hg1)
Cnord10_min_2007<-min(Cnord10_2007$Hg1)
Cnord10_max_2007<-min(Cnord10_2007$Hg1)

Cnord11_2007<-(filter(wCN2007, Mese == 11))
Cnord11_median_2007<-median(Cnord11_2007$Hg1)
Cnord11_mean_2007<-mean(Cnord11_2007$Hg1)
Cnord11_min_2007<-min(Cnord11_2007$Hg1)
Cnord11_max_2007<-min(Cnord11_2007$Hg1)

Cnord12_2007<-(filter(wCN2007, Mese == 12))
Cnord12_median_2007<-median(Cnord12_2007$Hg1)
Cnord12_mean_2007<-mean(Cnord12_2007$Hg1)
Cnord12_min_2007<-min(Cnord12_2007$Hg1)
Cnord12_max_2007<-min(Cnord12_2007$Hg1)


Cnords_median_2007<-c(Cnord1_median_2007, Cnord2_median_2007, Cnord3_median_2007,Cnord4_median_2007,
				  Cnord5_median_2007,Cnord6_median_2007,  Cnord7_median_2007,Cnord8_median_2007,Cnord9_median_2007,
				  Cnord10_median_2007,Cnord11_median_2007,Cnord12_median_2007)		  
				  
Cnords_mean_2007<-c(Cnord1_mean_2007, Cnord2_mean_2007,Cnord3_mean_2007,Cnord4_mean_2007,
				  Cnord5_mean_2007,Cnord6_mean_2007, Cnord7_mean_2007,Cnord8_mean_2007,Cnord9_mean_2007,
				  Cnord10_mean_2007,Cnord11_mean_2007,Cnord12_mean_2007)
				  				  
Cnords_min_2007<-c(Cnord1_min_2007, Cnord2_min_2007,Cnord3_min_2007,Cnord4_min_2007,
				  Cnord5_min_2007,Cnord6_min_2007, Cnord7_min_2007,Cnord8_min_2007,Cnord9_min_2007,
				  Cnord10_min_2007,Cnord11_min_2007,Cnord12_min_2007)		  
				  				  
Cnords_max_2007<-c(Cnord1_max_2007, Cnord2_max_2007,Cnord3_max_2007,Cnord4_max_2007,
				  Cnord5_max_2007,Cnord6_max_2007, Cnord7_max_2007,Cnord8_max_2007,Cnord9_max_2007,
				  Cnord10_max_2007,Cnord11_max_2007,Cnord12_max_2007)
				  		  				  

Cnord1_2008		<-(filter(wCN2008, Mese == 1))
Cnord1_median_2008 <-median(Cnord1_2008$Hg1)
Cnord1_mean_2008   <-mean(Cnord1_2008$Hg1)
Cnord1_min_2008    <-min(Cnord1_2008$Hg1)
Cnord1_max_2008    <-min(Cnord1_2008$Hg1)

Cnord2_2008<-(filter(wCN2008, Mese == 2))
Cnord2_median_2008<-median(Cnord2_2008$Hg1)
Cnord2_mean_2008<-mean(Cnord2_2008$Hg1)
Cnord2_min_2008<-min(Cnord2_2008$Hg1)
Cnord2_max_2008<-min(Cnord2_2008$Hg1)

Cnord3<-(filter(wCN2008, Mese == 3))
Cnord3_median_2008<-median(Cnord3_2008$Hg1)
Cnord3_mean_2008<-mean(Cnord3_2008$Hg1)
Cnord3_min_2008<-min(Cnord3_2008$Hg1)
Cnord3_max_2008<-min(Cnord3_2008$Hg1)

Cnord4_2008<-(filter(wCN2008, Mese == 4))
Cnord4_median_2008<-median(Cnord4_2008$Hg1)
Cnord4_mean_2008<-mean(Cnord4_2008$Hg1)
Cnord4_min_2008<-min(Cnord4_2008$Hg1)
Cnord4_max_2008<-min(Cnord4_2008$Hg1)

Cnord5_2008<-(filter(wCN2008, Mese == 5))
Cnord5_median_2008<-median(Cnord5_2008$Hg1)
Cnord5_mean_2008<-mean(Cnord5_2008$Hg1)
Cnord5_min_2008<-min(Cnord5_2008$Hg1)
Cnord5_max_2008<-min(Cnord5_2008$Hg1)

Cnord6_2008<-(filter(wCN2008, Mese == 6))
Cnord6_median_2008<-median(Cnord6_2008$Hg1)
Cnord6_mean_2008<-mean(Cnord6_2008$Hg1)
Cnord6_min_2008<-min(Cnord6_2008$Hg1)
Cnord6_max_2008<-min(Cnord6_2008$Hg1)

Cnord7_2008<-(filter(wCN2008, Mese ==7))
Cnord7_median_2008<-median(Cnord7_2008$Hg1)
Cnord7_mean_2008<-mean(Cnord7_2008$Hg1)
Cnord7_min_2008<-min(Cnord7_2008$Hg1)
Cnord7_max_2008<-min(Cnord7_2008$Hg1)

Cnord8_2008<-(filter(wCN2008, Mese == 8))
Cnord8_median_2008<-median(Cnord8_2008$Hg1)
Cnord8_mean_2008<-mean(Cnord8_2008$Hg1)
Cnord8_min_2008<-min(Cnord8_2008$Hg1)
Cnord8_max_2008<-min(Cnord8_2008$Hg1)

Cnord9_2008<-(filter(wCN2008, Mese == 9))
Cnord9_median_2008<-median(Cnord9_2008$Hg1)
Cnord9_mean_2008<-mean(Cnord9_2008$Hg1)
Cnord9_min_2008<-min(Cnord9_2008$Hg1)
Cnord9_max_2008<-min(Cnord9_2008$Hg1)

Cnord10_2008<-(filter(wCN2008, Mese == 10))
Cnord10_median_2008<-median(Cnord10_2008$Hg1)
Cnord10_mean_2008<-mean(Cnord10_2008$Hg1)
Cnord10_min_2008<-min(Cnord10_2008$Hg1)
Cnord10_max_2008<-min(Cnord10_2008$Hg1)

Cnord11_2008<-(filter(wCN2008, Mese == 11))
Cnord11_median_2008<-median(Cnord11_2008$Hg1)
Cnord11_mean_2008<-mean(Cnord11_2008$Hg1)
Cnord11_min_2008<-min(Cnord11_2008$Hg1)
Cnord11_max_2008<-min(Cnord11_2008$Hg1)

Cnord12_2008<-(filter(wCN2008, Mese == 12))
Cnord12_median_2008<-median(Cnord12_2008$Hg1)
Cnord12_mean_2008<-mean(Cnord12_2008$Hg1)
Cnord12_min_2008<-min(Cnord12_2008$Hg1)
Cnord12_max_2008<-min(Cnord12_2008$Hg1)


Cnords_median_2008<-c(Cnord1_median_2008, Cnord2_median_2008, Cnord3_median_2008,Cnord4_median_2008,
				  Cnord5_median_2008,Cnord6_median_2008,  Cnord7_median_2008,Cnord8_median_2008,Cnord9_median_2008,
				  Cnord10_median_2008,Cnord11_median_2008,Cnord12_median_2008)		  
				  
Cnords_mean_2008<-c(Cnord1_mean_2008, Cnord2_mean_2008,Cnord3_mean_2008,Cnord4_mean_2008,
				  Cnord5_mean_2008,Cnord6_mean_2008, Cnord7_mean_2008,Cnord8_mean_2008,Cnord9_mean_2008,
				  Cnord10_mean_2008,Cnord11_mean_2008,Cnord12_mean_2008)
				  				  
Cnords_min_2008<-c(Cnord1_min_2008, Cnord2_min_2008,Cnord3_min_2008,Cnord4_min_2008,
				  Cnord5_min_2008,Cnord6_min_2008, Cnord7_min_2008,Cnord8_min_2008,Cnord9_min_2008,
				  Cnord10_min_2008,Cnord11_min_2008,Cnord12_min_2008)		  
				  				  
Cnords_max_2008<-c(Cnord1_max_2008, Cnord2_max_2008,Cnord3_max_2008,Cnord4_max_2008,
				  Cnord5_max_2008,Cnord6_max_2008, Cnord7_max_2008,Cnord8_max_2008,Cnord9_max_2008,
				  Cnord10_max_2008,Cnord11_max_2008,Cnord12_max_2008)


mediane_CNORD_ym<-C(Cnords_median_2001,Cnords_median_2002,Cnords_median_2003,Cnords_median_2004,
					 Cnords_median_2005,Cnords_median_2006, Cnords_median_2007, Cnords_median_2008)				  
				  
medie_CNORD_ym<-C(Cnords_mean_2001,Cnords_mean_2002,Cnords_mean_2003,Cnords_mean_2004,
					 Cnords_mean_2005,Cnords_mean_2006, Cnords_mean_2007, Cnords_mean_2008)		
				  
min_CNORD_ym<-C(Cnords_min_2001,Cnords_min_2002,Cnords_min_2003,Cnords_min_2004,
					 Cnords_min_2005,Cnords_min_2006, Cnords_min_2007, Cnords_min_2008)		
		  
max_CNORD_ym<-C(Cnords_max_2001,Cnords_max_2002,Cnords_max_2003,Cnords_max_2004,
					 Cnords_max_2005,Cnords_max_2006, Cnords_max_2007, Cnords_max_2008)		
					 
CNORD_all<- data.frame(mediane_CNORD_ym,medie_CNORD_ym,min_CNORD_ym,max_CNORD_ym)					 
write.table(CNORD_all, file='Mela_Cnord.txt)					 