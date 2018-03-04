mtcars

#1 Creacion del objeto y revicion
T <- data.frame(a=mtcars)
  T
  dput (T)

#2 Guardar el objeto    
dput(T, file = "~/GitHub/Programacion_Actuarila_III/Carros.R")

#Creacion de un nuevo objeto(Data.frame)
CarrosTonatiuh <- dget(file="~/GitHub/Programacion_Actuarila_III/Carros.R")
