install.packages("ggplot2") #instalaar la paqueteria de la graficadora
install.packages("dplyr")
require(ggplot2) #mandarla llamar
require(dplyr)
show(anscombe) #muestra los datos
ggplot(data=anscombe,aes(x=x3,y=y3))+geom_point() #grafica de dispersion: 1.base de datos 2.datos en los ejes 3.que tipo de grafica quiero
install.packages("car")
require(car)
scatterplotMatrix(anscombe) #grafica la matriz de datos
cor(anscombe$x3,anscombe$y3) #correlacion entre las variables seleccionadas
#------------------------tratamiento de los outliers--------------------------#
summary(anscombe) #medidas de dispersion, tendencia central etc.. se pueden identificar los outliers desde aqui
#como muestra el summary, los pares x3-y3 y x4-y4 tienen puntos extremos, los cuales deben ser tratados para que 
#no afecte el nivel de la correlacion
show(anscombe$x3)
show(anscombe$y3)
#el punto extremo es (13,12.74)
for (i in c(1:2)) {
datosx3[i]<-c(anscombe$x3[i])
}
for (e in c(3:10)) {
  datosx3[e]<-c(anscombe$x3[e+1])
}
datosy3<-c()
for (i in c(1:2)) {
  datosy3[i]<-c(anscombe$y3[i])
}
for (e in c(3:10)) {
  datosy3[e]<-c(anscombe$y3[e+1])
}
show(datosy3)
ggplot(aes(x=datosx3,y=datosy3))+geom_point() #pregutar al maestro
cor(datosx3,datosy3)
#Ejercicios hoja de word
#1
ordasc<-c(1:15)
#b
orddes<-c()
for (i in c(1:15)) {
  orddes[i]<-16-i
}
#c
ordenpeg<-ordasc
for (i in c(1:15)) {
  ordenpeg[15+i]<-orddes[i]
}
#d
tiempo<-c(2,7,8)
#e
verep<-c(1,7,9)
rep(verep,7)
#f
ejef<-c()
ejef<-c(2,3,9)
rep(ejef[1],9)
rep(ejef[2],15)
#g
ejeg<-c()
ejeg<-rep(7,12)
ejeg<-rep(0,25)
ejeg<-rep(5,35)
#-----------------------------------------ejercicio 2---------------------------------------------#
set.seed(50)
vectro1<-sample(0:999,250,replace = TRUE)
vector2<-sample(0:999,250,replace = TRUE)
#descripcion: el set seed es para generar numeros aleatorios bajo el metodo de congruencias lineales, y los vectores
#contienen 250 numeros aleatorios entre el 0 y el 999
#----------------------------------------matrices-------------------------------------------------#
a1<-c(1,1,3)
a2<-c(5,2,6)
a3<-c(-2,-1,3)
ma1<-rbind(a1,a2,a3) #pegar los vectores como renglones
a<-c(1,1,3,5,2,6,-2,-1,3)
ma<-matrix(a,ncol = 3, byrow = TRUE)#ordena el vector como una matriz acorde al numero de colmnas que se deseen
show(ma)
ma[,1]<-ma[,2]+ma[,3]#la primer columna es igual a la suma de las 2 siguientes
#ejercicio numero 2
set.seed(25)
vecma<-sample(0:9,72,replace = TRUE)
mavec<-matrix(vecma,ncol=9)
#a
mavec[8,2]
#b
mavec[1,3]
#c
#ya lo use arriba :v
#d
vec7<-mavec[,7]
#e
sumaren<-c()
for (i in c(1:8)) {
sumaren[i]<-sum(mavec[i,])  
}
for (i in c(1:9)) {
  sumacol[i]<-sum(mavec[,i])
}
#f
matf<-sample(0:20,20,replace=TRUE)
mamatf<-matrix(matf,ncol=5)
media5<-mean(mamatf[,5])
var2<-var(mamatf[2,])
rowMeans(mamatf)
colMeans(mamatf)
#la media mas alta es del renglon 2 y la media mas alta de la columna 4
#g
mamavec<-cbind(mavec,rep(1,9))
#h
mtf<-rbind(mamatf,rep(0,5))
help(dim)
