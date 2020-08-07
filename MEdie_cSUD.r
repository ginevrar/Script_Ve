
wCS2002<-filter(Water_centro_s_df, Anno==2002)
wCS2003<-filter(Water_centro_s_df, Anno==2003)
wCS2004<-filter(Water_centro_s_df, Anno==2004)
wCS2005<-filter(Water_centro_s_df, Anno==2005)
wCS2006<-filter(Water_centro_s_df, Anno==2006)
wCS2008<-filter(Water_centro_s_df, Anno==2008)
wCS2008<-filter(Water_centro_s_df, Anno==2008)

Csud1_2002		<-(filter(wCS2002, Mese == 1))
Csud1_median_2002 <-median(Csud1_2002$Hg1)
Csud1_mean_2002   <-mean(Csud1_2002$Hg1)
Csud1_min_2002    <-min(Csud1_2002$Hg1)
Csud1_max_2002    <-min(Csud1_2002$Hg1)

Csud2_2002<-(filter(wCS2002, Mese == 2))
Csud2_median_2002<-median(Csud2_2002$Hg1)
Csud2_mean_2002<-mean(Csud2_2002$Hg1)
Csud2_min_2002<-min(Csud2_2002$Hg1)
Csud2_max_2002<-min(Csud2_2002$Hg1)

Csud3<-(filter(wCS2002, Mese == 3))
Csud3_median_2002<-median(Csud3_2002$Hg1)
Csud3_mean_2002<-mean(Csud3_2002$Hg1)
Csud3_min_2002<-min(Csud3_2002$Hg1)
Csud3_max_2002<-min(Csud3_2002$Hg1)

Csud4_2002<-(filter(wCS2002, Mese == 4))
Csud4_median_2002<-median(Csud4_2002$Hg1)
Csud4_mean_2002<-mean(Csud4_2002$Hg1)
Csud4_min_2002<-min(Csud4_2002$Hg1)
Csud4_max_2002<-min(Csud4_2002$Hg1)

Csud5_2002<-(filter(wCS2002, Mese == 5))
Csud5_median_2002<-median(Csud5_2002$Hg1)
Csud5_mean_2002<-mean(Csud5_2002$Hg1)
Csud5_min_2002<-min(Csud5_2002$Hg1)
Csud5_max_2002<-min(Csud5_2002$Hg1)

Csud6_2002<-(filter(wCS2002, Mese == 6))
Csud6_median_2002<-median(Csud6_2002$Hg1)
Csud6_mean_2002<-mean(Csud6_2002$Hg1)
Csud6_min_2002<-min(Csud6_2002$Hg1)
Csud6_max_2002<-min(Csud6_2002$Hg1)

Csud7_2002<-(filter(wCS2002, Mese ==7))
Csud7_median_2002<-median(Csud7_2002$Hg1)
Csud7_mean_2002<-mean(Csud7_2002$Hg1)
Csud7_min_2002<-min(Csud7_2002$Hg1)
Csud7_max_2002<-min(Csud7_2002$Hg1)

Csud8_2002<-(filter(wCS2002, Mese == 8))
Csud8_median_2002<-median(Csud8_2002$Hg1)
Csud8_mean_2002<-mean(Csud8_2002$Hg1)
Csud8_min_2002<-min(Csud8_2002$Hg1)
Csud8_max_2002<-min(Csud8_2002$Hg1)

Csud9_2002<-(filter(wCS2002, Mese == 9))
Csud9_median_2002<-median(Csud9_2002$Hg1)
Csud9_mean_2002<-mean(Csud9_2002$Hg1)
Csud9_min_2002<-min(Csud9_2002$Hg1)
Csud9_max_2002<-min(Csud9_2002$Hg1)

Csud10_2002<-(filter(wCS2002, Mese == 10))
Csud10_median_2002<-median(Csud10_2002$Hg1)
Csud10_mean_2002<-mean(Csud10_2002$Hg1)
Csud10_min_2002<-min(Csud10_2002$Hg1)
Csud10_max_2002<-min(Csud10_2002$Hg1)

Csud11_2002<-(filter(wCS2002, Mese == 11))
Csud11_median_2002<-median(Csud11_2002$Hg1)
Csud11_mean_2002<-mean(Csud11_2002$Hg1)
Csud11_min_2002<-min(Csud11_2002$Hg1)
Csud11_max_2002<-min(Csud11_2002$Hg1)

Csud12_2002<-(filter(wCS2002, Mese == 12))
Csud12_median_2002<-median(Csud12_2002$Hg1)
Csud12_mean_2002<-mean(Csud12_2002$Hg1)
Csud12_min_2002<-min(Csud12_2002$Hg1)
Csud12_max_2002<-min(Csud12_2002$Hg1)


Csuds_median_2002<-c(Csud1_median_2002, Csud2_median_2002, Csud3_median_2002,Csud4_median_2002,
				  Csud5_median_2002,Csud6_median_2002,  Csud7_median_2002,Csud8_median_2002,Csud9_median_2002,
				  Csud10_median_2002,Csud11_median_2002,Csud12_median_2002)		  
				  
