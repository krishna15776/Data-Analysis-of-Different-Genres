totaldata<-aggregate(Critic_Score ~ Genre,boxplotdata,sum)

names(totaldata)[2]="totalCritic_Score"

ccount1<-sum(newdata$Genre == "Sports")
ccount2<-sum(newdata$Genre == "Racing")
ccount3<-sum(newdata$Genre == "Role-Playing")
ccount4<-sum(newdata$Genre == "Party")
ccount5<-sum(newdata$Genre == "Action")
ccount6<-sum(newdata$Genre == "Misc")
ccount7<-sum(newdata$Genre == "Shooter")
ccount8<-sum(newdata$Genre == "Fighting")
ccount9<-sum(newdata$Genre == "Simulation")
ccount10<-sum(newdata$Genre == "Platform")

totaldata$mean<- NA
totaldata$mean[1]<-(totaldata$totalCritic_Score[totaldata$Genre=="Action"])/(ccount5)
totaldata$mean[2]<- (totaldata$totalCritic_Score[totaldata$Genre=="Fighting"])/(ccount8)
totaldata$mean[3]<-(totaldata$totalCritic_Score[totaldata$Genre=="Misc"])/(ccount6)
totaldata$mean[4]<-(totaldata$totalCritic_Score[totaldata$Genre=="Party"])/(ccount4)
totaldata$mean[5]<-(totaldata$totalCritic_Score[totaldata$Genre=="Platform"])/(ccount10)
totaldata$mean[6]<-(totaldata$totalCritic_Score[totaldata$Genre=="Racing"])/(ccount2)
totaldata$mean[7]<-(totaldata$totalCritic_Score[totaldata$Genre=="Role-Playing"])/(ccount3)
totaldata$mean[8]<-(totaldata$totalCritic_Score[totaldata$Genre=="Shooter"])/(ccount7)
totaldata$mean[9]<-(totaldata$totalCritic_Score[totaldata$Genre=="Simulation"])/(ccount9)
totaldata$mean[10]<-(totaldata$totalCritic_Score[totaldata$Genre=="Sports"])/(ccount1)

totaldata$StandardDeviation<- NA
totaldata$StandardDeviation[1]<-sd(boxplotdata$Critic_Score[boxplotdata$Genre=="Action"])
totaldata$StandardDeviation[2]<-sd(boxplotdata$Critic_Score[boxplotdata$Genre=="Fighting"])
totaldata$StandardDeviation[3]<-sd(boxplotdata$Critic_Score[boxplotdata$Genre=="Misc"])
totaldata$StandardDeviation[4]<-sd(boxplotdata$Critic_Score[boxplotdata$Genre=="Party"])
totaldata$StandardDeviation[5]<-sd(boxplotdata$Critic_Score[boxplotdata$Genre=="Platform"])
totaldata$StandardDeviation[6]<-sd(boxplotdata$Critic_Score[boxplotdata$Genre=="Racing"])
totaldata$StandardDeviation[7]<-sd(boxplotdata$Critic_Score[boxplotdata$Genre=="Role-Playing"])
totaldata$StandardDeviation[8]<-sd(boxplotdata$Critic_Score[boxplotdata$Genre=="Shooter"])
totaldata$StandardDeviation[9]<-sd(boxplotdata$Critic_Score[boxplotdata$Genre=="Simulation"])
totaldata$StandardDeviation[10]<-sd(boxplotdata$Critic_Score[boxplotdata$Genre=="Sports"])

totaldata$count <- NA
totaldata$count[1] <-ccount5
totaldata$count[2] <-ccount8
totaldata$count[3] <-ccount6
totaldata$count[4] <-ccount4
totaldata$count[5] <-ccount10
totaldata$count[6] <-ccount2
totaldata$count[7] <-ccount3
totaldata$count[8] <-ccount7
totaldata$count[9] <-ccount9
totaldata$count[10] <-ccount1

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Action"],boxplotdata$Critic_Score[boxplotdata$Genre == "Fighting"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Action"],boxplotdata$Critic_Score[boxplotdata$Genre == "Platform"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Action"],boxplotdata$Critic_Score[boxplotdata$Genre == "Racing"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Action"],boxplotdata$Critic_Score[boxplotdata$Genre == "Role-Playing"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Action"],boxplotdata$Critic_Score[boxplotdata$Genre == "Shooter"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Action"],boxplotdata$Critic_Score[boxplotdata$Genre == "Sports"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Fighting"],boxplotdata$Critic_Score[boxplotdata$Genre == "Action"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Fighting"],boxplotdata$Critic_Score[boxplotdata$Genre == "Misc"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Fighting"],boxplotdata$Critic_Score[boxplotdata$Genre == "Party"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Fighting"],boxplotdata$Critic_Score[boxplotdata$Genre == "Racing"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Fighting"],boxplotdata$Critic_Score[boxplotdata$Genre == "Simulation"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Misc"],boxplotdata$Critic_Score[boxplotdata$Genre == "Fighting"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Misc"],boxplotdata$Critic_Score[boxplotdata$Genre == "Party"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Misc"],boxplotdata$Critic_Score[boxplotdata$Genre == "Platform"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Misc"],boxplotdata$Critic_Score[boxplotdata$Genre == "Role-Playing"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Misc"],boxplotdata$Critic_Score[boxplotdata$Genre == "Shooter"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Misc"],boxplotdata$Critic_Score[boxplotdata$Genre == "Sports"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Party"],boxplotdata$Critic_Score[boxplotdata$Genre == "Fighting"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Party"],boxplotdata$Critic_Score[boxplotdata$Genre == "Misc"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Party"],boxplotdata$Critic_Score[boxplotdata$Genre == "Platform"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Party"],boxplotdata$Critic_Score[boxplotdata$Genre == "Racing"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Party"],boxplotdata$Critic_Score[boxplotdata$Genre == "Role-Playing"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Party"],boxplotdata$Critic_Score[boxplotdata$Genre == "Shooter"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Party"],boxplotdata$Critic_Score[boxplotdata$Genre == "Simulation"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Party"],boxplotdata$Critic_Score[boxplotdata$Genre == "sports"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Platform"],boxplotdata$Critic_Score[boxplotdata$Genre == "Action"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Platform"],boxplotdata$Critic_Score[boxplotdata$Genre == "Misc"],var.equal = TRUE)

t.test(boxplotdata$Critic_Score[boxplotdata$Genre == "Platform"],boxplotdata$Critic_Score[boxplotdata$Genre == "Simulation"],var.equal = TRUE)







