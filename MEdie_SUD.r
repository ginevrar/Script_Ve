
wS2002<-filter(Water_sud_df, Anno==2002)
wS2003<-filter(Water_sud_df, Anno==2003)
wS2004<-filter(Water_sud_df, Anno==2004)
wS2005<-filter(Water_sud_df, Anno==2005)
wS2006<-filter(Water_sud_df, Anno==2006)
wS2007<-filter(Water_sud_df, Anno==2007)
wS2008<-filter(Water_sud_df, Anno==2008)

sud1_2002		<-(filter(wS2002, Mese == 1))
sud1_median_2002 <-median(sud1_2002$Hg1)
sud1_mean_2002   <-mean(sud1_2002$Hg1)
sud1_min_2002    <-min(sud1_2002$Hg1)
sud1_max_2002    <-max(sud1_2002$Hg1)

sud2_2002<-(filter(wS2002, Mese == 2))
sud2_median_2002<-median(sud2_2002$Hg1)
sud2_mean_2002<-mean(sud2_2002$Hg1)
sud2_min_2002<-min(sud2_2002$Hg1)
sud2_max_2002<-max(sud2_2002$Hg1)

sud3_2002<-NA;sud3_median_2002<-NA
sud3_mean_2002<-NA;sud3_min_2002<-NA;sud3_max_2002<-NA

sud4_2002<-(filter(wS2002, Mese == 4))
sud4_median_2002<-median(sud4_2002$Hg1)
sud4_mean_2002<-mean(sud4_2002$Hg1)
sud4_min_2002<-min(sud4_2002$Hg1)
sud4_max_2002<-max(sud4_2002$Hg1)

sud5_2002<-(filter(wS2002, Mese == 5))
sud5_median_2002<-median(sud5_2002$Hg1)
sud5_mean_2002<-mean(sud5_2002$Hg1)
sud5_min_2002<-min(sud5_2002$Hg1)
sud5_max_2002<-max(sud5_2002$Hg1)

sud6_2002<-(filter(wS2002, Mese == 6))
sud6_median_2002<-median(sud6_2002$Hg1)
sud6_mean_2002<-mean(sud6_2002$Hg1)
sud6_min_2002<-min(sud6_2002$Hg1)
sud6_max_2002<-max(sud6_2002$Hg1)

sud7_2002<-(filter(wS2002, Mese ==7))
sud7_median_2002<-median(sud7_2002$Hg1)
sud7_mean_2002<-mean(sud7_2002$Hg1)
sud7_min_2002<-min(sud7_2002$Hg1)
sud7_max_2002<-max(sud7_2002$Hg1)

sud8_2002<-(filter(wS2002, Mese == 8))
sud8_median_2002<-median(sud8_2002$Hg1)
sud8_mean_2002<-mean(sud8_2002$Hg1)
sud8_min_2002<-min(sud8_2002$Hg1)
sud8_max_2002<-max(sud8_2002$Hg1)

sud9_2002<-(filter(wS2002, Mese == 9))
sud9_median_2002<-median(sud9_2002$Hg1)
sud9_mean_2002<-mean(sud9_2002$Hg1)
sud9_min_2002<-min(sud9_2002$Hg1)
sud9_max_2002<-max(sud9_2002$Hg1)

sud10_2002<-(filter(wS2002, Mese == 10))
sud10_median_2002<-median(sud10_2002$Hg1)
sud10_mean_2002<-mean(sud10_2002$Hg1)
sud10_min_2002<-min(sud10_2002$Hg1)
sud10_max_2002<-max(sud10_2002$Hg1)

sud11_2002<-(filter(wS2002, Mese == 11))
sud11_median_2002<-median(sud11_2002$Hg1)
sud11_mean_2002<-mean(sud11_2002$Hg1)
sud11_min_2002<-min(sud11_2002$Hg1)
sud11_max_2002<-max(sud11_2002$Hg1)

sud12_2002<-(filter(wS2002, Mese == 12))
sud12_median_2002<-median(sud12_2002$Hg1)
sud12_mean_2002<-mean(sud12_2002$Hg1)
sud12_min_2002<-min(sud12_2002$Hg1)
sud12_max_2002<-max(sud12_2002$Hg1)