Csuds_mean_2002<-c(Csud1_mean_2002, Csud2_mean_2002,Csud3_mean_2002,Csud4_mean_2002,
				  Csud5_mean_2002,Csud6_mean_2002, Csud7_mean_2002,Csud8_mean_2002,Csud9_mean_2002,
				  Csud10_mean_2002,Csud11_mean_2002,Csud12_mean_2002)
				  				  
Csuds_min_2002<-c(Csud1_min_2002, Csud2_min_2002,Csud3_min_2002,Csud4_min_2002,
				  Csud5_min_2002,Csud6_min_2002, Csud7_min_2002,Csud8_min_2002,Csud9_min_2002,
				  Csud10_min_2002,Csud11_min_2002,Csud12_min_2002)		  
				  				  
Csuds_max_2002<-c(Csud1_max_2002, Csud2_max_2002,Csud3_max_2002,Csud4_max_2002,
				  Csud5_max_2002,Csud6_max_2002, Csud7_max_2002,Csud8_max_2002,Csud9_max_2002,
				  Csud10_max_2002,Csud11_max_2002,Csud12_max_2002)
				  
Csud1_2003		<-(filter(wCS2003, Mese == 1))
Csud1_median_2003 <-median(Csud1_2003$Hg1)
Csud1_mean_2003   <-mean(Csud1_2003$Hg1)
Csud1_min_2003    <-min(Csud1_2003$Hg1)
Csud1_max_2003    <-min(Csud1_2003$Hg1)

Csud2_2003<-(filter(wCS2003, Mese == 2))
Csud2_median_2003<-median(Csud2_2003$Hg1)
Csud2_mean_2003<-mean(Csud2_2003$Hg1)
Csud2_min_2003<-min(Csud2_2003$Hg1)
Csud2_max_2003<-min(Csud2_2003$Hg1)

Csud3<-(filter(wCS2003, Mese == 3))
Csud3_median_2003<-median(Csud3_2003$Hg1)
Csud3_mean_2003<-mean(Csud3_2003$Hg1)
Csud3_min_2003<-min(Csud3_2003$Hg1)
Csud3_max_2003<-min(Csud3_2003$Hg1)

Csud4_2003<-(filter(wCS2003, Mese == 4))
Csud4_median_2003<-median(Csud4_2003$Hg1)
Csud4_mean_2003<-mean(Csud4_2003$Hg1)
Csud4_min_2003<-min(Csud4_2003$Hg1)
Csud4_max_2003<-min(Csud4_2003$Hg1)

Csud5_2003<-(filter(wCS2003, Mese == 5))
Csud5_median_2003<-median(Csud5_2003$Hg1)
Csud5_mean_2003<-mean(Csud5_2003$Hg1)
Csud5_min_2003<-min(Csud5_2003$Hg1)
Csud5_max_2003<-min(Csud5_2003$Hg1)

Csud6_2003<-(filter(wCS2003, Mese == 6))
Csud6_median_2003<-median(Csud6_2003$Hg1)
Csud6_mean_2003<-mean(Csud6_2003$Hg1)
Csud6_min_2003<-min(Csud6_2003$Hg1)
Csud6_max_2003<-min(Csud6_2003$Hg1)

Csud7_2003<-(filter(wCS2003, Mese ==7))
Csud7_median_2003<-median(Csud7_2003$Hg1)
Csud7_mean_2003<-mean(Csud7_2003$Hg1)
Csud7_min_2003<-min(Csud7_2003$Hg1)
Csud7_max_2003<-min(Csud7_2003$Hg1)

Csud8_2003<-(filter(wCS2003, Mese == 8))
Csud8_median_2003<-median(Csud8_2003$Hg1)
Csud8_mean_2003<-mean(Csud8_2003$Hg1)
Csud8_min_2003<-min(Csud8_2003$Hg1)
Csud8_max_2003<-min(Csud8_2003$Hg1)

Csud9_2003<-(filter(wCS2003, Mese == 9))
Csud9_median_2003<-median(Csud9_2003$Hg1)
Csud9_mean_2003<-mean(Csud9_2003$Hg1)
Csud9_min_2003<-min(Csud9_2003$Hg1)
Csud9_max_2003<-min(Csud9_2003$Hg1)

Csud10_2003<-(filter(wCS2003, Mese == 10))
Csud10_median_2003<-median(Csud10_2003$Hg1)
Csud10_mean_2003<-mean(Csud10_2003$Hg1)
Csud10_min_2003<-min(Csud10_2003$Hg1)
Csud10_max_2003<-min(Csud10_2003$Hg1)

Csud11_2003<-(filter(wCS2003, Mese == 11))
Csud11_median_2003<-median(Csud11_2003$Hg1)
Csud11_mean_2003<-mean(Csud11_2003$Hg1)
Csud11_min_2003<-min(Csud11_2003$Hg1)
Csud11_max_2003<-min(Csud11_2003$Hg1)

Csud12_2003<-(filter(wCS2003, Mese == 12))
Csud12_median_2003<-median(Csud12_2003$Hg1)
Csud12_mean_2003<-mean(Csud12_2003$Hg1)
Csud12_min_2003<-min(Csud12_2003$Hg1)
Csud12_max_2003<-min(Csud12_2003$Hg1)


