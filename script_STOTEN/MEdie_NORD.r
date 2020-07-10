library(dplyr)
wN2002<-filter(Water_nord_df, Anno==2002)
wN2003<-filter(Water_nord_df, Anno==2003)
wN2004<-filter(Water_nord_df, Anno==2004)
wN2005<-filter(Water_nord_df, Anno==2005)
wN2006<-filter(Water_nord_df, Anno==2006)
wN2007<-filter(Water_nord_df, Anno==2007)
wN2008<-filter(Water_nord_df, Anno==2008)

(Water_nord_df$Anno==2006)

nonord1_2002		<-(filter(wN2002, Mese == 1))
nonord1_median_2002 <-median(nonord1_2002$Hg1)
nonord1_mean_2002   <-mean(nonord1_2002$Hg1)
nonord1_min_2002    <-min(nonord1_2002$Hg1)
nonord1_max_2002    <-max(nonord1_2002$Hg1)

nonord2_2002<-(filter(wN2002, Mese == 2))
nonord2_median_2002<-median(nonord2_2002$Hg1)
nonord2_mean_2002<-mean(nonord2_2002$Hg1)
nonord2_min_2002<-min(nonord2_2002$Hg1)
nonord2_max_2002<-max(nonord2_2002$Hg1)

nonord3_2002<-NA
nonord3_median_2002<-NA
nonord3_mean_2002<-NA
nonord3_min_2002<-NA
nonord3_max_2002<-NA

nonord4_2002<-(filter(wN2002, Mese == 4))
nonord4_median_2002<-median(nonord4_2002$Hg1)
nonord4_mean_2002<-mean(nonord4_2002$Hg1)
nonord4_min_2002<-min(nonord4_2002$Hg1)
nonord4_max_2002<-max(nonord4_2002$Hg1)

nonord5_2002<-(filter(wN2002, Mese == 5))
nonord5_median_2002<-median(nonord5_2002$Hg1)
nonord5_mean_2002<-mean(nonord5_2002$Hg1)
nonord5_min_2002<-min(nonord5_2002$Hg1)
nonord5_max_2002<-max(nonord5_2002$Hg1)

nonord6_2002<-(filter(wN2002, Mese == 6))
nonord6_median_2002<-median(nonord6_2002$Hg1)
nonord6_mean_2002<-mean(nonord6_2002$Hg1)
nonord6_min_2002<-min(nonord6_2002$Hg1)
nonord6_max_2002<-max(nonord6_2002$Hg1)

nonord7_2002<-(filter(wN2002, Mese ==7))
nonord7_median_2002<-median(nonord7_2002$Hg1)
nonord7_mean_2002<-mean(nonord7_2002$Hg1)
nonord7_min_2002<-min(nonord7_2002$Hg1)
nonord7_max_2002<-max(nonord7_2002$Hg1)

nonord8_2002<-(filter(wN2002, Mese == 8))
nonord8_median_2002<-median(nonord8_2002$Hg1)
nonord8_mean_2002<-mean(nonord8_2002$Hg1)
nonord8_min_2002<-min(nonord8_2002$Hg1)
nonord8_max_2002<-max(nonord8_2002$Hg1)

nonord9_2002<-NA
nonord9_median_2002<-NA
nonord9_mean_2002<-NA
nonord9_min_2002<-NA
nonord9_max_2002<-NA

nonord10_2002<-(filter(wN2002, Mese == 10))
nonord10_median_2002<-median(nonord10_2002$Hg1)
nonord10_mean_2002<-mean(nonord10_2002$Hg1)
nonord10_min_2002<-min(nonord10_2002$Hg1)
nonord10_max_2002<-max(nonord10_2002$Hg1)

nonord11_2002<-(filter(wN2002, Mese == 11))
nonord11_median_2002<-median(nonord11_2002$Hg1)
nonord11_mean_2002<-mean(nonord11_2002$Hg1)
nonord11_min_2002<-min(nonord11_2002$Hg1)
nonord11_max_2002<-max(nonord11_2002$Hg1)

nonord12_2002<-(filter(wN2002, Mese == 12))
nonord12_median_2002<-median(nonord12_2002$Hg1)
nonord12_mean_2002<-mean(nonord12_2002$Hg1)
nonord12_min_2002<-min(nonord12_2002$Hg1)
nonord12_max_2002<-max(nonord12_2002$Hg1)