suds_median_2002<-c(sud1_median_2002, sud2_median_2002, sud3_median_2002,sud4_median_2002,
				  sud5_median_2002,sud6_median_2002,  sud7_median_2002,sud8_median_2002,sud9_median_2002,
				  sud10_median_2002,sud11_median_2002,sud12_median_2002)		  
				  
suds_mean_2002<-c(sud1_mean_2002, sud2_mean_2002,sud3_mean_2002,sud4_mean_2002,
				  sud5_mean_2002,sud6_mean_2002, sud7_mean_2002,sud8_mean_2002,sud9_mean_2002,
				  sud10_mean_2002,sud11_mean_2002,sud12_mean_2002)
				  				  
suds_min_2002<-c(sud1_min_2002, sud2_min_2002,sud3_min_2002,sud4_min_2002,
				  sud5_min_2002,sud6_min_2002, sud7_min_2002,sud8_min_2002,sud9_min_2002,
				  sud10_min_2002,sud11_min_2002,sud12_min_2002)		  
				  				  
suds_max_2002<-c(sud1_max_2002, sud2_max_2002,sud3_max_2002,sud4_max_2002,
				  sud5_max_2002,sud6_max_2002, sud7_max_2002,sud8_max_2002,sud9_max_2002,
				  sud10_max_2002,sud11_max_2002,sud12_max_2002)
				  
sud1_2003		<-(filter(wS2003, Mese == 1))
sud1_median_2003 <-median(sud1_2003$Hg1)
sud1_mean_2003   <-mean(sud1_2003$Hg1)
sud1_min_2003    <-min(sud1_2003$Hg1)
sud1_max_2003    <-max(sud1_2003$Hg1)

sud2_2003<-(filter(wS2003, Mese == 2))
sud2_median_2003<-median(sud2_2003$Hg1)
sud2_mean_2003<-mean(sud2_2003$Hg1)
sud2_min_2003<-min(sud2_2003$Hg1)
sud2_max_2003<-max(sud2_2003$Hg1)

sud3<-NA;sud3_median_2003<-NA;sud3_mean_2003<-NA
sud3_min_2003<-NA;sud3_max_2003<-NA

sud4_2003<-(filter(wS2003, Mese == 4))
sud4_median_2003<-median(sud4_2003$Hg1)
sud4_mean_2003<-mean(sud4_2003$Hg1)
sud4_min_2003<-min(sud4_2003$Hg1)
sud4_max_2003<-max(sud4_2003$Hg1)

sud5_2003<-(filter(wS2003, Mese == 5))
sud5_median_2003<-median(sud5_2003$Hg1)
sud5_mean_2003<-mean(sud5_2003$Hg1)
sud5_min_2003<-min(sud5_2003$Hg1)
sud5_max_2003<-max(sud5_2003$Hg1)

sud6_2003<-(filter(wS2003, Mese == 6))
sud6_median_2003<-median(sud6_2003$Hg1)
sud6_mean_2003<-mean(sud6_2003$Hg1)
sud6_min_2003<-min(sud6_2003$Hg1)
sud6_max_2003<-max(sud6_2003$Hg1)

sud7_2003<-(filter(wS2003, Mese ==7))
sud7_median_2003<-median(sud7_2003$Hg1)
sud7_mean_2003<-mean(sud7_2003$Hg1)
sud7_min_2003<-min(sud7_2003$Hg1)
sud7_max_2003<-max(sud7_2003$Hg1)

sud8_2003<-(filter(wS2003, Mese == 8))
sud8_median_2003<-median(sud8_2003$Hg1)
sud8_mean_2003<-mean(sud8_2003$Hg1)
sud8_min_2003<-min(sud8_2003$Hg1)
sud8_max_2003<-max(sud8_2003$Hg1)

sud9_2003<-(filter(wS2003, Mese == 9))
sud9_median_2003<-median(sud9_2003$Hg1)
sud9_mean_2003<-mean(sud9_2003$Hg1)
sud9_min_2003<-min(sud9_2003$Hg1)
sud9_max_2003<-max(sud9_2003$Hg1)