Csuds_median_2003<-c(Csud1_median_2003, Csud2_median_2003, Csud3_median_2003,Csud4_median_2003,
				  Csud5_median_2003,Csud6_median_2003,  Csud7_median_2003,Csud8_median_2003,Csud9_median_2003,
				  Csud10_median_2003,Csud11_median_2003,Csud12_median_2003)		  
				  
Csuds_mean_2003<-c(Csud1_mean_2003, Csud2_mean_2003,Csud3_mean_2003,Csud4_mean_2003,
				  Csud5_mean_2003,Csud6_mean_2003, Csud7_mean_2003,Csud8_mean_2003,Csud9_mean_2003,
				  Csud10_mean_2003,Csud11_mean_2003,Csud12_mean_2003)
				  				  
Csuds_min_2003<-c(Csud1_min_2003, Csud2_min_2003,Csud3_min_2003,Csud4_min_2003,
				  Csud5_min_2003,Csud6_min_2003, Csud7_min_2003,Csud8_min_2003,Csud9_min_2003,
				  Csud10_min_2003,Csud11_min_2003,Csud12_min_2003)		  
				  				  
Csuds_max_2003<-c(Csud1_max_2003, Csud2_max_2003,Csud3_max_2003,Csud4_max_2003,
				  Csud5_max_2003,Csud6_max_2003, Csud7_max_2003,Csud8_max_2003,Csud9_max_2003,
				  Csud10_max_2003,Csud11_max_2003,Csud12_max_2003)
	
	
Csud1_2004		<-(filter(wCS2004, Mese == 1))
Csud1_median_2004 <-median(Csud1_2004$Hg1)
Csud1_mean_2004   <-mean(Csud1_2004$Hg1)
Csud1_min_2004    <-min(Csud1_2004$Hg1)
Csud1_max_2004    <-min(Csud1_2004$Hg1)

Csud2_2004<-(filter(wCS2004, Mese == 2))
Csud2_median_2004<-median(Csud2_2004$Hg1)
Csud2_mean_2004<-mean(Csud2_2004$Hg1)
Csud2_min_2004<-min(Csud2_2004$Hg1)
Csud2_max_2004<-min(Csud2_2004$Hg1)

Csud3<-(filter(wCS2004, Mese == 3))
Csud3_median_2004<-median(Csud3_2004$Hg1)
Csud3_mean_2004<-mean(Csud3_2004$Hg1)
Csud3_min_2004<-min(Csud3_2004$Hg1)
Csud3_max_2004<-min(Csud3_2004$Hg1)

Csud4_2004<-(filter(wCS2004, Mese == 4))
Csud4_median_2004<-median(Csud4_2004$Hg1)
Csud4_mean_2004<-mean(Csud4_2004$Hg1)
Csud4_min_2004<-min(Csud4_2004$Hg1)
Csud4_max_2004<-min(Csud4_2004$Hg1)

Csud5_2004<-(filter(wCS2004, Mese == 5))
Csud5_median_2004<-median(Csud5_2004$Hg1)
Csud5_mean_2004<-mean(Csud5_2004$Hg1)
Csud5_min_2004<-min(Csud5_2004$Hg1)
Csud5_max_2004<-min(Csud5_2004$Hg1)

Csud6_2004<-(filter(wCS2004, Mese == 6))
Csud6_median_2004<-median(Csud6_2004$Hg1)
Csud6_mean_2004<-mean(Csud6_2004$Hg1)
Csud6_min_2004<-min(Csud6_2004$Hg1)
Csud6_max_2004<-min(Csud6_2004$Hg1)

Csud7_2004<-(filter(wCS2004, Mese ==7))
Csud7_median_2004<-median(Csud7_2004$Hg1)
Csud7_mean_2004<-mean(Csud7_2004$Hg1)
Csud7_min_2004<-min(Csud7_2004$Hg1)
Csud7_max_2004<-min(Csud7_2004$Hg1)

Csud8_2004<-(filter(wCS2004, Mese == 8))
Csud8_median_2004<-median(Csud8_2004$Hg1)
Csud8_mean_2004<-mean(Csud8_2004$Hg1)
Csud8_min_2004<-min(Csud8_2004$Hg1)
Csud8_max_2004<-min(Csud8_2004$Hg1)

Csud9_2004<-(filter(wCS2004, Mese == 9))
Csud9_median_2004<-median(Csud9_2004$Hg1)
Csud9_mean_2004<-mean(Csud9_2004$Hg1)
Csud9_min_2004<-min(Csud9_2004$Hg1)
Csud9_max_2004<-min(Csud9_2004$Hg1)

Csud10_2004<-(filter(wCS2004, Mese == 10))
Csud10_median_2004<-median(Csud10_2004$Hg1)
Csud10_mean_2004<-mean(Csud10_2004$Hg1)
Csud10_min_2004<-min(Csud10_2004$Hg1)
Csud10_max_2004<-min(Csud10_2004$Hg1)