nonords_median_2002<-c(nonord1_median_2002, nonord2_median_2002, nonord3_median_2002,nonord4_median_2002,
				  nonord5_median_2002,nonord6_median_2002,  nonord7_median_2002,nonord8_median_2002,nonord9_median_2002,
				  nonord10_median_2002,nonord11_median_2002,nonord12_median_2002)		  
				  
nonords_mean_2002<-c(nonord1_mean_2002, nonord2_mean_2002,nonord3_mean_2002,nonord4_mean_2002,
				  nonord5_mean_2002,nonord6_mean_2002, nonord7_mean_2002,nonord8_mean_2002,nonord9_mean_2002,
				  nonord10_mean_2002,nonord11_mean_2002,nonord12_mean_2002)
				  				  
nonords_min_2002<-c(nonord1_min_2002, nonord2_min_2002,nonord3_min_2002,nonord4_min_2002,
				  nonord5_min_2002,nonord6_min_2002, nonord7_min_2002,nonord8_min_2002,nonord9_min_2002,
				  nonord10_min_2002,nonord11_min_2002,nonord12_min_2002)		  
				  				  
nonords_max_2002<-c(nonord1_max_2002, nonord2_max_2002,nonord3_max_2002,nonord4_max_2002,
				  nonord5_max_2002,nonord6_max_2002, nonord7_max_2002,nonord8_max_2002,nonord9_max_2002,
				  nonord10_max_2002,nonord11_max_2002,nonord12_max_2002)
				  
nonord1_2003		<-(filter(wN2003, Mese == 1))
nonord1_median_2003 <-median(nonord1_2003$Hg1)
nonord1_mean_2003   <-mean(nonord1_2003$Hg1)
nonord1_min_2003    <-min(nonord1_2003$Hg1)
nonord1_max_2003    <-min(nonord1_2003$Hg1)

nonord2_2003<-(filter(wN2003, Mese == 2))
nonord2_median_2003<-median(nonord2_2003$Hg1)
nonord2_mean_2003<-mean(nonord2_2003$Hg1)
nonord2_min_2003<-min(nonord2_2003$Hg1)
nonord2_max_2003<-max(nonord2_2003$Hg1)

nonord3_2003<-(filter(wN2003, Mese == 3))
nonord3_median_2003<-median(nonord3_2003$Hg1)
nonord3_mean_2003<-mean(nonord3_2003$Hg1)
nonord3_min_2003<-min(nonord3_2003$Hg1)
nonord3_max_2003<-max(nonord3_2003$Hg1)

nonord4_2003<-(filter(wN2003, Mese == 4))
nonord4_median_2003<-median(nonord4_2003$Hg1)
nonord4_mean_2003<-mean(nonord4_2003$Hg1)
nonord4_min_2003<-min(nonord4_2003$Hg1)
nonord4_max_2003<-max(nonord4_2003$Hg1)

nonord5_2003<-(filter(wN2003, Mese == 5))
nonord5_median_2003<-median(nonord5_2003$Hg1)
nonord5_mean_2003<-mean(nonord5_2003$Hg1)
nonord5_min_2003<-min(nonord5_2003$Hg1)
nonord5_max_2003<-max(nonord5_2003$Hg1)

nonord6_2003<-(filter(wN2003, Mese == 6))
nonord6_median_2003<-median(nonord6_2003$Hg1)
nonord6_mean_2003<-mean(nonord6_2003$Hg1)
nonord6_min_2003<-min(nonord6_2003$Hg1)
nonord6_max_2003<-max(nonord6_2003$Hg1)

nonord7_2003<-(filter(wN2003, Mese ==7))
nonord7_median_2003<-median(nonord7_2003$Hg1)
nonord7_mean_2003<-mean(nonord7_2003$Hg1)
nonord7_min_2003<-min(nonord7_2003$Hg1)
nonord7_max_2003<-max(nonord7_2003$Hg1)

nonord8_2003<-(filter(wN2003, Mese == 8))
nonord8_median_2003<-median(nonord8_2003$Hg1)
nonord8_mean_2003<-mean(nonord8_2003$Hg1)
nonord8_min_2003<-min(nonord8_2003$Hg1)
nonord8_max_2003<-max(nonord8_2003$Hg1)

