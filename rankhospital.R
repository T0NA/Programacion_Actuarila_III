setwd("~/Tona/Progra III/Caso ll/Calidad de Hospitales - data")

rankhospital <- function(estado, resultado, rank1){
outcome <- (read.csv("outcome-of-care-measures.csv", colClasses = "character"))
a <- outcome[outcome$State %in% c("TX"),]
#outcome[order(outcome$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack),]
x <- c(a[,2])
y <- c(a[,7])
  #resultado = "falla"
if (resultado=="ataque"){
    z <- c(a[,11])
  } else if (resultado=="falla") {
    z <- c(a[,17])
  } else if (resultado=="neumonia") {
    z <- c(a[,23])
  }

#t <- cbind(x,y,z)
contar <- nrow(outcome)

t <- data.frame("Hospital"=x,"state"=y,"rate"=z)
#t
#head(t)

t2<-t[order(t$rate),]
#head(t2)
t2$rank <- 1:nrow(t2)
#t2

#rank1=4
if (rank1=="mejor") {
  r <- t2[1,1]
}else if (rank1=="peor") {
  egg <- suppressWarnings(as.numeric(t2[,3]))
  pollo <- which.max(egg)
  r <- t2[pollo,1]
}else {
  r <- (t2[rank1,1])
}
print(r)
}

r
rankhospital("MD", "ataque","peor")
  