Csud11_2004<-(filter(wCS2004, Mese == 11))
Csud11_median_2004<-median(Csud11_2004$Hg1)
Csud11_mean_2004<-mean(Csud11_2004$Hg1)
Csud11_min_2004<-min(Csud11_2004$Hg1)
Csud11_max_2004<-min(Csud11_2004$Hg1)

Csud12_2004<-(filter(wCS2004, Mese == 12))
Csud12_median_2004<-median(Csud12_2004$Hg1)
Csud12_mean_2004<-mean(Csud12_2004$Hg1)
Csud12_min_2004<-min(Csud12_2004$Hg1)
Csud12_max_2004<-min(Csud12_2004$Hg1)


Csuds_median_2004<-c(Csud1_median_2004, Csud2_median_2004, Csud3_median_2004,Csud4_median_2004,
				  Csud5_median_2004,Csud6_median_2004,  Csud7_median_2004,Csud8_median_2004,Csud9_median_2004,
				  Csud10_median_2004,Csud11_median_2004,Csud12_median_2004)		  
				  
Csuds_mean_2004<-c(Csud1_mean_2004, Csud2_mean_2004,Csud3_mean_2004,Csud4_mean_2004,
				  Csud5_mean_2004,Csud6_mean_2004, Csud7_mean_2004,Csud8_mean_2004,Csud9_mean_2004,
				  Csud10_mean_2004,Csud11_mean_2004,Csud12_mean_2004)
				  				  
Csuds_min_2004<-c(Csud1_min_2004, Csud2_min_2004,Csud3_min_2004,Csud4_min_2004,
				  Csud5_min_2004,Csud6_min_2004, Csud7_min_2004,Csud8_min_2004,Csud9_min_2004,
				  Csud10_min_2004,Csud11_min_2004,Csud12_min_2004)		  
				  				  
Csuds_max_2004<-c(Csud1_max_2004, Csud2_max_2004,Csud3_max_2004,Csud4_max_2004,
				  Csud5_max_2004,Csud6_max_2004, Csud7_max_2004,Csud8_max_2004,Csud9_max_2004,
				  Csud10_max_2004,Csud11_max_2004,Csud12_max_2004)
				  
Csud1_2005		<-(filter(wCS2005, Mese == 1))
Csud1_median_2005 <-median(Csud1_2005$Hg1)
Csud1_mean_2005   <-mean(Csud1_2005$Hg1)
Csud1_min_2005    <-min(Csud1_2005$Hg1)
Csud1_max_2005    <-min(Csud1_2005$Hg1)

Csud2_2005<-(filter(wCS2005, Mese == 2))
Csud2_median_2005<-median(Csud2_2005$Hg1)
Csud2_mean_2005<-mean(Csud2_2005$Hg1)
Csud2_min_2005<-min(Csud2_2005$Hg1)
Csud2_max_2005<-min(Csud2_2005$Hg1)

Csud3<-(filter(wCS2005, Mese == 3))
Csud3_median_2005<-median(Csud3_2005$Hg1)
Csud3_mean_2005<-mean(Csud3_2005$Hg1)
Csud3_min_2005<-min(Csud3_2005$Hg1)
Csud3_max_2005<-min(Csud3_2005$Hg1)

Csud4_2005<-(filter(wCS2005, Mese == 4))
Csud4_median_2005<-median(Csud4_2005$Hg1)
Csud4_mean_2005<-mean(Csud4_2005$Hg1)
Csud4_min_2005<-min(Csud4_2005$Hg1)
Csud4_max_2005<-min(Csud4_2005$Hg1)

Csud5_2005<-(filter(wCS2005, Mese == 5))
Csud5_median_2005<-median(Csud5_2005$Hg1)
Csud5_mean_2005<-mean(Csud5_2005$Hg1)
Csud5_min_2005<-min(Csud5_2005$Hg1)
Csud5_max_2005<-min(Csud5_2005$Hg1)

Csud6_2005<-(filter(wCS2005, Mese == 6))
Csud6_median_2005<-median(Csud6_2005$Hg1)
Csud6_mean_2005<-mean(Csud6_2005$Hg1)
Csud6_min_2005<-min(Csud6_2005$Hg1)
Csud6_max_2005<-min(Csud6_2005$Hg1)

Csud7_2005<-(filter(wCS2005, Mese ==7))
Csud7_median_2005<-median(Csud7_2005$Hg1)
Csud7_mean_2005<-mean(Csud7_2005$Hg1)
Csud7_min_2005<-min(Csud7_2005$Hg1)
Csud7_max_2005<-min(Csud7_2005$Hg1)

Csud8_2005<-(filter(wCS2005, Mese == 8))
Csud8_median_2005<-median(Csud8_2005$Hg1)
Csud8_mean_2005<-mean(Csud8_2005$Hg1)
Csud8_min_2005<-min(Csud8_2005$Hg1)
Csud8_max_2005<-min(Csud8_2005$Hg1)

Csud9_2005<-(filter(wCS2005, Mese == 9))
Csud9_median_2005<-median(Csud9_2005$Hg1)
Csud9_mean_2005<-mean(Csud9_2005$Hg1)
Csud9_min_2005<-min(Csud9_2005$Hg1)
Csud9_max_2005<-min(Csud9_2005$Hg1)