nonord9_2003<-(filter(wN2003, Mese == 9))
nonord9_median_2003<-median(nonord9_2003$Hg1)
nonord9_mean_2003<-mean(nonord9_2003$Hg1)
nonord9_min_2003<-min(nonord9_2003$Hg1)
nonord9_max_2003<-max(nonord9_2003$Hg1)

nonord10_2003<-(filter(wN2003, Mese == 10))
nonord10_median_2003<-median(nonord10_2003$Hg1)
nonord10_mean_2003<-mean(nonord10_2003$Hg1)
nonord10_min_2003<-min(nonord10_2003$Hg1)
nonord10_max_2003<-max(nonord10_2003$Hg1)

nonord11_2003<-(filter(wN2003, Mese == 11))
nonord11_median_2003<-median(nonord11_2003$Hg1)
nonord11_mean_2003<-mean(nonord11_2003$Hg1)
nonord11_min_2003<-min(nonord11_2003$Hg1)
nonord11_max_2003<-max(nonord11_2003$Hg1)

nonord12_2003<-(filter(wN2003, Mese == 12))
nonord12_median_2003<-median(nonord12_2003$Hg1)
nonord12_mean_2003<-mean(nonord12_2003$Hg1)
nonord12_min_2003<-min(nonord12_2003$Hg1)
nonord12_max_2003<-max(nonord12_2003$Hg1)

nonords_median_2003<-c(nonord1_median_2003, nonord2_median_2003, nonord3_median_2003,nonord4_median_2003,
				  nonord5_median_2003,nonord6_median_2003,  nonord7_median_2003,nonord8_median_2003,nonord9_median_2003,
				  nonord10_median_2003,nonord11_median_2003,nonord12_median_2003)		  
				  
nonords_mean_2003<-c(nonord1_mean_2003, nonord2_mean_2003,nonord3_mean_2003,nonord4_mean_2003,
				  nonord5_mean_2003,nonord6_mean_2003, nonord7_mean_2003,nonord8_mean_2003,nonord9_mean_2003,
				  nonord10_mean_2003,nonord11_mean_2003,nonord12_mean_2003)
				  				  
nonords_min_2003<-c(nonord1_min_2003, nonord2_min_2003,nonord3_min_2003,nonord4_min_2003,
				  nonord5_min_2003,nonord6_min_2003, nonord7_min_2003,nonord8_min_2003,nonord9_min_2003,
				  nonord10_min_2003,nonord11_min_2003,nonord12_min_2003)		  
				  				  
nonords_max_2003<-c(nonord1_max_2003, nonord2_max_2003,nonord3_max_2003,nonord4_max_2003,
				  nonord5_max_2003,nonord6_max_2003, nonord7_max_2003,nonord8_max_2003,nonord9_max_2003,
				  nonord10_max_2003,nonord11_max_2003,nonord12_max_2003)
	
nonord1_2004		<-NA
nonord1_median_2004 <-NA
nonord1_mean_2004   <-NA
nonord1_min_2004    <-NA
nonord1_max_2004    <-NA

nonord2_2004<-(filter(wN2004, Mese == 2))
nonord2_median_2004<-median(nonord2_2004$Hg1)
nonord2_mean_2004<-mean(nonord2_2004$Hg1)
nonord2_min_2004<-min(nonord2_2004$Hg1)
nonord2_max_2004<-min(nonord2_2004$Hg1)

nonord3_2004<-NA
nonord3_median_2004<-NA
nonord3_mean_2004<-NA
nonord3_min_2004<-NA
nonord3_max_2004<-NA

nonord4_2004<-(filter(wN2004, Mese == 4))
nonord4_median_2004<-median(nonord4_2004$Hg1)
nonord4_mean_2004<-mean(nonord4_2004$Hg1)
nonord4_min_2004<-min(nonord4_2004$Hg1)
nonord4_max_2004<-min(nonord4_2004$Hg1)

nonord5_2004<-NA
nonord5_median_2004<-NA
nonord5_mean_2004<-NA
nonord5_min_2004<-NA
nonord5_max_2004<-NA

nonord6_2004<-(filter(wN2004, Mese == 6))
nonord6_median_2004<-median(nonord6_2004$Hg1)
nonord6_mean_2004<-mean(nonord6_2004$Hg1)
nonord6_min_2004<-min(nonord6_2004$Hg1)
nonord6_max_2004<-min(nonord6_2004$Hg1)

