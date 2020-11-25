setwd("~/GitHub/GEO-SCIENCE-ML-MODEL")
Sterols <- read.csv(file="Sterols.csv",sep=",")
rownames(Sterols) <- make.names(Sterols[,1],unique=TRUE)
Sterols <- Sterols[,-1]
Sterols <- as.data.frame(Sterols)
Sterols[is.na(Sterols)] <- 0
Sterols <- scale(Sterols)
cor(Sterols)
View(Sterols)