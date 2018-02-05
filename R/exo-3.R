#1#2
data3 <- read.csv("R/data3.txt", row.names=1,header = TRUE, sep="")
data3


#3
#moyenne
apply(data3,2,mean)
#variance
v=apply(data3,2,var)
variance<-10/11*v
variance
#10 et 3.75


#4
#covariance x1 / y1
c1=cov(data3$x1,data3$y1)
covariance1<-10/11*c1
covariance1
#covariance x2 / y2
c2=cov(data3$x2,data3$y2)
covariance2<-10/11*c2
covariance2
#covariance x3 / y3
c3=cov(data3$x3,data3$y3)
covariance3<-10/11*c3
covariance3
#covariance x4 / y4
c4=cov(data3$x4,data3$y4)
covariance4<-10/11*c4
covariance4
#elles valent à peu pres toute 5.5
#correlation x1 / y1
cor(data3$x1,data3$y1)
#correlation x2 / y2
cor(data3$x2,data3$y2)
#correlation x3 / y3
cor(data3$x3,data3$y3)
#correlation x4 / y4
cor(data3$x4,data3$y4)
#elles ont à peu pres les memes correlations


#5
plot(data3$x1,data3$y1)
plot(data3$x2,data3$y2)
plot(data3$x3,data3$y3)
plot(data3$x4,data3$y4)
#on voit que les variables sont différentes les unes des autres, elles ont toutes des formes différentes
#il faut donc parfois se mefier de l'interpretation des resultats notamment la moyenne, la variance
#et la correlation et toujours afficher des graphes qui sont plus parlant


#6
CENTERNDREDUIT<-c("x1","y1")
CETR<-data3[CENTERNDREDUIT]
CETR
CRDone=scale(CETR, center = TRUE, scale = TRUE)
CRDone
apply(CRDone,2,mean)
crv=apply(CRDone,2,var)
crvariance<-10/11*crv
crvariance
crcov=cov(CRDone)
crcovariance<-10/11*crcov
crcovariance
cor(CRDone)
plot(CRDone)