nonord7_2004<-NA;nonord7_median_2004<-NA
nonord7_mean_2004<-NA;nonord7_min_2004<-NA;nonord7_max_2004<-NA

nonord8_2004<-(filter(wN2004, Mese == 8))
nonord8_median_2004<-median(nonord8_2004$Hg1)
nonord8_mean_2004<-mean(nonord8_2004$Hg1)
nonord8_min_2004<-min(nonord8_2004$Hg1)
nonord8_max_2004<-min(nonord8_2004$Hg1)

nonord9_2004<-NA
nonord9_median_2004<-NA
nonord9_mean_2004<-NA
nonord9_min_2004<-NA
nonord9_max_2004<-NA

nonord10_2004<-NA
nonord10_median_2004<-NA
nonord10_mean_2004<-NA
nonord10_min_2004<-NA
nonord10_max_2004<-NA

nonord11_2004<-(filter(wN2004, Mese == 11))
nonord11_median_2004<-median(nonord11_2004$Hg1)
nonord11_mean_2004<-mean(nonord11_2004$Hg1)
nonord11_min_2004<-min(nonord11_2004$Hg1)
nonord11_max_2004<-min(nonord11_2004$Hg1)

nonord12_2004<-NA
nonord12_median_2004<-NA
nonord12_mean_2004<-NA
nonord12_min_2004<-NA
nonord12_max_2004<-NA

nonords_median_2004<-c(nonord1_median_2004, nonord2_median_2004, nonord3_median_2004,nonord4_median_2004,
				  nonord5_median_2004,nonord6_median_2004,  nonord7_median_2004,nonord8_median_2004,nonord9_median_2004,
				  nonord10_median_2004,nonord11_median_2004,nonord12_median_2004)		  
				  
nonords_mean_2004<-c(nonord1_mean_2004, nonord2_mean_2004,nonord3_mean_2004,nonord4_mean_2004,
				  nonord5_mean_2004,nonord6_mean_2004, nonord7_mean_2004,nonord8_mean_2004,nonord9_mean_2004,
				  nonord10_mean_2004,nonord11_mean_2004,nonord12_mean_2004)
				  				  
nonords_min_2004<-c(nonord1_min_2004, nonord2_min_2004,nonord3_min_2004,nonord4_min_2004,
				  nonord5_min_2004,nonord6_min_2004, nonord7_min_2004,nonord8_min_2004,nonord9_min_2004,
				  nonord10_min_2004,nonord11_min_2004,nonord12_min_2004)		  
				  				  
nonords_max_2004<-c(nonord1_max_2004, nonord2_max_2004,nonord3_max_2004,nonord4_max_2004,
				  nonord5_max_2004,nonord6_max_2004, nonord7_max_2004,nonord8_max_2004,nonord9_max_2004,
				  nonord10_max_2004,nonord11_max_2004,nonord12_max_2004)
				  
nonord1_2005		<-NA;nonord1_median_2005 <-NA;nonord1_mean_2005   <-NA
nonord1_min_2005<-NA;nonord1_max_2005    <-NA

nonord2_2005<-(filter(wN2005, Mese == 2))
nonord2_median_2005<-median(nonord2_2005$Hg1)
nonord2_mean_2005<-mean(nonord2_2005$Hg1)
nonord2_min_2005<-min(nonord2_2005$Hg1)
nonord2_max_2005<-min(nonord2_2005$Hg1)

nonord3_2005<-NA
nonord3_median_2005<-NA
nonord3_mean_2005<-NA
nonord3_min_2005<-NA
nonord3_max_2005<-NA

nonord4_2005<-(filter(wN2005, Mese == 4))
nonord4_median_2005<-median(nonord4_2005$Hg1)
nonord4_mean_2005<-mean(nonord4_2005$Hg1)
nonord4_min_2005<-min(nonord4_2005$Hg1)
nonord4_max_2005<-max(nonord4_2005$Hg1)

nonord5_2005<-NA
nonord5_median_2005<-NA
nonord5_mean_2005<-NA
nonord5_min_2005<-NA
nonord5_max_2005<-NA

