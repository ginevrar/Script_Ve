#setwd('C:/Users/gi/Dropbox/NNN61')
#setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')
setwd('C:\\Users\\gi\\Desktop\\2156\\b')

volat<-read.table('volat.txt', header=T); str(volat)
names(volat)<-'vol'
outflow<-read.table('Outflow_tot_kgy.txt', header=T)
Disper<-read.table('Disper_tot_kgy.txt', header=T);str(Disper)
sed_bal_short<-read.table('Sed_bal.txt')
input<-read.table('tot_input.txt')

#sed_bal_ugdm2<-read.table('Net_ugm2d.txt')
#sed_bal<-read.table("Net_hgSed_kgy.txt", header=TRUE);


hg_outflow_kg_y<-outflow[1:2412,]
hg_disper_kg_y<-Disper[1:2412,]

depo_Phg_kg_y_media1<-sed_bal$x
depo_Phg_kg_y_media<-sed_bal$x
plot(depo_Phg_kg_y_media1)

evasione_kg_y<-volat

str(hg_outflow_kg_y)
hg_outflow_kg_y_media<-tapply(hg_outflow_kg_y, rep(1:(length(hg_outflow_kg_y)/12),each = 12),mean)
evasione_kg_y_media<-tapply(evasione_kg_y[1:2412,], rep(1:(length(evasione_kg_y[1:2412,])/12),each = 12),mean)
hg_disper_kg_y_media<-tapply(hg_disper_kg_y, rep(1:(length(hg_disper_kg_y)/12),each = 12),mean)
#evasione_kg_y_media<-volat

#diffusion_kg_y_media<-tapply(diffusion_kg_y, rep(1:(length(diffusion_kg_y)/12),each = 12),mean)
#burial2_kg_y_media<-tapply(burial2_kg_y, rep(1:(length(burial2_kg_y)/12),each = 12),mean)
plot(evasione_kg_y_media)
#____________SOMMA DEI TERMINI DI OUTPUT delle ACQUE
Output_terms<-as.numeric(evasione_kg_y_media + depo_Phg_kg_y_media[3:203] +
                            hg_outflow_kg_y_media+
                           hg_disper_kg_y_media ); str(Output_terms); 

ax2<-(seq(1900,2100, by=1))

# output 1910 
ev_10<-mean(evasione_kg_y_media[11])
dp_10<-mean(depo_Phg_kg_y_media[11])
outf_10<-mean(hg_outflow_kg_y_media[11])
disp_10<-mean(hg_disper_kg_y_media[11])

ev_95<-mean(evasione_kg_y_media[100])
dp_95<-mean(depo_Phg_kg_y_media[100])
outf_95<-mean(hg_outflow_kg_y_media[100])
disp_95<-mean(hg_disper_kg_y_media[100])

ev_70<-mean(evasione_kg_y_media[71])
dp_70<-mean(depo_Phg_kg_y_media[71])
outf_70<-mean(hg_outflow_kg_y_media[71])
disp_70<-mean(hg_disper_kg_y_media[71])

# output 2019 
ev_19<-mean(evasione_kg_y_media[120])
dp_19<-mean(depo_Phg_kg_y_media[120])
outf_19<-mean(hg_outflow_kg_y_media[120])
disp_19<-mean(hg_disper_kg_y_media[120])

T_ou_10<--ev_10-dp_10+outf_10; T_ou_10
T_ou_70<--ev_70-dp_70+outf_70+disp_70;  T_ou_70 # 750 da acque a sed
T_ou_95<--ev_95+outf_95+disp_95;  T_ou_95
T_ou_19<--ev_19-dp_19+outf_19+disp_19;T_ou_19
dp_95

# input from Marghera 
M_10<-input$ind3[11];M_70<-input$ind3[71]
M_95<-input$ind3[100];M_19<-input$ind3[120]

# input from River 
F_10<-input$ri[11]+input$riv_mehg[11]; F_70  <-input$ri[71]+input$riv_mehg[71]
F_95<-input$ri[100]+input$riv_mehg[100]; F_19<-input$riv_mehg[120]

# input from atmosph. 
atm_10<-input$de[11]; atm_70  <-input$de[71] 
atm_95<-input$de[100]; atm_19<-input$de[120] 

# input from city 
V_10<-input$ci[11]; V_70  <-input$ci[71] 
V_95<-input$ci[100]; V_19<-input$ci[120] 

