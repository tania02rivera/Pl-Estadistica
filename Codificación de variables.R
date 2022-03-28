
#________RECODIFICACION DE VARIABLES___________

# Se trabaja con la matriz "escuela.xslx"

# 1.- Importacion de la matriz 


#------------------------------------------
#    Exploracion de la matriz
#------------------------------------------
dim(Escuela)
str(Escuela)
summary(Escuela)


#-------------------------------------------
#      Configuracion de variables
#--------------------------------------------


Escuela$genero<-factor(Escuela$genero,
                     levels=c("Femenino","Masculino"))

Escuela$grupo<-factor(Escuela$grupo,
                      levels = c("A","B","C"))

Escuela$Matematicas<-factor(Escuela$Matematicas,
                      levels = c ("5","6","7","8","9","10"))

Escuela$Español<-factor(Escuela$Español,
                      levels = c ("5","6","7","8","9","10"))

Escuela$Ciencias<-factor(Escuela$Ciencias,
                        levels = c ("5","6","7","8","9","10"))

Escuela$Geografia<-factor(Escuela$Geografia,
                        levels = c ("5","6","7","8","9","10"))


summary(Escuela)

#---------------------------------
#   Librerías
#----------------------------------
install.packages("ggplot2")

library(ggplot2)


# ------------------------------------------------
#         Boxplot
#--------------------------------------------------

# 1.- Creación de un vector de color
color=c("coral3","deepskyblue4","darkorange","forestgreen")

# ----------------Nivel de desempeño en matematicas------------------------

GB2<-ggplot(Escuela, aes(x=Matematicas))+
  geom_bar(colour= "black", fill="coral3")+
  ggtitle("Gráfico de Barras")+
  xlab("Matematicas")+
  ylab("Frecuencias")+
  theme_minimal()

# 5. Visualizacion del objeto
GB2

# ----------------Nivel de desempeño en español------------------------
GB2<-ggplot(Escuela, aes(x=Español))+
  geom_bar(colour= "black", fill="deepskyblue4")+
  ggtitle("Gráfico de Barras")+
  xlab("Español")+
  ylab("Frecuencias")+
  theme_minimal()

# 5. Visualizacion del objeto
GB2

# ----------------Nivel de desempeño en ciencias------------------------

GB2<-ggplot(Escuela, aes(x=Ciencias))+
  geom_bar(colour= "black", fill="darkorange")+
  ggtitle("Gráfico de Barras")+
  xlab("Ciencias")+
  ylab("Frecuencias")+
  theme_minimal()

# 5. Visualizacion del objeto
GB2

# ----------------Nivel de desempeño en geografia------------------------

GB2<-ggplot(Escuela, aes(x=Geografia))+
  geom_bar(colour= "black", fill="forestgreen")+
  ggtitle("Gráfico de Barras")+
  xlab("Geografia")+
  ylab("Frecuencias")+
  theme_minimal()

# 5. Visualizacion del objeto
GB2
