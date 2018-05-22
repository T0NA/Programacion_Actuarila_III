setwd("~/Tona/Progra III/Caso ll/Calidad de Hospitales - data")

outcome <- na.omit(read.csv("outcome-of-care-measures.csv", colClasses = "character"))
head(outcome)
ncol(outcome)
names(outcome)
  outcome[, 11] <- as.numeric(outcome[, 11])
 ## You may get a warning about NAs being introduced; that is okay
  hist(outcome[, 11])
#outcome[,11]  

  
#1
mejor <- function(estado, resultado) {
  outcome <- (read.csv("outcome-of-care-measures.csv", colClasses = "character"))
  x <- c(outcome[,2])
  y <- c(outcome[,7])
  
  if (resultado=="ataque"){
    z <- c(outcome[,11])
  } else if (resultado=="falla") {
    z <- c(outcome[,17])
  } else if (resultado=="neumonia") {
    z <- c(outcome[,23])
  }
  
  t <- cbind(x,y,z)
  head(t)
  nrow(t)
  #t[1,2]
  w <- nrow(t)
  
  tona <- c()
  b <- 50
  for (nm in 1:w) {
    if (t[nm,2]==estado) {
      v <- t[nm,3]
      
      if (v < b) {
        b <- v
      }
      tona <- c(tona,v)
    }
  }
  
  #matrix(tona,ncol=1)
  for (nm2 in 1:w) {
    if (t[nm2,2]==estado) {
      if (t[nm2,3]==b) {
        nombre <- t[nm2,1] 
      }
    }
  }
  
  print(nombre)
  
}

source("mejor.R")
mejor("TX","falla")


a <- matrix(c(outcome[,7]),ncol=1)
head(a)
nrow(a)
a[a=="TX"]


e <- outcome[[c(7,23)]];outcome[[c(2,23)]]
e
outcome[,7] <- as.numeric(outcome[,7])
a<-c(outcome[,7])
a

outcome[,17]
