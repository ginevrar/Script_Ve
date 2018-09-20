c
       program flussi
       implicit none  
       integer tend, i, m, nvar
       parameter (tend=3010)       ! last timestep
       parameter (nvar=5)        ! number of Hg variables
c
	real C(nvar)		!mercury variables C(1):Hg1, C(2):Hg2, C(3):MeHg
	real CD(nvar)		!derivatives CD(1):diffHg0, CD(2):diffHg2, CD(3):diffMeHg	
	real time,tdummy, dt 	!time step, [day]
	real t, temp,light
	real tau(tend),lightv(tend), windv(tend)	!data read	 
       real Sw, dsilt,sdens, podens, spd, ppd, vis, swd, g
       real Vss, wdepth, area, depth, vol, wvol
       real Pdens,DryD, BenSol, por, silt, POM, BulkD, p_silt, taub
       real p_POC, p_POM, OC_mg_g, OM_mg_g,  ter1, tCDs, tCE
       real SinkSed, Pd, ResSed, Net, eurpar, Bvel, delta
       real bvelcmy, ceq, Dsflux, Esflux, Vr, Vds, Er, dme2
       real A, n, mm, primo, second, Pr, logdme, es, dme, dme1
       real dep_gm2s,res_gm2s, Bflux, Swm,POMwm, BenSolm
       real POMw, dPOM, Vsp, Vdp, Dpflux, Dflux, Epflux, Eflux
       real rs_gm2s, rp_gm2s, ds_gm2s, dp_gm2s, siltm, POMm   
       real Bsflux, Bvels,Bpflux, Bvelp, Lpom, p_POMw, p_POM2, p_silt2 
c       data p_POC /3./, Sw /5./        
c       
c	time step in days
	dt =1./24.  		! ogni 30 second
****************************************************block 01****	
       open(1,file='437.dat',status='old',form='formatted')
c	 write(6,*) '../temperature file opened...'
       do i=1,tend 
            read(1,*), tau(i)
c	write(6,*) tau(i)
	end do 
c	
	close (1)
c
******    BOX features ************************************************
c	------------------------------------------------------
       area=2000.                ! m2
       depth = 0.02             ! m
	vol= depth*area 	 ! m3
c	
	wdepth = 1.8     ! m  !! call from water module 
	temp = 15.
	wvol = wdepth*area       ! m3
c	------------------------------------------------------
*************TERMS FOR DEPOSITION ***************block 02**************
      do i=1, tend	!	do i=1,tend
c
 	taub = tau(i) 
c        do i=1,200  !INPut froM WATEr MODEL   - N/m2??     
       Sw = 5.            ! solid conc water [mg l-1] or [g m-3]
       POMw = 1.5            ! solid conc water [mg l-1] or [g m-3]
       Lpom = 1.2*area   !net PP in [g m2 d]*[m2]
	dsilt   = 2./10.**5. ! silt diameter [m] 
c	5*10^-5 = coarse silt, 6*10^-6 very fine silt, 1*10^-6 fine clay
	dPOM    = 5./10.**5. ! silt diameter [m] 
c	diatom cell 2*10-5 - 2*10^-4 um, picoplankton < 2*10^-6
	sdens   = 2.65    ! silt particle density   [g/cm3] 
	podens  = 1.25    ! POM particle density     [g/cm3]
	spd = sdens*10.**3.  ! silt particle density   [kg/m3] 
	ppd = podens*10.**3. ! POM particle density   [kg/m3] 
	vis    = 0.0012   ! din seawater viscosity (Pa s-1) or [kg/m-sec] 
	swd    = 1030.0     ! Seawater density [kg m-3] 
	!(computed in volatilization module from Temp) 
	g      = 9.81 ! acceleration gravity [m sec-2]    
c       Vds = 5           ![m d-1]   settling vel
******* compute Stoke Settling V ************************block 03********
! cambiate unità  da m d-1 a m s-1	
	ter1 = g/(18.*vis)   ! [m s-2]/[kg m-2 s-1]= [m s-1]
       Vss= ter1*(spd-swd)*(dsilt**2.)     ![m s-1]
       Vsp= ter1*(ppd-swd)*(dPOM**2.)!Stoke's settling vel for silt 
c       
c     
****    Sediment initial conditions *********************block 04********
c	------------------------------------------------------	
c	p_sand = 0.01
 	p_POC = 3.       ! % of OC 	
c      DOC=23.0	 !mg/L porewater DOC conc
c	
       if (i .EQ. 1) then 
              p_POM = p_POC*1.7
              OC_mg_g = 10.0 * p_POC
              OM_mg_g = 10.0 * p_POM
       else 
              p_POM = POM/BenSol*100.
              OM_mg_g = 10.0 * p_POM
              OC_mg_g = OM_mg_g/1.7
       end if        