outff_10<-outf_10+disp_10
outff_70<-outf_70+disp_70
outff_95<-outf_95+disp_95
outff_19<-outf_19+disp_19

All_out_10=c(NA,-ev_10,-dp_10,outff_10)
All_out_70=c(NA,-ev_70,-dp_70,outff_70)
All_out_95=c(NA,-ev_95,-dp_95,outff_95)
All_out_19=c(NA,-ev_19,-dp_19,outff_19)

All_in_10=c(M_10,F_10,atm_10,V_10)
All_in_70=c(M_70,F_70,atm_70,V_70)
All_in_95=c(M_95,F_95,atm_95,V_95)
All_in_19=c(M_19,F_19,atm_19,V_19)

T_in_10=M_10+F_10+atm_10+V_10
T_in_70=M_70+F_70+atm_70+V_70
T_in_95=M_95+F_95+atm_95+V_95
T_in_19=M_19+F_19+atm_19+V_19

T_in_10   # 19 kg 
T_ou_10   # ne escono 7 
T_in_70   # ne escono 7 
T_ou_70   # ne escono 7 
T_in_95   # ne escono 7 
T_ou_95   # ne escono 7 


M_70/T_in_70*100; M_95/T_in_95*100;M_19/T_in_19*100

atm_10 + F_10+ V_10+M_10
outf_10+dp_10+ev_10

bilancio_hg_10<-c(outff_10,
                  -dp_10,-ev_10,atm_10, F_10, V_10,M_10)
names(bilancio_hg_10)<-c('Outflow','Deposizione','Evasione','Atmosfera','Fiumi','Citta','Marghera')

sum(bilancio_hg_10)
sum(All_in_10)

diff10<-tot_w_reser_m[12]-tot_w_reser_m[11]

sum(All_in_70)
outf_70-depo70-ev_10
sum(bilancio_hg_70)

diff70<-tot_w_reser_m[72]-tot_w_reser_m[71]
depo70<-sum(All_in_70)+outf_70-ev_70-diff70

diff95<-as.numeric(tot_w_reser_m[97]-tot_w_reser_m[96])
depo95<-36.83413
depo95<-sum(All_in_95)+outf_95-ev_95-diff95
sum(bilancio_hg95)

bilancio_hg_70<-c(outf_70,-depo70,-ev_70,atm_70, F_70, V_70,M_70) 
names(bilancio_hg_70)<-c('Outflow','Deposizione','Evasione','Atmosfera','Fiumi','Citta','Marghera')

bilancio_hg95<-c(outf_95,-dep95,-ev_95,atm_95, F_95, V_95,M_95) 
names(bilancio_hg95)<-c('Outflow','Deposizione','Evasione','Atmosfera','Fiumi','Citta','Marghera')

sum(bilancio_hg95)
 

#sum(All_in_95)+outf_95-ev_70-diff95 
 
bilancio_hg2019<-c(outf_19,-dp_19,-ev_19, atm_19,F_19, V_19,M_19) 
names(bilancio_hg2019)<-c('Outflow','Deposizione','Evasione','Atmosfera','Fiumi','Citta','Marghera')

sum(bilancio_hg2019)
diff19<-tot_w_reser_m[121]-tot_w_reser_m[120]
depo19<-sum(All_in_19)+outf_19-ev_19-diff19


png('TUTTI_Bilancis2z3__bb__2__.png',height = 15, width=22,
    units = 'cm',res=300)
par(mfrow=c(2,2),cex.axis=1.4, bty='n', mgp=c(2.3, 1, 0), 
    mar=c(4,1,2,1))
barplot(bilancio_hg_10,horiz =T, xlab='kg/y',
        main='Hg Budget in Lagoon Water  \n (1910)',
        axisnames=F,border='darkgrey',
        xlim=c(-20,20),cex.names = .6,las=1,
        col=c('darkblue','darkorange',
              '#008B8B','#00cccc','royalblue','#ECC16F','grey60'))
#axis(side=2,at=c(1.2,2.3,3.4,4.5,5.6,7,8),las=2,col='white',
  #   line=-6,  labels = names(bilancio_hg_10), cex=.5)