nonord6_2005<-(filter(wN2005, Mese == 6))
nonord6_median_2005<-median(nonord6_2005$Hg1)
nonord6_mean_2005<-mean(nonord6_2005$Hg1)
nonord6_min_2005<-min(nonord6_2005$Hg1)
nonord6_max_2005<-max(nonord6_2005$Hg1)

nonord7_2005<-NA
nonord7_median_2005<-NA
nonord7_mean_2005<-NA
nonord7_min_2005<-NA
nonord7_max_2005<-NA

nonord8_2005<-(filter(wN2005, Mese == 8))
nonord8_median_2005<-median(nonord8_2005$Hg1)
nonord8_mean_2005<-mean(nonord8_2005$Hg1)
nonord8_min_2005<-min(nonord8_2005$Hg1)
nonord8_max_2005<-min(nonord8_2005$Hg1)

nonord9_2005<-NA;nonord9_median_2005<-NA
nonord9_mean_2005<-NA;nonord9_min_2005<-NA;nonord9_max_2005<-NA

nonord10_2005<-(filter(wN2005, Mese == 10))
nonord10_median_2005<-median(nonord10_2005$Hg1)
nonord10_mean_2005<-mean(nonord10_2005$Hg1)
nonord10_min_2005<-min(nonord10_2005$Hg1)
nonord10_max_2005<-max(nonord10_2005$Hg1)

nonord11_2005<-NA
nonord11_median_2005<-NA
nonord11_mean_2005<-NA
nonord11_min_2005<-NA
nonord11_max_2005<-NA

nonord12_2005<-NA
nonord12_median_2005<-NA
nonord12_mean_2005<-NA
nonord12_min_2005<-NA
nonord12_max_2005<-NA

nonords_median_2005<-c(nonord1_median_2005, nonord2_median_2005, nonord3_median_2005,nonord4_median_2005,
				  nonord5_median_2005,nonord6_median_2005,  nonord7_median_2005,nonord8_median_2005,nonord9_median_2005,
				  nonord10_median_2005,nonord11_median_2005,nonord12_median_2005)		  
				  
nonords_mean_2005<-c(nonord1_mean_2005, nonord2_mean_2005,nonord3_mean_2005,nonord4_mean_2005,
				  nonord5_mean_2005,nonord6_mean_2005, nonord7_mean_2005,nonord8_mean_2005,nonord9_mean_2005,
				  nonord10_mean_2005,nonord11_mean_2005,nonord12_mean_2005)
				  				  
nonords_min_2005<-c(nonord1_min_2005, nonord2_min_2005,nonord3_min_2005,nonord4_min_2005,
				  nonord5_min_2005,nonord6_min_2005, nonord7_min_2005,nonord8_min_2005,nonord9_min_2005,
				  nonord10_min_2005,nonord11_min_2005,nonord12_min_2005)		  
				  				  
nonords_max_2005<-c(nonord1_max_2005, nonord2_max_2005,nonord3_max_2005,nonord4_max_2005,
				  nonord5_max_2005,nonord6_max_2005, nonord7_max_2005,nonord8_max_2005,nonord9_max_2005,
				  nonord10_max_2005,nonord11_max_2005,nonord12_max_2005)
				  
nonord1_2006		<-NA;nonord1_median_2006 <-NA
nonord1_mean_2006   <-NA;nonord1_min_2006    <-NA; nonord1_max_2006    <-NA

nonord2_2006<-NA;nonord2_median_2006<-NA;nonord2_mean_2006<-NA
nonord2_min_2006<-NA;nonord2_max_2006<-NA

nonord3_2006<-NA;nonord3_median_2006<-NA
nonord3_mean_2006<-NA;nonord3_min_2006<-NA;nonord3_max_2006<-NA

nonord4_2006<-NA;nonord4_median_2006<-NA
nonord4_mean_2006<-NA;nonord4_min_2006<-NA;nonord4_max_2006<-NA

nonord5_2006<-NA;nonord5_median_2006<-NA
nonord5_mean_2006<-NA;nonord5_min_2006<-NA;nonord5_max_2006<-NA

nonord6_2006<-NA;nonord6_median_2006<-NA
nonord6_mean_2006<-NA;nonord6_min_2006<-NA;nonord6_max_2006<-NA

nonord7_2006<-NA;nonord7_median_2006<-NA
nonord7_mean_2006<-NA;nonord7_min_2006<-NA;nonord7_max_2006<-NA

