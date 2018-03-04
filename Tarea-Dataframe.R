mtcars

#1 Creacion del objeto y revicion
t <- data.frame(a=mtcars)
  t
  dput (t)

#2 Guardar el objeto    
dput(t, file = "~/GitHub/Programacion_Actuarila_III/Carros.R")

#Creacion de un nuevo objeto(Data.frame)
CarrosTonatiuh <- dget(file="~/GitHub/Programacion_Actuarila_III/Carros.R")
