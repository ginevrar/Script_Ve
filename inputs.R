setwd('C:/Users/Ginevra/Dropbox/')
input<-read.table('input_colette.txt', header=TRUE)

cumsum(input$TOT[15:117])/1000; 
ax2<-(seq(1900,2100, by=1));str(ax2)
str(input)
input$anno[15:117]; cumsum(input$TOT[15:117])/1000; 

perc_atmo<-input$Atmo/(input$TOT)*100
perc_fiu<-input$Fiumi/(input$TOT)*100
perc_Marg<-input$Marghera/(input$TOT)*100
perc_city<-input$city/(input$TOT)*100
perc_tot<-input$TOT/(input$TOT)*100

#perc_atmo[127:151]<-0
#perc_fiu[127:151]<-0
#perc_Marg[127:151]<-0
#perc_city[127:151]<-0

str(ax2)
str(input)

png('Hg_input.png', width = 32, height = 22,res=400,
    units = "cm")
par(mfrow=c(2,1),mar=c(1,5,0,0), 
    oma=c(3,0,4,1))
plot(input$anno, input$Atmo, col="cyan3", type="l", ylim=c(0,1100), 
     main='', ylab= expression(paste("kg y"^-1)), xaxt='n',
     xlab= " ",  lwd=2, cex.axis=1.5, cex.lab=1.7)
mtext(side=3,cex=2, line=2,expression(paste('Hg'[T]*' input to the lagoon')))
par(new=TRUE)
plot(input$anno,input$Fiumi, col="chartreuse", type="l", 
     xaxt='n',yaxt='n', ylim=c(0,1100), lwd=2, xaxt='n',
     ylab= " ",xlab= " ")
par(new=TRUE)
plot(input$anno,input$Marghera, bg='grey90' ,col='gray50',type='l', xaxt='n', 
     lwd=2, xlab= " ", ylab= " ", 
     pch=23, cex=2, xaxt='n',yaxt='n',ylim=c(0,1100))
par(new=TRUE)
plot(input$anno,input$city, bg='grey90' ,col='darkgoldenrod',type='l', xaxt='n', 
     lwd=2, xlab= " ", ylab= " ", 
     pch=23, cex=2, xaxt='n',yaxt='n',ylim=c(0,1100))
par(new=TRUE)
plot(input$anno,input$TOT, bg='grey90' ,col='black',type='l', xlab= " ", xaxt='n', lwd=2, ylab= " ", 
     pch=23, cex=2, xaxt='n',yaxt='n',ylim=c(0,1100))
legend(ax2[120],900,col=c('cyan3',"chartreuse3",'darkgoldenrod','grey50','black'),
       legend=c('Atmosphere','River load','Venice City','Industrial area','Total'),
       lty=1, lwd=2)

plot(input$anno, perc_atmo, col="cyan3", type="l", ylim=c(0,100), 
     main='', ylab= "%", 
     xlab= " ",  lwd=2, cex.axis=1.5, cex.lab=1.7,cex.main=2.3)
par(new=TRUE)
plot(input$anno,perc_fiu, col="chartreuse", type="l", 
     xaxt='n',yaxt='n', ylim=c(0,100), lwd=2,
     ylab= " ",xlab= " ")
par(new=TRUE)
plot(input$anno,perc_Marg, bg='grey90' ,col='gray50',type='l', 
     lwd=2, xlab= " ", ylab= " ", 
     pch=23, cex=2, xaxt='n',yaxt='n',ylim=c(0,100))
par(new=TRUE)
plot(input$anno,perc_city, bg='grey90' ,col='darkgoldenrod',type='l', 
     lwd=2, xlab= " ", ylab= " ", 
     pch=23, cex=2, xaxt='n',yaxt='n',ylim=c(0,100))
dev.off()

input$Atmo[123:202]
input$anno[123:202]
  input$Fiumi[123:202]
  input$city[123:202]
  input$Marghera[123:202]
  input$anno[123:202]

plot(input$anno, input$Atmo, col="cyan3", type="l", ylim=c(0,60), 
     main='', ylab= expression(paste("kg y"^-1)), 
     xlab= " ",  lwd=2, cex.axis=1.5, cex.lab=1.7)
mtext(side=3,cex=2, line=2,expression(paste('Hg'[T]*' input to the lagoon')))
par(new=TRUE)
plot(input$anno,input$Fiumi, col="chartreuse", type="l", 
     xaxt='n',yaxt='n', ylim=c(0,60), lwd=2, xaxt='n',
     ylab= " ",xlab= " ")
par(new=TRUE)
plot(input$anno,input$city, bg='grey90' ,col='darkgoldenrod',type='l', xaxt='n', 
     lwd=2, xlab= " ", ylab= " ", 
     pch=23, cex=2, xaxt='n',yaxt='n',ylim=c(0,60))