Csud10_2005<-(filter(wCS2005, Mese == 10))
Csud10_median_2005<-median(Csud10_2005$Hg1)
Csud10_mean_2005<-mean(Csud10_2005$Hg1)
Csud10_min_2005<-min(Csud10_2005$Hg1)
Csud10_max_2005<-min(Csud10_2005$Hg1)

Csud11_2005<-(filter(wCS2005, Mese == 11))
Csud11_median_2005<-median(Csud11_2005$Hg1)
Csud11_mean_2005<-mean(Csud11_2005$Hg1)
Csud11_min_2005<-min(Csud11_2005$Hg1)
Csud11_max_2005<-min(Csud11_2005$Hg1)

Csud12_2005<-(filter(wCS2005, Mese == 12))
Csud12_median_2005<-median(Csud12_2005$Hg1)
Csud12_mean_2005<-mean(Csud12_2005$Hg1)
Csud12_min_2005<-min(Csud12_2005$Hg1)
Csud12_max_2005<-min(Csud12_2005$Hg1)


Csuds_median_2005<-c(Csud1_median_2005, Csud2_median_2005, Csud3_median_2005,Csud4_median_2005,
				  Csud5_median_2005,Csud6_median_2005,  Csud7_median_2005,Csud8_median_2005,Csud9_median_2005,
				  Csud10_median_2005,Csud11_median_2005,Csud12_median_2005)		  
				  
Csuds_mean_2005<-c(Csud1_mean_2005, Csud2_mean_2005,Csud3_mean_2005,Csud4_mean_2005,
				  Csud5_mean_2005,Csud6_mean_2005, Csud7_mean_2005,Csud8_mean_2005,Csud9_mean_2005,
				  Csud10_mean_2005,Csud11_mean_2005,Csud12_mean_2005)
				  				  
Csuds_min_2005<-c(Csud1_min_2005, Csud2_min_2005,Csud3_min_2005,Csud4_min_2005,
				  Csud5_min_2005,Csud6_min_2005, Csud7_min_2005,Csud8_min_2005,Csud9_min_2005,
				  Csud10_min_2005,Csud11_min_2005,Csud12_min_2005)		  
				  				  
Csuds_max_2005<-c(Csud1_max_2005, Csud2_max_2005,Csud3_max_2005,Csud4_max_2005,
				  Csud5_max_2005,Csud6_max_2005, Csud7_max_2005,Csud8_max_2005,Csud9_max_2005,
				  Csud10_max_2005,Csud11_max_2005,Csud12_max_2005)
				  
Csud1_2006		<-(filter(wCS2006, Mese == 1))
Csud1_median_2006 <-median(Csud1_2006$Hg1)
Csud1_mean_2006   <-mean(Csud1_2006$Hg1)
Csud1_min_2006    <-min(Csud1_2006$Hg1)
Csud1_max_2006    <-min(Csud1_2006$Hg1)

Csud2_2006<-(filter(wCS2006, Mese == 2))
Csud2_median_2006<-median(Csud2_2006$Hg1)
Csud2_mean_2006<-mean(Csud2_2006$Hg1)
Csud2_min_2006<-min(Csud2_2006$Hg1)
Csud2_max_2006<-min(Csud2_2006$Hg1)

Csud3<-(filter(wCS2006, Mese == 3))
Csud3_median_2006<-median(Csud3_2006$Hg1)
Csud3_mean_2006<-mean(Csud3_2006$Hg1)
Csud3_min_2006<-min(Csud3_2006$Hg1)
Csud3_max_2006<-min(Csud3_2006$Hg1)

Csud4_2006<-(filter(wCS2006, Mese == 4))
Csud4_median_2006<-median(Csud4_2006$Hg1)
Csud4_mean_2006<-mean(Csud4_2006$Hg1)
Csud4_min_2006<-min(Csud4_2006$Hg1)
Csud4_max_2006<-min(Csud4_2006$Hg1)

Csud5_2006<-(filter(wCS2006, Mese == 5))
Csud5_median_2006<-median(Csud5_2006$Hg1)
Csud5_mean_2006<-mean(Csud5_2006$Hg1)
Csud5_min_2006<-min(Csud5_2006$Hg1)
Csud5_max_2006<-min(Csud5_2006$Hg1)

Csud6_2006<-(filter(wCS2006, Mese == 6))
Csud6_median_2006<-median(Csud6_2006$Hg1)
Csud6_mean_2006<-mean(Csud6_2006$Hg1)
Csud6_min_2006<-min(Csud6_2006$Hg1)
Csud6_max_2006<-min(Csud6_2006$Hg1)

Csud7_2006<-(filter(wCS2006, Mese ==7))
Csud7_median_2006<-median(Csud7_2006$Hg1)
Csud7_mean_2006<-mean(Csud7_2006$Hg1)
Csud7_min_2006<-min(Csud7_2006$Hg1)
Csud7_max_2006<-min(Csud7_2006$Hg1)

Csud8_2006<-(filter(wCS2006, Mese == 8))
Csud8_median_2006<-median(Csud8_2006$Hg1)
Csud8_mean_2006<-mean(Csud8_2006$Hg1)
Csud8_min_2006<-min(Csud8_2006$Hg1)
Csud8_max_2006<-min(Csud8_2006$Hg1)