sud10_2003<-(filter(wS2003, Mese == 10))
sud10_median_2003<-median(sud10_2003$Hg1)
sud10_mean_2003<-mean(sud10_2003$Hg1)
sud10_min_2003<-min(sud10_2003$Hg1)
sud10_max_2003<-max(sud10_2003$Hg1)

sud11_2003<-(filter(wS2003, Mese == 11))
sud11_median_2003<-median(sud11_2003$Hg1)
sud11_mean_2003<-mean(sud11_2003$Hg1)
sud11_min_2003<-min(sud11_2003$Hg1)
sud11_max_2003<-max(sud11_2003$Hg1)

sud12_2003<-(filter(wS2003, Mese == 12))
sud12_median_2003<-median(sud12_2003$Hg1)
sud12_mean_2003<-mean(sud12_2003$Hg1)
sud12_min_2003<-min(sud12_2003$Hg1)
sud12_max_2003<-max(sud12_2003$Hg1)


suds_median_2003<-c(sud1_median_2003, sud2_median_2003, sud3_median_2003,sud4_median_2003,
				  sud5_median_2003,sud6_median_2003,  sud7_median_2003,sud8_median_2003,sud9_median_2003,
				  sud10_median_2003,sud11_median_2003,sud12_median_2003)		  
				  
suds_mean_2003<-c(sud1_mean_2003, sud2_mean_2003,sud3_mean_2003,sud4_mean_2003,
				  sud5_mean_2003,sud6_mean_2003, sud7_mean_2003,sud8_mean_2003,sud9_mean_2003,
				  sud10_mean_2003,sud11_mean_2003,sud12_mean_2003)
				  				  
suds_min_2003<-c(sud1_min_2003, sud2_min_2003,sud3_min_2003,sud4_min_2003,
				  sud5_min_2003,sud6_min_2003, sud7_min_2003,sud8_min_2003,sud9_min_2003,
				  sud10_min_2003,sud11_min_2003,sud12_min_2003)		  
				  				  
suds_max_2003<-c(sud1_max_2003, sud2_max_2003,sud3_max_2003,sud4_max_2003,
				  sud5_max_2003,sud6_max_2003, sud7_max_2003,sud8_max_2003,sud9_max_2003,
				  sud10_max_2003,sud11_max_2003,sud12_max_2003)
	
	
sud1_2004		<-NA;sud1_median_2004 <-NA;sud1_mean_2004 <-NA
sud1_min_2004    <-NA; sud1_max_2004    <-NA

sud2_2004<-(filter(wS2004, Mese == 2))
sud2_median_2004<-median(sud2_2004$Hg1)
sud2_mean_2004<-mean(sud2_2004$Hg1)
sud2_min_2004<-min(sud2_2004$Hg1)
sud2_max_2004<-max(sud2_2004$Hg1)

sud3_2004<-NA;sud3_median_2004<-NA;sud3_mean_2004<-NA;sud3_max_2004<-NA;sud3_min_2004<-NA

sud4_2004<-(filter(wS2004, Mese == 4))
sud4_median_2004<-median(sud4_2004$Hg1)
sud4_mean_2004<-mean(sud4_2004$Hg1)
sud4_min_2004<-min(sud4_2004$Hg1)
sud4_max_2004<-max(sud4_2004$Hg1)

sud5_2004<-NA
sud5_median_2004<-NA
sud5_mean_2004<-NA
sud5_min_2004<-NA
sud5_max_2004<-NA

sud6_2004<-(filter(wS2004, Mese == 6))
sud6_median_2004<-median(sud6_2004$Hg1)
sud6_mean_2004<-mean(sud6_2004$Hg1)
sud6_min_2004<-min(sud6_2004$Hg1)
sud6_max_2004<-max(sud6_2004$Hg1)

sud7_2004<-NA;sud7_median_2004<-NA
sud7_mean_2004<-NA;sud7_min_2004<-NA;sud7_max_2004<-NA

sud8_2004<-(filter(wS2004, Mese == 8))
sud8_median_2004<-median(sud8_2004$Hg1)
sud8_mean_2004<-mean(sud8_2004$Hg1)
sud8_min_2004<-min(sud8_2004$Hg1)
sud8_max_2004<-max(sud8_2004$Hg1)

