#************TERMS FOR DEPOSITION ***************block 02**************

   dsilt   = 1.9/10.**5. # silt diameter [m] 
#  	5*10^-5 = coarse silt, 6*10^-6 very fine silt, 1*10^-6 fine clay
   2E-2
   dPOM    = 5./10.**5. # POM diameter [m] 
#     	diatom cell 2*10-5 - 2*10^-4 um, picoplankton < 2*10^-6
  sdens   = 2.6    # silt particle density   [g/cm3] 
  podens  = 1.25    # POM particle density     [g/cm3]
  spd = sdens*10.**3.  # silt particle density   [kg/m3] 
  ppd = podens*10.**3. # POM particle density   [kg/m3] 
  vis    = 0.0012   # din seawater viscosity (Pa s-1) or [kg m-2 s-1]
  swd    = 1030.0     # Seawater density [kg m-3] 
  #(computed in volatilization module from Temp) 
  g      = 9.81 # acceleration gravity [m sec-2]    
#     Vds = 5           #[m d-1]   settling vel
#  ******* compute Stoke Settling V ************************block 03********
    # cambiate unità  da m d-1 a m s-1	
  ter1 = g/(18.*vis)   # [m s-2]/[kg m-2 s-1]= [m s-1]
  Vss= ter1*(spd-swd)*(dsilt**2.) # Stoke's settling vel for silt [m s-1]
  Vsp= ter1*(ppd-swd)*(dPOM**2.)  # Stoke's settling vel for POM [m s-1]
  
    Vss_md= Vss*60*60*24
    Vss_md
    
    
      22.24005/1.5
    