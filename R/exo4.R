dat = read.csv("R/exo4.txt", header = TRUE, sep='\t')

summary(dat)

mat = dat[c("entr", "rece", "sean", "comm", "etab", "salle", "faut", "artes", "multi")]
cormat = cor(mat)
covmat = cov(mat)


library(FactoMineR)


mat_ = dat[c("popu", "entr", "rece", "sean", "comm", "etab", "salle", "faut", "artes", "multi")]
res_pca <- PCA (mat_, quali.sup=6)
plot.PCA(res_pca,col.quali="red", label="ind")