sud9_2004<-NA;sud9_median_2004<-NA;sud9_mean_2004<-NA
sud9_min_2004<-NA;sud9_max_2004<-NA

sud10_2004<-NA;sud10_median_2004<-NA
sud10_mean_2004<-NA;sud10_min_2004<-NA;sud10_max_2004<-NA

sud11_2004<-(filter(wS2004, Mese == 11))
sud11_median_2004<-median(sud11_2004$Hg1)
sud11_mean_2004<-mean(sud11_2004$Hg1)
sud11_min_2004<-min(sud11_2004$Hg1)
sud11_max_2004<-max(sud11_2004$Hg1)

sud12_2004<-NA;sud12_median_2004<-NA
sud12_mean_2004<-NA;sud12_min_2004<-NA;sud12_max_2004<-NA


suds_median_2004<-c(sud1_median_2004, sud2_median_2004, sud3_median_2004,sud4_median_2004,
				  sud5_median_2004,sud6_median_2004,  sud7_median_2004,sud8_median_2004,sud9_median_2004,
				  sud10_median_2004,sud11_median_2004,sud12_median_2004)		  
				  
suds_mean_2004<-c(sud1_mean_2004, sud2_mean_2004,sud3_mean_2004,sud4_mean_2004,
				  sud5_mean_2004,sud6_mean_2004, sud7_mean_2004,sud8_mean_2004,sud9_mean_2004,
				  sud10_mean_2004,sud11_mean_2004,sud12_mean_2004)
				  				  
suds_min_2004<-c(sud1_min_2004, sud2_min_2004,sud3_min_2004,sud4_min_2004,
				  sud5_min_2004,sud6_min_2004, sud7_min_2004,sud8_min_2004,sud9_min_2004,
				  sud10_min_2004,sud11_min_2004,sud12_min_2004)		  
				  				  
suds_max_2004<-c(sud1_max_2004, sud2_max_2004,sud3_max_2004,sud4_max_2004,
				  sud5_max_2004,sud6_max_2004, sud7_max_2004,sud8_max_2004,sud9_max_2004,
				  sud10_max_2004,sud11_max_2004,sud12_max_2004)
				  
sud1_2005		<-NA;sud1_median_2005 <-NA;sud1_mean_2005   <-NA
sud1_min_2005    <-NA;sud1_max_2005    <-NA

sud2_2005<-(filter(wS2005, Mese == 2))
sud2_median_2005<-median(sud2_2005$Hg1)
sud2_mean_2005<-mean(sud2_2005$Hg1)
sud2_min_2005<-min(sud2_2005$Hg1)
sud2_max_2005<-max(sud2_2005$Hg1)

sud3_2005<-NA;sud3_median_2005<-NA;sud3_mean_2005<-NA;sud3_min_2005<-NA;sud3_max_2005<-NA

sud4_2005<-(filter(wS2005, Mese == 4))
sud4_median_2005<-median(sud4_2005$Hg1)
sud4_mean_2005<-mean(sud4_2005$Hg1)
sud4_min_2005<-min(sud4_2005$Hg1)
sud4_max_2005<-max(sud4_2005$Hg1)

sud5_2005<-NA;sud5_median_2005<-NA;sud5_mean_2005<-NA
sud5_min_2005<-NA;sud5_max_2005<-NA

sud6_2005<-(filter(wS2005, Mese == 6))
sud6_median_2005<-median(sud6_2005$Hg1)
sud6_mean_2005<-mean(sud6_2005$Hg1)
sud6_min_2005<-min(sud6_2005$Hg1)
sud6_max_2005<-max(sud6_2005$Hg1)

sud7_2005<-NA;sud7_median_2005<-NA
sud7_mean_2005<-NA;sud7_min_2005<-NA;sud7_max_2005<-NA

sud8_2005<-(filter(wS2005, Mese == 8))
sud8_median_2005<-median(sud8_2005$Hg1)
sud8_mean_2005<-mean(sud8_2005$Hg1)
sud8_min_2005<-min(sud8_2005$Hg1)
sud8_max_2005<-max(sud8_2005$Hg1)

