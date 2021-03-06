
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

Escuela$Espa�ol<-factor(Escuela$Espa�ol,
                      levels = c ("5","6","7","8","9","10"))

Escuela$Ciencias<-factor(Escuela$Ciencias,
                        levels = c ("5","6","7","8","9","10"))

Escuela$Geografia<-factor(Escuela$Geografia,
                        levels = c ("5","6","7","8","9","10"))


summary(Escuela)

#---------------------------------
#   Librer�as
#----------------------------------
install.packages("ggplot2")

library(ggplot2)


# ------------------------------------------------
#         Boxplot
#--------------------------------------------------

# 1.- Creaci�n de un vector de color
color=c("coral3","deepskyblue4","darkorange","forestgreen")

# ----------------Nivel de desempe�o en matematicas------------------------

GB2<-ggplot(Escuela, aes(x=Matematicas))+
  geom_bar(colour= "black", fill="coral3")+
  ggtitle("Gr�fico de Barras")+
  xlab("Matematicas")+
  ylab("Frecuencias")+
  theme_minimal()

# 5. Visualizacion del objeto
GB2

# ----------------Nivel de desempe�o en espa�ol------------------------
GB2<-ggplot(Escuela, aes(x=Espa�ol))+
  geom_bar(colour= "black", fill="deepskyblue4")+
  ggtitle("Gr�fico de Barras")+
  xlab("Espa�ol")+
  ylab("Frecuencias")+
  theme_minimal()

# 5. Visualizacion del objeto
GB2

# ----------------Nivel de desempe�o en ciencias------------------------

GB2<-ggplot(Escuela, aes(x=Ciencias))+
  geom_bar(colour= "black", fill="darkorange")+
  ggtitle("Gr�fico de Barras")+
  xlab("Ciencias")+
  ylab("Frecuencias")+
  theme_minimal()

# 5. Visualizacion del objeto
GB2

# ----------------Nivel de desempe�o en geografia------------------------

GB2<-ggplot(Escuela, aes(x=Geografia))+
  geom_bar(colour= "black", fill="forestgreen")+
  ggtitle("Gr�fico de Barras")+
  xlab("Geografia")+
  ylab("Frecuencias")+
  theme_minimal()

# 5. Visualizacion del objeto
GB2