nonord8_2006<-NA;nonord8_median_2006<-NA
nonord8_mean_2006<-NA;nonord8_min_2006<-NA;nonord8_max_2006<-NA

nonord9_2006<-NA;nonord9_median_2006<-NA;nonord9_mean_2006<-NA
nonord9_min_2006<-NA;nonord9_max_2006<-NA

nonord10_2006<-NA;nonord10_median_2006<-NA
nonord10_mean_2006<-NA;nonord10_min_2006<-NA;nonord10_max_2006<-NA

nonord11_2006<-NA;nonord11_median_2006<-NA;nonord11_mean_2006<-NA
nonord11_min_2006<-NA;nonord11_max_2006<-NA

nonord12_2006<-NA;nonord12_median_2006<-NA;nonord12_mean_2006<-NA
nonord12_min_2006<-NA;nonord12_max_2006<-NA

nonords_median_2006<-c(nonord1_median_2006, nonord2_median_2006, nonord3_median_2006,nonord4_median_2006,
				  nonord5_median_2006,nonord6_median_2006,  nonord7_median_2006,nonord8_median_2006,nonord9_median_2006,
				  nonord10_median_2006,nonord11_median_2006,nonord12_median_2006)		  
				  
nonords_mean_2006<-c(nonord1_mean_2006, nonord2_mean_2006,nonord3_mean_2006,nonord4_mean_2006,
				  nonord5_mean_2006,nonord6_mean_2006, nonord7_mean_2006,nonord8_mean_2006,nonord9_mean_2006,
				  nonord10_mean_2006,nonord11_mean_2006,nonord12_mean_2006)
				  				  
nonords_min_2006<-c(nonord1_min_2006, nonord2_min_2006,nonord3_min_2006,nonord4_min_2006,
				  nonord5_min_2006,nonord6_min_2006, nonord7_min_2006,nonord8_min_2006,nonord9_min_2006,
				  nonord10_min_2006,nonord11_min_2006,nonord12_min_2006)		  
				  				  
nonords_max_2006<-c(nonord1_max_2006, nonord2_max_2006,nonord3_max_2006,nonord4_max_2006,
				  nonord5_max_2006,nonord6_max_2006, nonord7_max_2006,nonord8_max_2006,nonord9_max_2006,
				  nonord10_max_2006,nonord11_max_2006,nonord12_max_2006)
				  
nonord1_2007		<-NA
nonord1_median_2007 <-NA
nonord1_mean_2007   <-NA
nonord1_min_2007    <-NA
nonord1_max_2007    <-NA

nonord2_2007<-NA;nonord2_median_2007<-NA;nonord2_mean_2007<-NA
nonord2_min_2007<-NA;nonord2_max_2007<-NA

nonord3_2007<-(filter(wN2007, Mese == 3))
nonord3_median_2007<-median(nonord3_2007$Hg1)
nonord3_mean_2007<-mean(nonord3_2007$Hg1)
nonord3_min_2007<-min(nonord3_2007$Hg1)
nonord3_max_2007<-min(nonord3_2007$Hg1)

nonord4_2007<-NA;nonord4_median_2007<-NA;nonord4_mean_2007<-NA
nonord4_min_2007<-NA;nonord4_max_2007<-NA

nonord5_2007<-NA;nonord5_median_2007<-NA
nonord5_mean_2007<-NA;nonord5_min_2007<-NA;nonord5_max_2007<-NA

nonord6_2007<-(filter(wN2007, Mese == 6))
nonord6_median_2007<-median(nonord6_2007$Hg1)
nonord6_mean_2007<-mean(nonord6_2007$Hg1)
nonord6_min_2007<-min(nonord6_2007$Hg1)
nonord6_max_2007<-min(nonord6_2007$Hg1)

nonord7_2007<-NA;nonord7_median_2007<-NA;nonord7_mean_2007<-NA;nonord7_min_2007<-NA;nonord7_max_2007<-NA

nonord8_2007<-NA;nonord8_median_2007<-NA
nonord8_mean_2007<-NA;nonord8_min_2007<-NA;nonord8_max_2007<-NA

nonord9_2007<-(filter(wN2007, Mese == 9))
nonord9_median_2007<-median(nonord9_2007$Hg1)
nonord9_mean_2007<-mean(nonord9_2007$Hg1)
nonord9_min_2007<-min(nonord9_2007$Hg1)
nonord9_max_2007<-min(nonord9_2007$Hg1)

