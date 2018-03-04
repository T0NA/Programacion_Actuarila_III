#Lista
x <- list(1, "a", TRUE, 3+2i, 5L, 1:50)
x
#Todos los elementos de una lista mantienen la clase que originalmente 

#Matrices
m <- matrix(nrow = 2, ncol = 3)
m <- matrix(NA,2,3)
m
dim(m)
attributes(m)
#attributes me muestra una lista en donde primero me muestra su dim y luego sus elementos
#Si se deja un espacio es una lista

#Como llenar una matrix
m <- matrix(data=1:6, nrow = 2, ncol = 3)
m <- matrix(1:6, 2, 3)
m

#La manera automatica de llenarse fue columna por columna
#Si yo quisiera que se llenara fila por fila seria
m <- matrix(data=1:6, nrow = 2, ncol = 3, byrow = TRUE)
m <- matrix(1:6,2,3,T)
m
#Una manera alternativa de crear una matrix es desde un vector y modificar su dimencion
m <- 1:10
m
dim(m) <- c(2,5,)
m
#Otra forma de crear matrices es a traves de unir diferentes vectores.
x <- 1:3
y <- 10:12
#CBind, une columnas por columnas
cbind(x,y)
#RBind, une columnas por filas
rbind(x,y)

#Factores
x <- factor(c("Si", "Si", "No", "No" ,"Si"))
x

x <- factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"))
x
#Los niveles se ordenan en orden alfabetico

table(x)
#La funcion table nos realiza un conteo de los elementos, cuantas veces aparecio

unclass(x)
#Desace elementos de formatos para presentarce

x <- factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"), levels=c("Rojo", "Amarillo", "Verde", "Azul"))
x

#Valores faltantes
x <- c(1,2,NA,10,3)
is.na(x)     #valor faltante detectado
is.nan(x)    #Valor no numerico que no es faltante

y <- c(1,2,NaN,10,3)
is.na(y)     #valor faltante detectado
is.nan(y)    #Valor no numerico que no es faltante

#Data Frame
x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
x
nrow(x)
ncol(x)

#Names
x <- 1:3
names(x)
names(x) <- c("foo", "bar", "smurf")
x
names(x)

x <- list(a=1,b=2,c=3)
x

#Matrices
x <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a","b"),c("c","d"))
x