sud9_2005<-NA;sud9_median_2005<-NA
sud9_mean_2005<-NA;sud9_min_2005<-NA;sud9_max_2005<-NA

sud10_2005<-(filter(wS2005, Mese == 10))
sud10_median_2005<-median(sud10_2005$Hg1)
sud10_mean_2005<-mean(sud10_2005$Hg1)
sud10_min_2005<-min(sud10_2005$Hg1)
sud10_max_2005<-max(sud10_2005$Hg1)

sud11_2005<-NA;sud11_median_2005<-NA
sud11_mean_2005<-NA;sud11_min_2005<-NA;sud11_max_2005<-NA

sud12_2005<-NA;sud12_median_2005<-NA;sud12_mean_2005<-NA
sud12_min_2005<-NA;sud12_max_2005<-NA

suds_median_2005<-c(sud1_median_2005, sud2_median_2005, sud3_median_2005,sud4_median_2005,
				  sud5_median_2005,sud6_median_2005,  sud7_median_2005,sud8_median_2005,sud9_median_2005,
				  sud10_median_2005,sud11_median_2005,sud12_median_2005)		  
				  
suds_mean_2005<-c(sud1_mean_2005, sud2_mean_2005,sud3_mean_2005,sud4_mean_2005,
				  sud5_mean_2005,sud6_mean_2005, sud7_mean_2005,sud8_mean_2005,sud9_mean_2005,
				  sud10_mean_2005,sud11_mean_2005,sud12_mean_2005)
				  				  
suds_min_2005<-c(sud1_min_2005, sud2_min_2005,sud3_min_2005,sud4_min_2005,
				  sud5_min_2005,sud6_min_2005, sud7_min_2005,sud8_min_2005,sud9_min_2005,
				  sud10_min_2005,sud11_min_2005,sud12_min_2005)		  
				  				  
suds_max_2005<-c(sud1_max_2005, sud2_max_2005,sud3_max_2005,sud4_max_2005,
				  sud5_max_2005,sud6_max_2005, sud7_max_2005,sud8_max_2005,sud9_max_2005,
				  sud10_max_2005,sud11_max_2005,sud12_max_2005)
				  
sud1_2006		<-NA;sud1_median_2006 <-NA;sud1_mean_2006   <-NA
sud1_min_2006    <-NA;sud1_max_2006    <-NA

sud2_2006<-NA;sud2_median_2006<-NA
sud2_mean_2006<-NA;sud2_min_2006<-NA;sud2_max_2006<-NA

sud3_2006<-NA;sud3_median_2006<-NA
sud3_mean_2006<-NA;sud3_min_2006<-NA;sud3_max_2006<-NA

sud4_2006<-NA;sud4_median_2006<-NA;sud4_mean_2006<-NA
sud4_min_2006<-NA;sud4_max_2006<-NA

sud5_2006<-(filter(wS2006, Mese == 5))
sud5_median_2006<-median(sud5_2006$Hg1)
sud5_mean_2006<-mean(sud5_2006$Hg1)
sud5_min_2006<-min(sud5_2006$Hg1)
sud5_max_2006<-max(sud5_2006$Hg1)

sud6_2006<-(filter(wS2006, Mese == 6))
sud6_median_2006<-median(sud6_2006$Hg1)
sud6_mean_2006<-mean(sud6_2006$Hg1)
sud6_min_2006<-min(sud6_2006$Hg1)
sud6_max_2006<-max(sud6_2006$Hg1)

sud7_2006<-(filter(wS2006, Mese ==7))
sud7_median_2006<-median(sud7_2006$Hg1)
sud7_mean_2006<-mean(sud7_2006$Hg1)
sud7_min_2006<-min(sud7_2006$Hg1)
sud7_max_2006<-max(sud7_2006$Hg1)

sud8_2006<-(filter(wS2006, Mese == 8))
sud8_median_2006<-median(sud8_2006$Hg1)
sud8_mean_2006<-mean(sud8_2006$Hg1)
sud8_min_2006<-min(sud8_2006$Hg1)
sud8_max_2006<-max(sud8_2006$Hg1)