nonord10_2007<-NA;nonord10_median_2007<-NA;nonord10_mean_2007<-NA
nonord10_min_2007<-NA;nonord10_max_2007<-NA

nonord11_2007<-NA;nonord11_median_2007<-NA
nonord11_mean_2007<-NA;nonord11_min_2007<-NA;nonord11_max_2007<-NA

nonord12_2007<-(filter(wN2007, Mese == 12))
nonord12_median_2007<-median(nonord12_2007$Hg1)
nonord12_mean_2007<-mean(nonord12_2007$Hg1)
nonord12_min_2007<-min(nonord12_2007$Hg1)
nonord12_max_2007<-min(nonord12_2007$Hg1)


nonords_median_2007<-c(nonord1_median_2007, nonord2_median_2007, nonord3_median_2007,nonord4_median_2007,
				  nonord5_median_2007,nonord6_median_2007,  nonord7_median_2007,nonord8_median_2007,nonord9_median_2007,
				  nonord10_median_2007,nonord11_median_2007,nonord12_median_2007)		  
				  
nonords_mean_2007<-c(nonord1_mean_2007, nonord2_mean_2007,nonord3_mean_2007,nonord4_mean_2007,
				  nonord5_mean_2007,nonord6_mean_2007, nonord7_mean_2007,nonord8_mean_2007,nonord9_mean_2007,
				  nonord10_mean_2007,nonord11_mean_2007,nonord12_mean_2007)
				  				  
nonords_min_2007<-c(nonord1_min_2007, nonord2_min_2007,nonord3_min_2007,nonord4_min_2007,
				  nonord5_min_2007,nonord6_min_2007, nonord7_min_2007,nonord8_min_2007,nonord9_min_2007,
				  nonord10_min_2007,nonord11_min_2007,nonord12_min_2007)		  
				  				  
nonords_max_2007<-c(nonord1_max_2007, nonord2_max_2007,nonord3_max_2007,nonord4_max_2007,
				  nonord5_max_2007,nonord6_max_2007, nonord7_max_2007,nonord8_max_2007,nonord9_max_2007,
				  nonord10_max_2007,nonord11_max_2007,nonord12_max_2007)
				  		  				  

nonord1_2008		<-NA; nonord1_median_2008 <-NA
nonord1_mean_2008   <-NA;nonord1_min_2008   <-NA;nonord1_max_2008 <-NA

nonord2_2008<-(filter(wN2008, Mese == 2))
nonord2_median_2008<-median(nonord2_2008$Hg1)
nonord2_mean_2008<-mean(nonord2_2008$Hg1)
nonord2_min_2008<-min(nonord2_2008$Hg1)
nonord2_max_2008<-min(nonord2_2008$Hg1)

nonord3_2008<-NA
nonord3_median_2008<-NA
nonord3_mean_2008<-NA
nonord3_min_2008<-NA
nonord3_max_2008<-NA

nonord4_2008<-NA
nonord4_median_2008<-NA
nonord4_mean_2008<-NA
nonord4_min_2008<-NA
nonord4_max_2008<-NA

nonord5_2008<-(filter(wN2008, Mese == 5))
nonord5_median_2008<-median(nonord5_2008$Hg1)
nonord5_mean_2008<-mean(nonord5_2008$Hg1)
nonord5_min_2008<-min(nonord5_2008$Hg1)
nonord5_max_2008<-min(nonord5_2008$Hg1)

nonord6_2008<-NA
nonord6_median_2008<-NA
nonord6_mean_2008<-NA
nonord6_min_2008<-NA
nonord6_max_2008<-NA

nonord7_2008<-NA
nonord7_median_2008<-NA
nonord7_mean_2008<-NA
nonord7_min_2008<-NA
nonord7_max_2008<-NA

nonord8_2008<-(filter(wN2008, Mese == 8))
nonord8_median_2008<-median(nonord8_2008$Hg1)
nonord8_mean_2008<-mean(nonord8_2008$Hg1)
nonord8_min_2008<-min(nonord8_2008$Hg1)
nonord8_max_2008<-min(nonord8_2008$Hg1)

nonord9_2008<-NA
nonord9_median_2008<-NA
nonord9_mean_2008<-NA
nonord9_min_2008<-NA
nonord9_max_2008<-NA