Csud9_2006<-(filter(wCS2006, Mese == 9))
Csud9_median_2006<-median(Csud9_2006$Hg1)
Csud9_mean_2006<-mean(Csud9_2006$Hg1)
Csud9_min_2006<-min(Csud9_2006$Hg1)
Csud9_max_2006<-min(Csud9_2006$Hg1)

Csud10_2006<-(filter(wCS2006, Mese == 10))
Csud10_median_2006<-median(Csud10_2006$Hg1)
Csud10_mean_2006<-mean(Csud10_2006$Hg1)
Csud10_min_2006<-min(Csud10_2006$Hg1)
Csud10_max_2006<-min(Csud10_2006$Hg1)

Csud11_2006<-(filter(wCS2006, Mese == 11))
Csud11_median_2006<-median(Csud11_2006$Hg1)
Csud11_mean_2006<-mean(Csud11_2006$Hg1)
Csud11_min_2006<-min(Csud11_2006$Hg1)
Csud11_max_2006<-min(Csud11_2006$Hg1)

Csud12_2006<-(filter(wCS2006, Mese == 12))
Csud12_median_2006<-median(Csud12_2006$Hg1)
Csud12_mean_2006<-mean(Csud12_2006$Hg1)
Csud12_min_2006<-min(Csud12_2006$Hg1)
Csud12_max_2006<-min(Csud12_2006$Hg1)


Csuds_median_2006<-c(Csud1_median_2006, Csud2_median_2006, Csud3_median_2006,Csud4_median_2006,
				  Csud5_median_2006,Csud6_median_2006,  Csud7_median_2006,Csud8_median_2006,Csud9_median_2006,
				  Csud10_median_2006,Csud11_median_2006,Csud12_median_2006)		  
				  
Csuds_mean_2006<-c(Csud1_mean_2006, Csud2_mean_2006,Csud3_mean_2006,Csud4_mean_2006,
				  Csud5_mean_2006,Csud6_mean_2006, Csud7_mean_2006,Csud8_mean_2006,Csud9_mean_2006,
				  Csud10_mean_2006,Csud11_mean_2006,Csud12_mean_2006)
				  				  
Csuds_min_2006<-c(Csud1_min_2006, Csud2_min_2006,Csud3_min_2006,Csud4_min_2006,
				  Csud5_min_2006,Csud6_min_2006, Csud7_min_2006,Csud8_min_2006,Csud9_min_2006,
				  Csud10_min_2006,Csud11_min_2006,Csud12_min_2006)		  
				  				  
Csuds_max_2006<-c(Csud1_max_2006, Csud2_max_2006,Csud3_max_2006,Csud4_max_2006,
				  Csud5_max_2006,Csud6_max_2006, Csud7_max_2006,Csud8_max_2006,Csud9_max_2006,
				  Csud10_max_2006,Csud11_max_2006,Csud12_max_2006)
				  
Csud1_2007		<-(filter(wCS2007, Mese == 1))
Csud1_median_2007 <-median(Csud1_2007$Hg1)
Csud1_mean_2007   <-mean(Csud1_2007$Hg1)
Csud1_min_2007    <-min(Csud1_2007$Hg1)
Csud1_max_2007    <-min(Csud1_2007$Hg1)

Csud2_2007<-(filter(wCS2007, Mese == 2))
Csud2_median_2007<-median(Csud2_2007$Hg1)
Csud2_mean_2007<-mean(Csud2_2007$Hg1)
Csud2_min_2007<-min(Csud2_2007$Hg1)
Csud2_max_2007<-min(Csud2_2007$Hg1)

Csud3<-(filter(wCS2007, Mese == 3))
Csud3_median_2007<-median(Csud3_2007$Hg1)
Csud3_mean_2007<-mean(Csud3_2007$Hg1)
Csud3_min_2007<-min(Csud3_2007$Hg1)
Csud3_max_2007<-min(Csud3_2007$Hg1)

Csud4_2007<-(filter(wCS2007, Mese == 4))
Csud4_median_2007<-median(Csud4_2007$Hg1)
Csud4_mean_2007<-mean(Csud4_2007$Hg1)
Csud4_min_2007<-min(Csud4_2007$Hg1)
Csud4_max_2007<-min(Csud4_2007$Hg1)

Csud5_2007<-(filter(wCS2007, Mese == 5))
Csud5_median_2007<-median(Csud5_2007$Hg1)
Csud5_mean_2007<-mean(Csud5_2007$Hg1)
Csud5_min_2007<-min(Csud5_2007$Hg1)
Csud5_max_2007<-min(Csud5_2007$Hg1)

Csud6_2007<-(filter(wCS2007, Mese == 6))
Csud6_median_2007<-median(Csud6_2007$Hg1)
Csud6_mean_2007<-mean(Csud6_2007$Hg1)
Csud6_min_2007<-min(Csud6_2007$Hg1)
Csud6_max_2007<-min(Csud6_2007$Hg1)