sud9_2006<-(filter(wS2006, Mese == 9))
sud9_median_2006<-median(sud9_2006$Hg1)
sud9_mean_2006<-mean(sud9_2006$Hg1)
sud9_min_2006<-min(sud9_2006$Hg1)
sud9_max_2006<-max(sud9_2006$Hg1)

sud10_2006<-(filter(wS2006, Mese == 10))
sud10_median_2006<-median(sud10_2006$Hg1)
sud10_mean_2006<-mean(sud10_2006$Hg1)
sud10_min_2006<-min(sud10_2006$Hg1)
sud10_max_2006<-max(sud10_2006$Hg1)

sud11_2006<-(filter(wS2006, Mese == 11))
sud11_median_2006<-median(sud11_2006$Hg1)
sud11_mean_2006<-mean(sud11_2006$Hg1)
sud11_min_2006<-min(sud11_2006$Hg1)
sud11_max_2006<-max(sud11_2006$Hg1)

sud12_2006<-(filter(wS2006, Mese == 12))
sud12_median_2006<-median(sud12_2006$Hg1)
sud12_mean_2006<-mean(sud12_2006$Hg1)
sud12_min_2006<-min(sud12_2006$Hg1)
sud12_max_2006<-max(sud12_2006$Hg1)

suds_median_2006<-rep(NA,12); suds_mean_2006<-rep(NA,12)		  
suds_min_2006<-rep(NA,12);  suds_max_2006<-rep(NA,12)		  
				  
sud1_2007		<-(filter(wS2007, Mese == 1))
sud1_median_2007 <-median(sud1_2007$Hg1)
sud1_mean_2007   <-mean(sud1_2007$Hg1)
sud1_min_2007    <-min(sud1_2007$Hg1)
sud1_max_2007    <-min(sud1_2007$Hg1)

sud2_2007<-(filter(wS2007, Mese == 2))
sud2_median_2007<-median(sud2_2007$Hg1)
sud2_mean_2007<-mean(sud2_2007$Hg1)
sud2_min_2007<-min(sud2_2007$Hg1)
sud2_max_2007<-max(sud2_2007$Hg1)

sud3_2007<-(filter(wS2007, Mese == 3))
sud3_median_2007<-median(sud3_2007$Hg1)
sud3_mean_2007<-mean(sud3_2007$Hg1)
sud3_min_2007<-min(sud3_2007$Hg1)
sud3_max_2007<-max(sud3_2007$Hg1)

sud4_2007<-(filter(wS2007, Mese == 4))
sud4_median_2007<-median(sud4_2007$Hg1)
sud4_mean_2007<-mean(sud4_2007$Hg1)
sud4_min_2007<-min(sud4_2007$Hg1)
sud4_max_2007<-max(sud4_2007$Hg1)

sud5_2007<-(filter(wS2007, Mese == 5))
sud5_median_2007<-median(sud5_2007$Hg1)
sud5_mean_2007<-mean(sud5_2007$Hg1)
sud5_min_2007<-min(sud5_2007$Hg1)
sud5_max_2007<-max(sud5_2007$Hg1)

sud6_2007<-(filter(wS2007, Mese == 6))
sud6_median_2007<-median(sud6_2007$Hg1)
sud6_mean_2007<-mean(sud6_2007$Hg1)
sud6_min_2007<-min(sud6_2007$Hg1)
sud6_max_2007<-max(sud6_2007$Hg1)

sud7_2007<-(filter(wS2007, Mese ==7))
sud7_median_2007<-median(sud7_2007$Hg1)
sud7_mean_2007<-mean(sud7_2007$Hg1)
sud7_min_2007<-min(sud7_2007$Hg1)
sud7_max_2007<-max(sud7_2007$Hg1)   

sud8_2007<-(filter(wS2007, Mese == 8))
sud8_median_2007<-median(sud8_2007$Hg1)
sud8_mean_2007<-mean(sud8_2007$Hg1)
sud8_min_2007<-min(sud8_2007$Hg1)
sud8_max_2007<-max(sud8_2007$Hg1) 

sud9_2007<-(filter(wS2007, Mese == 9))
sud9_median_2007<-median(sud9_2007$Hg1)
sud9_mean_2007<-mean(sud9_2007$Hg1)
sud9_min_2007<-min(sud9_2007$Hg1)
sud9_max_2007<-max(sud9_2007$Hg1)