nonord10_2008<-NA
nonord10_median_2008<-NA
nonord10_mean_2008<-NA
nonord10_min_2008<-NA
nonord10_max_2008<-NA

nonord11_2008<-(filter(wN2008, Mese == 11))
nonord11_median_2008<-median(nonord11_2008$Hg1)
nonord11_mean_2008<-mean(nonord11_2008$Hg1)
nonord11_min_2008<-min(nonord11_2008$Hg1)
nonord11_max_2008<-min(nonord11_2008$Hg1)

nonord12_2008<-NA
nonord12_median_2008<-NA
nonord12_mean_2008<-NA
nonord12_min_2008<-NA
nonord12_max_2008<-NA

nonords_median_2008<-c(nonord1_median_2008, nonord2_median_2008, nonord3_median_2008,nonord4_median_2008,
				  nonord5_median_2008,nonord6_median_2008,  nonord7_median_2008,nonord8_median_2008,nonord9_median_2008,
				  nonord10_median_2008,nonord11_median_2008,nonord12_median_2008)		  
				  
nonords_mean_2008<-c(nonord1_mean_2008, nonord2_mean_2008,nonord3_mean_2008,nonord4_mean_2008,
				  nonord5_mean_2008,nonord6_mean_2008, nonord7_mean_2008,nonord8_mean_2008,nonord9_mean_2008,
				  nonord10_mean_2008,nonord11_mean_2008,nonord12_mean_2008)
				  				  
nonords_min_2008<-c(nonord1_min_2008, nonord2_min_2008,nonord3_min_2008,nonord4_min_2008,
				  nonord5_min_2008,nonord6_min_2008, nonord7_min_2008,nonord8_min_2008,nonord9_min_2008,
				  nonord10_min_2008,nonord11_min_2008,nonord12_min_2008)		  
				  				  
nonords_max_2008<-c(nonord1_max_2008, nonord2_max_2008,nonord3_max_2008,nonord4_max_2008,
				  nonord5_max_2008,nonord6_max_2008, nonord7_max_2008,nonord8_max_2008,nonord9_max_2008,
				  nonord10_max_2008,nonord11_max_2008,nonord12_max_2008)


mediane_NORD_ym<-c(nonords_median_2002,nonords_median_2003,nonords_median_2004,
					 nonords_median_2005,nonords_median_2006, nonords_median_2007, nonords_median_2008)				  
				  
medie_NORD_ym<-c(nonords_mean_2002,nonords_mean_2003,nonords_mean_2004,
					 nonords_mean_2005,nonords_mean_2006, nonords_mean_2007, nonords_mean_2008)		
				  
min_NORD_ym<-c(nonords_min_2002,nonords_min_2003,nonords_min_2004,
					 nonords_min_2005,nonords_min_2006, nonords_min_2007, nonords_min_2008)		
		  
max_NORD_ym<-c(nonords_max_2002,nonords_max_2003,nonords_max_2004,
					 nonords_max_2005,nonords_max_2006, nonords_max_2007, nonords_max_2008)						 					 
					 
NORD_all<- data.frame(mediane_NORD_ym,medie_NORD_ym,min_NORD_ym,max_NORD_ym)					 
write.table(NORD_all, file='Mela_nord.txt')


##----- plot water nord
N<-read.table('Mela_nord.txt', header=T)

xx<-seq(1,84);epsilon <- 0.8


plot(rdate1,model_N_mean,type='l', ylim=c(0,60))
par(new=T)
plot(N$medie_NORD_ym, type='b', ylim=c(0,60), xaxt='n')
par(new=T)
plot(N$mediane_NORD_ym, type='p', pch=7, ylim=c(0,60), xaxt='n')
segments(xx,min_NORD_ym,xx,max_NORD_ym, col='#313695', lwd=1.8)
segments(xx-epsilon,min_NORD_ym,xx+epsilon,min_NORD_ym, col='#313695', lwd=1.8)
segments(xx-epsilon,max_NORD_ym,xx+epsilon,max_NORD_ym, col='#313695', lwd=1.8)

str(mediane_NORD_ym)



model_N<-(data.frame(hg$wn1,hg$wn2,hg$wn4))
model_N_mean<-rowMeans(model_N)[1226:1309]
rdate1
