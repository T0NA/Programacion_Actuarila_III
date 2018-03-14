#Dump y source

setwd("~/GitHub/Programacion_Actuarila_III")
x <- "Sofware Acturial III"
y <- data.frame(a=1, b="a")
dump(c("x","y"),file="data.R") 
rm(x,y)
source("data.R")

#dump y source trabajan con las instrucciones de codigo que permitiran volver al construir un objeto en lugar de on=btenertlo desde una ubicacion guardado.

?????????
#Conexiones
con <- url("https://www.fcfm.buap.mx/")
x <- readLines(con,7)
x[7] <- "\t<title>FCFM: Estariamos mejor con ya sabes quien</title>"
writeLines(x, "FCFM.txt") #Guardo el codigo de la pagina

#Subconjutos
#Creamos un vector
x <- c("a", "b", "c", "d", "e")
#Veamos el vector
x
#Extraemos el elemento con []
x[1] #Estas son listas con un solo elemento
x[2]
#Tambien podemos extraer una secuencia de elementos
x[1:4]
#Es posible extraer los elementos que cumplen una restriccion
x[x>"b"]
#De manera equivalente se puede extraer un vector logico
u <- x == "c"
u
x[u]
x[5-2]
x[5-4]

#Creamos una lista
x <- list(foo=1:4, bar=0.6)
x
x[1]        #Me extrae el objeto como una lista, conserva la clase del objeto de donde lo saque
x[[1]]      #Conserva la clase del objeto extraido

x$foo       #El resultado fue un vector como el de doble corchete
x["bar"]    #clse desde donde lo extrajiste
x[["bar"]]  #Clase del objeto

x <- list(foo=1:4, bar=0.6, baz = "Hola")
x[c(1,3)]     #Extrea elementos no secuenciales 1 si 2 no, 3 si
x[[c(1,3)]    #Extrea secuencias desde los elementos extraidos
              #Primero extrae el 1er elemento y de ahi extrae la 3ra posicion
  
name <- "baz"
x[name]
x[[name]]
x$name
#Si yo quiero realizar extracciones con el signo de pesos es necesario de escribir el
#nombre del objeto que quiero extraer, ya que no es capaz de realizar extracciones

#Se pueden extraer elementos de los elementos extraidos
x <- list(a = list(10,12,14), b = list(3.14,2.81))
x[[c(1,3)]]

#Subconjuto de una matriz
x <- matrix(1:6,2,3)
x
#El resultado es un vector
x[1,2]
#Con drop = FALSE, se mantiene la dimension y
#el resultado sera una matriz.
x[1,2, drop = FALSE]

x <- matrix(1:6,2,3)
x
#Si dejamos solamente el espacio, el resultado sera un vector
x[1, ]
#Si usamos un drop = FALSE el resultado sera una matriz
x[1, , drop = FALSE]

x <- list(aardvark = 1:5)
x$a
x[["a"]]  
x[["a", exact = FALSE]]