Csud7_2007<-(filter(wCS2007, Mese ==7))
Csud7_median_2007<-median(Csud7_2007$Hg1)
Csud7_mean_2007<-mean(Csud7_2007$Hg1)
Csud7_min_2007<-min(Csud7_2007$Hg1)
Csud7_max_2007<-min(Csud7_2007$Hg1)

Csud8_2007<-(filter(wCS2007, Mese == 8))
Csud8_median_2007<-median(Csud8_2007$Hg1)
Csud8_mean_2007<-mean(Csud8_2007$Hg1)
Csud8_min_2007<-min(Csud8_2007$Hg1)
Csud8_max_2007<-min(Csud8_2007$Hg1)

Csud9_2007<-(filter(wCS2007, Mese == 9))
Csud9_median_2007<-median(Csud9_2007$Hg1)
Csud9_mean_2007<-mean(Csud9_2007$Hg1)
Csud9_min_2007<-min(Csud9_2007$Hg1)
Csud9_max_2007<-min(Csud9_2007$Hg1)

Csud10_2007<-(filter(wCS2007, Mese == 10))
Csud10_median_2007<-median(Csud10_2007$Hg1)
Csud10_mean_2007<-mean(Csud10_2007$Hg1)
Csud10_min_2007<-min(Csud10_2007$Hg1)
Csud10_max_2007<-min(Csud10_2007$Hg1)

Csud11_2007<-(filter(wCS2007, Mese == 11))
Csud11_median_2007<-median(Csud11_2007$Hg1)
Csud11_mean_2007<-mean(Csud11_2007$Hg1)
Csud11_min_2007<-min(Csud11_2007$Hg1)
Csud11_max_2007<-min(Csud11_2007$Hg1)

Csud12_2007<-(filter(wCS2007, Mese == 12))
Csud12_median_2007<-median(Csud12_2007$Hg1)
Csud12_mean_2007<-mean(Csud12_2007$Hg1)
Csud12_min_2007<-min(Csud12_2007$Hg1)
Csud12_max_2007<-min(Csud12_2007$Hg1)


Csuds_median_2007<-c(Csud1_median_2007, Csud2_median_2007, Csud3_median_2007,Csud4_median_2007,
				  Csud5_median_2007,Csud6_median_2007,  Csud7_median_2007,Csud8_median_2007,Csud9_median_2007,
				  Csud10_median_2007,Csud11_median_2007,Csud12_median_2007)		  
				  
Csuds_mean_2007<-c(Csud1_mean_2007, Csud2_mean_2007,Csud3_mean_2007,Csud4_mean_2007,
				  Csud5_mean_2007,Csud6_mean_2007, Csud7_mean_2007,Csud8_mean_2007,Csud9_mean_2007,
				  Csud10_mean_2007,Csud11_mean_2007,Csud12_mean_2007)
				  				  
Csuds_min_2007<-c(Csud1_min_2007, Csud2_min_2007,Csud3_min_2007,Csud4_min_2007,
				  Csud5_min_2007,Csud6_min_2007, Csud7_min_2007,Csud8_min_2007,Csud9_min_2007,
				  Csud10_min_2007,Csud11_min_2007,Csud12_min_2007)		  
				  				  
Csuds_max_2007<-c(Csud1_max_2007, Csud2_max_2007,Csud3_max_2007,Csud4_max_2007,
				  Csud5_max_2007,Csud6_max_2007, Csud7_max_2007,Csud8_max_2007,Csud9_max_2007,
				  Csud10_max_2007,Csud11_max_2007,Csud12_max_2007)
				  		  				  

Csud1_2008		<-(filter(wCS2008, Mese == 1))
Csud1_median_2008 <-median(Csud1_2008$Hg1)
Csud1_mean_2008   <-mean(Csud1_2008$Hg1)
Csud1_min_2008    <-min(Csud1_2008$Hg1)
Csud1_max_2008    <-min(Csud1_2008$Hg1)

Csud2_2008<-(filter(wCS2008, Mese == 2))
Csud2_median_2008<-median(Csud2_2008$Hg1)
Csud2_mean_2008<-mean(Csud2_2008$Hg1)
Csud2_min_2008<-min(Csud2_2008$Hg1)
Csud2_max_2008<-min(Csud2_2008$Hg1)

Csud3<-(filter(wCS2008, Mese == 3))
Csud3_median_2008<-median(Csud3_2008$Hg1)
Csud3_mean_2008<-mean(Csud3_2008$Hg1)
Csud3_min_2008<-min(Csud3_2008$Hg1)
Csud3_max_2008<-min(Csud3_2008$Hg1)

Csud4_2008<-(filter(wCS2008, Mese == 4))
Csud4_median_2008<-median(Csud4_2008$Hg1)
Csud4_mean_2008<-mean(Csud4_2008$Hg1)
Csud4_min_2008<-min(Csud4_2008$Hg1)
Csud4_max_2008<-min(Csud4_2008$Hg1)

Csud5_2008<-(filter(wCS2008, Mese == 5))
Csud5_median_2008<-median(Csud5_2008$Hg1)
Csud5_mean_2008<-mean(Csud5_2008$Hg1)
Csud5_min_2008<-min(Csud5_2008$Hg1)
Csud5_max_2008<-min(Csud5_2008$Hg1)

