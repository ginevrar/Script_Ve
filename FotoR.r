

waterV1<-1.30E+06    #m3
waterV2<-1.06E+06
waterV3<-9.39E+05
waterV4<-2.67E+05
waterV5<-6.66E+05
waterV6<-1.63E+06
waterV7<-3.44E+06
waterV8<-9.51E+05
waterV9<-8.85E+05
waterV10<-1.22E+06

area<-411900000  #m2

siltOL<-silt$Oxic1/10^6
POMOL<-POM$Oxic1/10^6

fDOChg2   <-DOChg$Oxic1/(DOChg$Oxic1+hg$Oxic1+Phg$Oxic1); mean(fDOChg, na.rm=TRUE);plot(fDOChg*100)
fDOChg <- (10^3*(2.9*10^-6))/(1+(10^3*(2.9*10^-6))+((siltOL*3000)+(POMOL*(5.1*10^5))))
#uguale a primam
fDOCmehg <-DOCmehg$Oxic1/mehgT$Oxic1
fDOChg0  <-DOChg0$Oxic1/hg0$Oxic1
fdhg0    <-dhg0$Oxic1/hg0$Oxic1

fdisshg2   <-(DOChg$Oxic1+hg$Oxic1)/(DOChg$Oxic1+hg$Oxic1+Phg$Oxic1); mean(fDOChg2, na.rm=TRUE);plot(fDOChg*100)

#-------- conc Hg species pM
Hg0_pM1<-hg0$Oxic1/200.59*1000; mean(hg0$Oxic1)
Hg0_pmols1<-Hg0_pM1*oxic_vol_L  # bulk of Hg0 in upper oxic layer
Hg0_kmols1<-Hg0_pmols1/10^15
mean(Hg0_kmols1[1957:1968])
mean(Hg0_pM1[1957:1968])

mehg_<-mehgT$Oxic1              
mehg_pM<-mehg_/215*1000
MeHg_pmols<-mehg_pM*oxic_vol_L    # bulk of MeHg in upper oxic layer
MeHg_kmols1<-MeHg_pmols/10^15
mean(MeHg_kmols1[1957:1968])
mean(mehg_pM[1957:1968])




