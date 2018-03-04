mtcars

#1 Creacion del objeto y revicion
t <- data.frame(a=mtcars)
  t
  dput (t)

#2 Guardar el objeto    
dput(t, file = "~/Tarea/Carros.R")

#Creacion de un nuevo objeto(Data.frame)
CarrosTonatiuh <- dget(file="~/Tarea/Carros.R")