text(-20,8.1, expression("Hg"[T]*~"Industrial"), adj=0,cex=.7)
text(-20,6.9, expression("Hg"[T]*~"Venice City"),adj=0, cex=.7)
text(-20,5.5, expression("Hg"[T]*~"River Load"), adj=0,cex=.7)
text(-20,4.3, expression("Hg"[p]*~"Atmospheric Deposition"), adj=0,cex=.7)
text(20,3.3, expression("Hg"^0*~"Evasion"),adj=1, cex=.7)
text(20,2.1, expression("Hg"[T]*~"Water-Sediment Exchange"),adj=1, cex=.7)
text(20,.801, expression("Hg"[T]*~"Outflow"), cex=.7,adj=1)
mtext(side=1, 'Input', at=20,line=2, font=2)
mtext(side=1, 'Onput', at=-20,line=2, font=2)

barplot(bilancio_hg_70,horiz =T, xlab='kg/y',
        main='Hg Budget in Lagoon Water  \n (1970)',names.arg = F,
        xlim=c(-1100,1100),cex.names = .6,border='darkgrey',
        axisnames=F,
        col=c('darkblue','darkorange','#008B8B','#00cccc','royalblue','#ECC16F','grey60'))
text(-1000,8.1, expression("Hg"[T]*~"Industrial"), adj=0,cex=.7)
text(-1000,6.9, expression("Hg"[T]*~"Venice City"),adj=0, cex=.7)
text(-1000,5.5, expression("Hg"[T]*~"River Load"), adj=0,cex=.7)
text(-1000,4.3, expression("Hg"[p]*~"Atmospheric Deposition"), adj=0,cex=.7)
text(1000,3.3, expression("Hg"^0*~"Evasion"),adj=1, cex=.7)
text(1000,2.1, expression("Hg"[T]*~"Water-Sediment Exchange"),adj=1, cex=.7)
text(1000,.801, expression("Hg"[T]*~"Outflow"), cex=.7,adj=1)
mtext(side=1, 'Input', at=1000,line=2, font=2)
mtext(side=1, 'Onput', at=-1000,line=2, font=2)


barplot(bilancio_hg95, horiz = T,xlab='kg/y',
        main='Hg Budget in Lagoon Water  \n (1995)',
        cex.names=0.6,xlim=c(-100,100),border='darkgrey',
        axisnames=F,las=1,
        col=c('darkblue','darkorange','#008B8B','#00cccc','royalblue','#ECC16F','grey60'))
text(-100,8.1, expression("Hg"[T]*~"Industrial"), adj=0,cex=.7)
text(-100,6.9, expression("Hg"[T]*~"Venice City"),adj=0, cex=.7)
text(-100,5.5, expression("Hg"[T]*~"River Load"), adj=0,cex=.7)
text(-100,4.3, expression("Hg"[p]*~"Atmospheric Deposition"), adj=0,cex=.7)
text(100,3.3, expression("Hg"^0*~"Evasion"),adj=1, cex=.7)
text(100,2.1, expression("Hg"[T]*~"Water-Sediment Exchange"),adj=1, cex=.7)
text(100,.801, expression("Hg"[T]*~"Outflow"), cex=.7,adj=1)
mtext(side=1, 'Input', at=100,line=2, font=2)
mtext(side=1, 'Onput', at=-100,line=2, font=2)


barplot(bilancio_hg2019, horiz = T, cex.names=0.6,
        xlab='kg/y',axisnames=F,las=1,border='darkgrey',
        xlim = c(-20,20),main='Hg Budget in Lagoon Water  \n (2019)',
        col=c('darkblue','darkorange','#008B8B','#00cccc','royalblue','#ECC16F','grey60'))
text(-20,8.1, expression("Hg"[T]*~"Industrial"),adj=0, cex=.7)
text(-20,6.9, expression("Hg"[T]*~"Venice City"),adj=0, cex=.7)
text(-20,5.5, expression("Hg"[T]*~"River Load"), adj=0,cex=.7)
text(-20,4.3, expression("Hg"[P]*~"Atmospheric Deposition"), adj=1,cex=.7)
text(20,3.3, expression("Hg"^0*~"Evasion"),adj=1, cex=.7)
text(20,2.1, expression("Hg"[T]*~"Water-Sediment Exchange"),adj=1, cex=.7)
text(20,.851, expression("Hg"[T]*~"Outflow"), cex=.7,adj=1)
mtext(side=1, 'Input', at=20,line=2, font=2)
mtext(side=1, 'Onput', at=-20,line=2, font=2)

dev.off()
