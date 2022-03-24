
#______________________Tipos de variables_________________________________

install.packages("datos")
library(datos)

aero<-datos::aerolineas 
 dim(aero)

str(aero)  

aero$aerolinea 
aero$nombre 

grafico de barras




# 2.- Creación del gráfico
GB1<-ggplot(aerolineas, aes(x=aerolinea))+
  geom_bar()+
  ggtitle("Gráfico de Barras")+
  xlab("Aerolineas")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualizacion del grafico
GB1

#____________________________________________________________
#                Penguis
#____________________________________________________________

penguins<-datos::pinguinos

dim(penguins)
anyNA(penguins)

str(penguins)

penguins$isla

# inLeger=inL

# los tipos de variables.

#________________________________________
#Ejercicio 1
#____________________________
#van a seleccionar 2 matices de datos las que quieran
#y van a describir los tiops de variables

diamantes<-datos::diamantes

dim(diamantes)

str(diamantes)

aeropuertos<-datos::aeropuertos

dim(aeropuertos)

str(aeropuertos)

# precio: es una variable cuantitativa continua de razón

# quilate: es una variable cuantitativa continua de intervalo

# corte: es una variable cuantitativa de razón

# color: es una variable cualitativa nominal

#claridad: es una variable cualitativa nominal 

#profundidad: es una variable continua de intervalo

# tabla: es una variable cuantitativo de razón

# largo: es una variable cualitativa ordinal

# ancho: es una variable cualitativa ordinal

# profindidad: es una variable continua de intervalo

#codigo aeropuerto es cuantitativo discreto con escala de intervalo

# nombre es una variable cualitativa dominal con escala cualitativa nominal

# latitud es cuantitativa continua con escala de intervalo

# longitud es cuantitativo discreto con escala de razon

# altura es cuantitativa continua con escala de razon

#zona horaria es cuantitativa discretos con escala de razon

# horario_ verano es cuantitativo contables con escala de razon

#zona_horaria_iana es cuantitativo contable con escala de razon 