c       
**Compute: particle density, %silt, dry & bulk dens, por, silt and POM***
**********************************************************  block 04*****
       Pdens = ((1.25*p_POM)+(2.65*(100.0 - p_POM)))/100.0 
c       ![g cm-3] weigthed particle density 	
  	p_silt = 100. - p_POM   ! % of silt
c 
c compute Sed Dry [g(s) cm-3] & Bulk Density  [g(s+w) cm-3]
c       
       DryD = 1.776 - 0.363 * log(OC_mg_g)   !log= logaritmo naturale, log10 = log base 10 !DryD = (1-por)*Pdens    
	BenSol = DryD *10.**6.            ! [g m-3]
       por = 1.0 - (DryD/Pdens)        ! [L(w)/L(s+w)]
       silt= BenSol*p_silt/100.	!	sand= BenSol*p_sand
	POM = BenSol*p_POM /100.      
c compute Sed Bulk densit y
	BulkD = por + DryD       ! [g cm-3] 
c
****Input critical shear for deposition and erosion**********block 05****
c
       tCE  = 0.1 ! tau critical for erosion
 	tCDs   = 0.08   !!da 0.06 a 1         !0.06*g*(spd-swd)*dsilt
c 	tCDsa  =  0.06*g*(spd-swd)/10**4
c
********Compute resuspension multiplier(dme/dt) from BulkD**block 06****
********formule da efdc manual***** from Hwang and metha !!1989*****        
c
        es = 0.198/(BulkD-1.0023)
        logdme = 0.23*exp(es)
        dme = 10.**logdme                      ![mg cm-2 hr-1]
c        
        dme2 = ((dme/1000.)/3600.)*10.**4.     ![g m-2 s-1]       
c        dme1 = ((dme/1000.)*24.)*10.**4.       ![g d-1 m-2]
c
********DEPOSITION Orr RESUSPENSION************************block 07******
c      
        if (taub < tCDs) then            ! DEPOSITION
          Pd = (1. - taub/tCDs)          ! INVERTITI I  SEGNI
  ![m d-1]*[g m-3] = [g m-2d-1] *[m2] = [g d-1]
c          Vss = Net/(Sw*area) 
          Vr = 0.0     
          Pr = 0.0                           ![m d-1]
        else if (taub > tCE) then   
          Pd = 0.0                     !EROSION
          Vr = dme2/BenSol             ![m s-1] = [g m-2 s-1]*[m3 g-1]
          Pr = (taub/tCE - 1.)!**2      ![g m-2 d-1] tolto esponete **a=2 dato in handbook 
c       Vr = A*(tau**n)*(BulkD**m)   ! *86400)/100  ! [cm s-1] ->[m d-1]  
c    !formula da dati sperimentali, ma viene bassa (handbook..)   
        else                                    !nothing
          Pr = 0.
          Pd = 0.
          Vr = dme2/BenSol  
          end if
****** Compute Deposition Flux and rate *****************block 08********
c     
       Vds = Pd*Vss               ![-]*[m s-1]
       Vdp = Pd*Vsp
       ds_gm2s = Vds*Sw           ![m s-1]*[g m-3]-> [g m-2 s-1]
       dp_gm2s = Vdp*POMw
c        
       Dsflux = ds_gm2s *area     ![g s-1] = [g m-2 s-1] * [m2]  
       Dpflux = dp_gm2s*area 
       Dflux  = Dsflux + Dpflux    
c        
       dep_gm2s = Dflux/area        
c       Dsflux2 = Dsflux/vol        ![g m-3 s-1]  
c       Dpflux2 = Dpflux/vol
****** Compute Resuspension Flux and rate ****************block 08b******             
c!!ADD DEGRADATION FOR POM  
       Er = dme2 * Pr                   ![g m-2 s-1]
       Esflux  = (Er*area)*(p_silt/100.) ![g s-1] = [g m-2 s-1] * [m2]     
       Epflux  = (Er*area)*(p_POM/100.)
       Eflux   =  Esflux + Epflux  
c  
       rs_gm2s = Esflux/area
       rp_gm2s = Epflux/area
       res_gm2s= Eflux/area         
c
       Net = Dflux-Eflux  ![g s-1]
       
       Bvels = (ds_gm2s-rs_gm2s)/silt    ![g m-2 s-1]*[m3 g-1] = [m s-1]
       Bvelp = (dp_gm2s-rp_gm2s)/POM 
c        
       Bvel = (dep_gm2s-res_gm2s)/BenSol ![g m-2 s-1]*[m3 g-1] = [m s-1]
       bvelcmy = Bvel*100.*(86400.*365.) ![m s-1]to [cm y-1]