sud10_2007<-(filter(wS2007, Mese == 10))
sud10_median_2007<-median(sud10_2007$Hg1)
sud10_mean_2007<-mean(sud10_2007$Hg1)
sud10_min_2007<-min(sud10_2007$Hg1)
sud10_max_2007<-max(sud10_2007$Hg1)

sud11_2007<-(filter(wS2007, Mese == 11))
sud11_median_2007<-median(sud11_2007$Hg1)
sud11_mean_2007<-mean(sud11_2007$Hg1)
sud11_min_2007<-min(sud11_2007$Hg1)
sud11_max_2007<-max(sud11_2007$Hg1)

sud12_2007<-(filter(wS2007, Mese == 12)) 
sud12_median_2007<-median(sud12_2007$Hg1)
sud12_mean_2007<-mean(sud12_2007$Hg1)
sud12_min_2007<-min(sud12_2007$Hg1)
sud12_max_2007<-max(sud12_2007$Hg1)
#manca 1,3,4,5, 7,8,10,11

suds_median_2007<-c(NA,NA, sud3_median_2007,NA, NA,sud6_median_2007,NA,
                    NA,sud9_median_2007,NA,NA,sud12_median_2007)		  
				  
suds_mean_2007<-c(NA,NA,sud3_mean_2007,NA,NA,sud6_mean_2007, NA,
                  NA,sud9_mean_2007,NA,NA,sud12_mean_2007)
				  				  
suds_min_2007<-c(NA,NA,sud3_min_2007,NA,NA, sud6_min_2007, NA,
                 NA,sud9_min_2007,NA,NA,sud12_min_2007)		 
				  				  
suds_max_2007<-c(NA,NA,sud3_max_2007,NA,NA,sud6_max_2007, NA,
                 NA, sud9_max_2007,NA,NA,sud12_max_2007)

sud1_2008		<-(filter(wS2008, Mese == 1))
sud1_median_2008 <-median(sud1_2008$Hg1)
sud1_mean_2008   <-mean(sud1_2008$Hg1)
sud1_min_2008    <-min(sud1_2008$Hg1)
sud1_max_2008    <-min(sud1_2008$Hg1)

sud2_2008<-(filter(wS2008, Mese == 2))
sud2_median_2008<-median(sud2_2008$Hg1)
sud2_mean_2008<-mean(sud2_2008$Hg1)
sud2_min_2008<-min(sud2_2008$Hg1)
sud2_max_2008<-max(sud2_2008$Hg1)

sud3_2008<-(filter(wS2008, Mese == 3))
sud3_median_2008<-median(sud3_2008$Hg1)
sud3_mean_2008<-mean(sud3_2008$Hg1)
sud3_min_2008<-min(sud3_2008$Hg1)
sud3_max_2008<-max(sud3_2008$Hg1)  

sud4_2008<-(filter(wS2008, Mese == 4))
sud4_median_2008<-median(sud4_2008$Hg1)
sud4_mean_2008<-mean(sud4_2008$Hg1)
sud4_min_2008<-min(sud4_2008$Hg1)
sud4_max_2008<-max(sud4_2008$Hg1)

sud5_2008<-(filter(wS2008, Mese == 5))
sud5_median_2008<-median(sud5_2008$Hg1)
sud5_mean_2008<-mean(sud5_2008$Hg1)
sud5_min_2008<-min(sud5_2008$Hg1)
sud5_max_2008<-max(sud5_2008$Hg1)

sud6_2008<-(filter(wS2008, Mese == 6))
sud6_median_2008<-median(sud6_2008$Hg1)
sud6_mean_2008<-mean(sud6_2008$Hg1)
sud6_min_2008<-min(sud6_2008$Hg1)
sud6_max_2008<-max(sud6_2008$Hg1)

sud7_2008<-(filter(wS2008, Mese ==7))
sud7_median_2008<-median(sud7_2008$Hg1)
sud7_mean_2008<-mean(sud7_2008$Hg1)
sud7_min_2008<-min(sud7_2008$Hg1)
sud7_max_2008<-max(sud7_2008$Hg1)

