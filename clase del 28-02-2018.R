inicio <- read.table("data.txt", nrows=100)
clases <- sapply(inicio, class)
data <- read.table("data,txt", colclasses = clases)
#Con clclasses podemos identificar la clase de los primeros valores y luego
#se lo asigno a los demas valores faltantes.

#Creo el objeto
y <- data.frame(a=1,b="a")
y
#Estudio la manera en la que se guardara
dput(y)
#dput tradujo el objeto y en la linea de codigo
#lo guardo en mi disco duro
dput(y, file = "~/Tarea/y.R")

#genero un nuevo objeto a partir de la info guardada
y2 <- dget(file = "~/Tarea/y.R")

#Almacenar en tu disco duro la base de datos "mtcars" en un archivo "Carros.R"
#y posteriormente guardarlo en un data frame nuevo que se llama
#Carros(tunombre) carrosnacho