c       
       Bsflux = Bvels*silt*area 
       Bpflux = Bvelp*POM*area 
       Bflux  = Bvel*BenSol*area      ![m s-1]*[g m-3]*[m2]= [g s-1]
c         Esflux2 = Esflux/wvol !diviso per il  volume del box di destinazione... 
c       Epflux2 = Epflux/wvol
c        
c       Bsflux = Bvels*silt*area 
c       Bpflux = Bvelp*POM*area 
      

       Swm   = Sw*wvol        ! [g m3]*m3 --> g
       POMwm = POMw *wvol  ! masses of soilds in water
c        
       siltm = silt*vol     ! masses of solids in sed
       POMm = POM*vol
       BenSolm = BenSol*vol   
c                  
       C(1)=Sw              ![g/m3]
       C(2)=POMw            ![g/m3]
	   C(3)=silt            ![g/m3]
	   C(4)=POM             ![g/m3]
	   C(5)= BenSol 
c       
c       CD(1) = - Dsflux/wvol + Esflux/wvol         !silt water [g/m3(w)]
c       CD(2) = - Dpflux/wvol + Epflux/wvol !+ Lpom/wvol  !pom water
c       CD(3) = + Dsflux/vol  - Esflux/vol -Bsflux/vol !silt sed
c       CD(4) = + Dpflux/vol  - Epflux/vol -Bpflux/vol !pom sed     
c       CD(5) = + Dflux/vol   - Eflux/vol - Bflux/vol  !sediment all    
c       
        CD(1) = - Dsflux + Esflux         !silt water [g/m3(w)c]
        CD(2) = - Dpflux + Epflux ! + Lpom  !pom water
        if (Bsflux .GE. 0.) then
              CD(3) = + Dsflux  - Esflux -Bsflux !silt sed
        else
              CD(3) = + Dsflux  - Esflux !burial negativo = risosp.netta 
        end if 
        
        if (Bpflux .GE. 0.) then      
        CD(4) = + Dpflux  - Epflux -Bpflux !pom sed
        else 
        CD(4) = + Dpflux  - Epflux
        end if 
c        
        if (Bflux .GE. 0.) then
        CD(5) = + Dflux   - Eflux - Bflux  !sediment all    
        else 
        CD(5) = + Dflux   - Eflux        
        end if
c               
       do m=1, nvar
              c(m) = c(m)+ dt*cd(m) 
       end do
c       
       Sw     = C(1)
       POMw   = C(2)
       silt   = C(3)  
       POM    = C(4)
       BenSol = C(5)               
c       
c       write(6,*), 'Pr',Pr,'taub/tce',taub/tCE>1.! Sw, POMw
c      write(6,*),   p_POM, OM_mg_g, Pdens, BulkD, Dry

       write(6,*), Dsflux,POMwm, Dpflux, POMw, Sw 
c
        if (Dpflux .GE. POMwm) then  !if (dme2 .LT. 0.05 .OR. dme2 .GT. 0.1) then
             write(6,*), 'instability - pom sink too high'
             stop
        else if (Dsflux .GE. Swm) then  !if (dme2 .LT. 0.05 .OR. dme2 .GT. 0.1) then
             write(6,*), 'instability - silt sink too high'
             stop
       else if (POMw .LE. 0.0) then  !if (dme2 .LT. 0.05 .OR. dme2 .GT. 0.1) then
             write(6,*), 'instability - negative POM conc'
             stop 
       else if (Epflux .GE. POM) then  !if (dme2 .LT. 0.05 .OR. dme2 .GT. 0.1) then
             write(6,*), 'instability - pom res flux too high'
             stop
        else if (Esflux .GE. silt) then  !if (dme2 .LT. 0.05 .OR. dme2 .GT. 0.1) then
             write(6,*), 'instability - silt res flux too high'
             stop
       else if (Sw .LE. 0.0) then  !if (dme2 .LT. 0.05 .OR. dme2 .GT. 0.1) then
             write(6,*), 'instability - negative silt conc'
       else if (POM .LE. 0.0) then  !if (dme2 .LT. 0.05 .OR. dme2 .GT. 0.1) then
             write(6,*), 'instability - negative POM conc in sed'
       else if (silt .LE. 0.0) then  !if (dme2 .LT. 0.05 .OR. dme2 .GT. 0.1) then
             write(6,*), 'instability - negative silt conc in sed'
             stop 
       else       
       write(85,*),Vss, Vsp, Vds, Vdp, Vr,dme2, dme 
       write(86,*),Dsflux, Dpflux, Net, Bvel
        
       write(87,*), taub, Sw, POMw
       write(89,*) silt, POM, p_POM, p_silt, BenSol
       end if 
c        dme2,Vr,Vds,Dsflux,Eflux,Net,bvelcmy, BenSol
c               
       end do
       end program
        
     
