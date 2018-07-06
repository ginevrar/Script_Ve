
layerA<-rbind(median(box1_A_hg$Hg),median(box2_A_hg$Hg),median(box3_A_hg$Hg),
        median(box4_A_hg$Hg),median(box5_A_hg$Hg),median(box6_A_hg$Hg),
        median(box7_A_hg$Hg),median(box8_A_hg$Hg),median(box9_A_hg$Hg),(box10_A_hg$Hg))


layerA<-mean(hg$la1[1298:1309]),mean(hg$la2[1298:1309]), mean(hg$la3[1298:1309]), mean(hg$la4[1298:1309]),

b5_profile_mod<-c(mean(hg$la5[1298:1309]), mean(hg$lb5[1298:1309]),mean(hg$lc5[1298:1309]),mean(hg$ld5[1298:1309]), NA)
b6_profile_mod<-c(mean(hg$la6[1298:1309]), mean(hg$lb6[1298:1309]),mean(hg$lc6[1298:1309]),mean(hg$ld6[1298:1309]), NA)
b7_profile_mod<-c(mean(hg$la7[1298:1309]), mean(hg$lb7[1298:1309]),mean(hg$lc7[1298:1309]),mean(hg$ld7[1298:1309]), NA)
b8_profile_mod<-c(mean(hg$la8[1298:1309]), mean(hg$lb8[1298:1309]),mean(hg$lc8[1298:1309]),mean(hg$ld8[1298:1309]), NA)
b9_profile_mod<-c(mean(hg$la9[1298:1309]), mean(hg$lb9[1298:1309]),mean(hg$lc9[1298:1309]),mean(hg$ld9[1298:1309]), NA)
b10_profile_mod<-c(mean(hg$la10[1298:1309]), mean(hg$lb10[1298:1309]),mean(hg$lc10[1298:1309]),mean(hg$ld10[1298:1309]), NA)

axis(1, at = my.at, labels = my.at)