Csud6_2008<-(filter(wCS2008, Mese == 6))
Csud6_median_2008<-median(Csud6_2008$Hg1)
Csud6_mean_2008<-mean(Csud6_2008$Hg1)
Csud6_min_2008<-min(Csud6_2008$Hg1)
Csud6_max_2008<-min(Csud6_2008$Hg1)

Csud7_2008<-(filter(wCS2008, Mese ==7))
Csud7_median_2008<-median(Csud7_2008$Hg1)
Csud7_mean_2008<-mean(Csud7_2008$Hg1)
Csud7_min_2008<-min(Csud7_2008$Hg1)
Csud7_max_2008<-min(Csud7_2008$Hg1)

Csud8_2008<-(filter(wCS2008, Mese == 8))
Csud8_median_2008<-median(Csud8_2008$Hg1)
Csud8_mean_2008<-mean(Csud8_2008$Hg1)
Csud8_min_2008<-min(Csud8_2008$Hg1)
Csud8_max_2008<-min(Csud8_2008$Hg1)

Csud9_2008<-(filter(wCS2008, Mese == 9))
Csud9_median_2008<-median(Csud9_2008$Hg1)
Csud9_mean_2008<-mean(Csud9_2008$Hg1)
Csud9_min_2008<-min(Csud9_2008$Hg1)
Csud9_max_2008<-min(Csud9_2008$Hg1)

Csud10_2008<-(filter(wCS2008, Mese == 10))
Csud10_median_2008<-median(Csud10_2008$Hg1)
Csud10_mean_2008<-mean(Csud10_2008$Hg1)
Csud10_min_2008<-min(Csud10_2008$Hg1)
Csud10_max_2008<-min(Csud10_2008$Hg1)

Csud11_2008<-(filter(wCS2008, Mese == 11))
Csud11_median_2008<-median(Csud11_2008$Hg1)
Csud11_mean_2008<-mean(Csud11_2008$Hg1)
Csud11_min_2008<-min(Csud11_2008$Hg1)
Csud11_max_2008<-min(Csud11_2008$Hg1)

Csud12_2008<-(filter(wCS2008, Mese == 12))
Csud12_median_2008<-median(Csud12_2008$Hg1)
Csud12_mean_2008<-mean(Csud12_2008$Hg1)
Csud12_min_2008<-min(Csud12_2008$Hg1)
Csud12_max_2008<-min(Csud12_2008$Hg1)


Csuds_median_2008<-c(Csud1_median_2008, Csud2_median_2008, Csud3_median_2008,Csud4_median_2008,
				  Csud5_median_2008,Csud6_median_2008,  Csud7_median_2008,Csud8_median_2008,Csud9_median_2008,
				  Csud10_median_2008,Csud11_median_2008,Csud12_median_2008)		  
				  
Csuds_mean_2008<-c(Csud1_mean_2008, Csud2_mean_2008,Csud3_mean_2008,Csud4_mean_2008,
				  Csud5_mean_2008,Csud6_mean_2008, Csud7_mean_2008,Csud8_mean_2008,Csud9_mean_2008,
				  Csud10_mean_2008,Csud11_mean_2008,Csud12_mean_2008)
				  				  
Csuds_min_2008<-c(Csud1_min_2008, Csud2_min_2008,Csud3_min_2008,Csud4_min_2008,
				  Csud5_min_2008,Csud6_min_2008, Csud7_min_2008,Csud8_min_2008,Csud9_min_2008,
				  Csud10_min_2008,Csud11_min_2008,Csud12_min_2008)		  
				  				  
Csuds_max_2008<-c(Csud1_max_2008, Csud2_max_2008,Csud3_max_2008,Csud4_max_2008,
				  Csud5_max_2008,Csud6_max_2008, Csud7_max_2008,Csud8_max_2008,Csud9_max_2008,
				  Csud10_max_2008,Csud11_max_2008,Csud12_max_2008)


mediane_CSUD_ym<-C(Csuds_median_2001,Csuds_median_2002,Csuds_median_2003,Csuds_median_2004,
					 Csuds_median_2005,Csuds_median_2006, Csuds_median_2007, Csuds_median_2008)				  
				  
medie_CSUD_ym<-C(Csuds_mean_2001,Csuds_mean_2002,Csuds_mean_2003,Csuds_mean_2004,
					 Csuds_mean_2005,Csuds_mean_2006, Csuds_mean_2007, Csuds_mean_2008)		
				  
min_CSUD_ym<-C(Csuds_min_2001,Csuds_min_2002,Csuds_min_2003,Csuds_min_2004,
					 Csuds_min_2005,Csuds_min_2006, Csuds_min_2007, Csuds_min_2008)		
		  
max_CSUD_ym<-C(Csuds_max_2001,Csuds_max_2002,Csuds_max_2003,Csuds_max_2004,
					 Csuds_max_2005,Csuds_max_2006, Csuds_max_2007, Csuds_max_2008)		

CSUD_all<- data.frame(mediane_CSUD_ym,medie_CSUD_ym,min_CSUD_ym,max_CSUD_ym)					 
write.table(CSUD_all, file='Mela_CSUD.txt)					 