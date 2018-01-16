br = c(0,0.25,0.5,1,2.5,5,10)
br
a = rep(mean(c(0,0.25)), 137)
b = rep(mean(c(0.25,0.5)), 106)
c = rep(mean(c(0.5,1)), 112)
d = rep(mean(c(1,2.5)), 154)
e = rep(mean(c(2.5,5)), 100)
f = rep(mean(c(5,10)), 33)
val = c(a,b,c,d,e,f)
summary(val)
val.cut <- cut(val, br)
summary(val.cut)
val.cut
val.freq = table(val.cut)
val.cut
mean(val)
hist(val, br,main="histogramme de bogoss",xlab="chiffre d'affaire",ylim=c(0,200), ylab="entreprise",right=FALSE, col='red',border="green", freq = TRUE)
sd(val)

