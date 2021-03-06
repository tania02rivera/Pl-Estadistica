
# ____________________________Tablas de frecuencias_________________________

# 1.- Importar la matriz iris
data(iris)

# 2.- Exploración de la matriz
# dimenión de la matriz tiene 150 individuos y 5 variables
dim(iris)

# 3.- Nombre de las variables
colnames(iris)

# 4.- Tipos de variables
str(iris)

# 5.-Vizualización de una variable especifica
iris$Species

# 6.- En busca de valores perdidos
anyNA(iris)


# ---------------------------------------------------------------------------
# Generación de tablas de freuencia
#----------------------------------------------------------------------------

# 1.- Posición en una variable específica Petal.Lenght indico que el nombre
#me lo acorte a PL, lo que resulte de esa indicación quiero que lo ponga en
#formato tabla, lo que resulte adquiera formato de data.frame a partir de
#lo anterior, voy a generar una nueva variable (objeto) llamada tabla_PL. 
tabla_PL<-as.data.frame(table(PL=iris$Sepal.Length))

# 2.-Freuencia obsoluta
tabla_PL

# 3.- Se construye la tabla de frecuencias completOs redondeando
# a 3 decimales

transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

# 4.- Agrupación de variables 8 clases
tabla_clases<-as.data.frame(table(Petal.Lenght=factor(cut(iris$Petal.Length,
                                                          breaks = 8))))
#5.- Visualización de la tabla
tabla_clases

# 6.- Construcción de tabla de frecuencia completa redondeado a 3 decimales
tabla<-transform(tabla_clases,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))


# 7.- Visualizar la tabla
tabla

