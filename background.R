str(dati)

sud_8_9_10<-filter(dati, st_num==335)
csud_7<-filter(dati, st_num==298)
b6<-filter(dati, st_num==142)
b6_2<-filter(dati, st_num==212)
b5<-filter(dati, st_num==92)
b3<-filter(dati, st_num==52)
b1_2<-filter(dati, st_num==6)
b4<-filter(dati, st_num==33)
b3<-filter(dati, st_num==184)

background<-c(b1_2$Hg[5]*1000,b4$Hg[5]*1000,
                mean(c(b6$Hg[5],b6_2$Hg[5])*1000),(b5$Hg[5]*1000),
                     (b3$Hg[5]*1000),csud_7$Hg*1000,sud_8_9_10$Hg[5]*1000)

background<-c(b1_2$Hg[5]*1000,b4$Hg[5]*1000,
              mean(c(b6$Hg[5],b6_2$Hg[5])*1000),(b5$Hg[5]*1000),
              csud_7$Hg*1000,sud_8_9_10$Hg[5]*1000)

boxplot(background)
median(background)
median(background1)

background1<-c(b1_2$Hg[5]*1000,b4$Hg[5]*1000)
boxplot(background1)