sud8_2008<-(filter(wS2008, Mese == 8))
sud8_median_2008<-median(sud8_2008$Hg1)
sud8_mean_2008<-mean(sud8_2008$Hg1)
sud8_min_2008<-min(sud8_2008$Hg1)
sud8_max_2008<-max(sud8_2008$Hg1)

sud9_2008<-(filter(wS2008, Mese == 9))
sud9_median_2008<-median(sud9_2008$Hg1)
sud9_mean_2008<-mean(sud9_2008$Hg1)
sud9_min_2008<-min(sud9_2008$Hg1) 
sud9_max_2008<-max(sud9_2008$Hg1)

sud10_2008<-(filter(wS2008, Mese == 10))
sud10_median_2008<-median(sud10_2008$Hg1)
sud10_mean_2008<-mean(sud10_2008$Hg1)
sud10_min_2008<-min(sud10_2008$Hg1) 
sud10_max_2008<-max(sud10_2008$Hg1)

sud11_2008<-(filter(wS2008, Mese == 11))
sud11_median_2008<-median(sud11_2008$Hg1)
sud11_mean_2008<-mean(sud11_2008$Hg1)
sud11_min_2008<-min(sud11_2008$Hg1)
sud11_max_2008<-max(sud11_2008$Hg1)

sud12_2008<-(filter(wS2008, Mese == 12))
sud12_median_2008<-median(sud12_2008$Hg1)
sud12_mean_2008<-mean(sud12_2008$Hg1)
sud12_min_2008<-min(sud12_2008$Hg1)
sud12_max_2008<-max(sud12_2008$Hg1) 

#1,3,4,6,7,9,10, 12
suds_median_2008<-c(NA, sud2_median_2008, NA, NA, 
				  sud5_median_2008,NA,  NA, sud8_median_2008,NA, NA, 
				  sud11_median_2008,NA)		  
				  
suds_mean_2008<-c(NA, sud2_mean_2008,NA, NA, 
				  sud5_mean_2008,NA, NA, sud8_mean_2008,NA, NA, 
				  sud11_mean_2008,NA)
				  				  
suds_min_2008<-c(NA, sud2_min_2008,NA, NA, 
				  sud5_min_2008,NA, NA, sud8_min_2008,NA, NA, 
				  sud11_min_2008,NA)		  
				  				  
suds_max_2008<-c(NA, sud2_max_2008,NA, NA, 
				  sud5_max_2008,NA, NA, sud8_max_2008,NA, NA, 
				  sud11_max_2008,NA)


mediane_SUD_ym<-c(suds_median_2002,suds_median_2003,suds_median_2004,
					 suds_median_2005,suds_median_2006, suds_median_2007, suds_median_2008)				  
				  
medie_SUD_ym<-c(suds_mean_2002,suds_mean_2003,suds_mean_2004,
					 suds_mean_2005,suds_mean_2006, suds_mean_2007, suds_mean_2008)		
				  
min_SUD_ym<-c(suds_min_2002,suds_min_2003,suds_min_2004,
					 suds_min_2005,suds_min_2006, suds_min_2007, suds_min_2008)		
		  
max_SUD_ym<-c(suds_max_2002,suds_max_2003,suds_max_2004,
					 suds_max_2005,suds_max_2006, suds_max_2007, suds_max_2008)		
					 
SUD_all<- data.frame(mediane_SUD_ym,medie_SUD_ym,min_SUD_ym,max_SUD_ym)					 
write.table(SUD_all, file='Mela_sud.txt')		


##----- plot water nord
S<-read.table('Mela_sud.txt', header=T)

xx<-seq(1,84);epsilon <- 0.8



plot(S$medie_SUD_ym, type='p', pch=19,ylim=c(0,40))
par(new=T)
plot(S$mediane_SUD_ym, type='p', pch=7, ylim=c(0,40))
segments(xx,min_SUD_ym,xx,max_SUD_ym, col='#313695', lwd=1.8)

segments(xx-epsilon,min_SUD_ym,xx+epsilon,min_SUD_ym, col='#313695', lwd=1.8)
segments(xx-epsilon,max_SUD_ym,xx+epsilon,max_SUD_ym, col='#313695', lwd=1.8)

