pdf("visualization.pdf");
library(readr)
vgsales_12_4_2019 <- read_csv("vgsales-12-4-2019.csv")
newdata<-vgsales_12_4_2019[!(is.na(vgsales_12_4_2019$Critic_Score) | vgsales_12_4_2019$Critic_Score==""), ]

boxplotdata <- newdata[newdata$Genre %in% c("Sports","Racing","Party", "Action", "Misc","Shooter",
 "Role-Playing", "Simulation","Fighting","Platform"), ]

boxplot(boxplotdata$Critic_Score ~ boxplotdata$Genre,boxplotdata,xlab="Genre",ylab="CriticScore",
  main="Box Graph between different Genres and CriticScore", col="green") 

total<-aggregate(Critic_Score ~ Genre,boxplotdata,sum)

names(total)[2]<-"TotalCritic_Score"

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


total$mean<-NA
total$mean[1]<-(total$TotalCritic_Score[total$Genre=="Action"])/(ccount5)
total$mean[2]<- (total$TotalCritic_Score[total$Genre=="Fighting"])/(ccount8)
total$mean[3]<-(total$TotalCritic_Score[total$Genre=="Misc"])/(ccount6)
total$mean[4]<-(total$TotalCritic_Score[total$Genre=="Party"])/(ccount4)
total$mean[5]<-(total$TotalCritic_Score[total$Genre=="Platform"])/(ccount10)
total$mean[6]<-(total$TotalCritic_Score[total$Genre=="Racing"])/(ccount2)
total$mean[7]<-(total$TotalCritic_Score[total$Genre=="Role-Playing"])/(ccount3)
total$mean[8]<-(total$TotalCritic_Score[total$Genre=="Shooter"])/(ccount7)
total$mean[9]<-(total$TotalCritic_Score[total$Genre=="Simulation"])/(ccount9)
total$mean[10]<-(total$TotalCritic_Score[total$Genre=="Sports"])/(ccount1)

boxplot(boxplotdata$Critic_Score ~ boxplotdata$Genre,data=boxplotdata,xlab="Genre",ylab="CriticScore",
  main="MEAN CRITIC SCORE BETWEEN GENRES",ylim=c(1,20),col="green");points(1:10,total$mean,col="red", pch=18)
 

h <- hist(boxplotdata$Critic_Score, 20,  main = "Histogram of critic_score ", xlab = "Critic_Score", ylab = "Frequency", col=rgb(0.2,0.8,0.5,0.5), freq= FALSE)
x <- seq(min(boxplotdata$Critic_Score), max(boxplotdata$Critic_Score), length=20)
y1 <- dnorm(x, mean=mean(boxplotdata$Critic_Score), sd=sd(boxplotdata$Critic_Score))
lines(x, y1, col="red")




dev.off()

