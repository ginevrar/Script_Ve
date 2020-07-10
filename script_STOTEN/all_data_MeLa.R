setwd('C:/Users/gi/Downloads/')
setwd('G:/Il mio Drive/MERCURIO/Venezia')

Mel<-read.table('MEla_vari.txt', header=T) 
Mel[Mel==-9999.0]<-NA ## replace -9999.0 to NA
Mel[Mel==-9998.0]<-NA ## replace -9999.0 to NA
Mel[Mel==-9997.0]<-NA ## replace -9999.0 to NA


Mel1<-Mel[(Mel$Staz != 'CS' & Mel$Staz !='CI'),]

Mela1$Zone[Mela1$Staz == 'CI' ] <- "Industriali"

str(Mel)

dev.new()
par(mfrow=c(2,2))
plot(Mel1$TSS,Mel1$Hg)
plot(Mel1$CHLA_CTD,Mel1$Hg)
plot(Mel1$POC,Mel1$Hg)
plot(Mel1$DOC,Mel1$Hg)

dev.new()
par(mfrow=c(2,2))
plot(Mel1$PH,Mel1$Hg)
plot(Mel1$TEMP,Mel1$Hg)
plot(Mel1$SAL,Mel1$Hg)
plot(Mel1$O2_PPM,Mel1$Hg)

dev.new()
par(mfrow=c(2,2))
plot(Mel1$CU,Mel1$Hg)
plot(Mel1$PB,Mel1$Hg)
plot(Mel1$ZN,Mel1$Hg)
plot(Mel1$CD,Mel1$Hg)

dev.new()
par(mfrow=c(2,2))
plot(Mel1$AS,Mel1$Hg)
plot(Mel1$CR,Mel1$Hg)
plot(Mel1$NI,Mel1$Hg)
plot(Mel1$CD,Mel1$Hg)

