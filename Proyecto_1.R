databace <- ("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
datos <- read.csv(databace)
H.media <- subset(datos, datos$Altura >= mean(datos$Altura))
mean(datos$Altura)
H.16 <- subset(datos, datos$Altura <= 16.5)
# El número de valores menores a 16.5m es 39. 
Vecino.3 <- subset(datos, datos$Vecinos <= 3)
# El número de valores menores o iguales a 3 es de 26.
Vecinos.4 <- subset(datos, datos$Vecinos > 4)
# El número de valores mayores a 4 es de 11. 
DBH.mean <- subset(datos, datos$Diametro < mean(datos$Diametro))
mean(datos$Diametro)
# El número de valores menores a la media en el diametro es de 25. 
DBH.16 <- subset(datos, datos$Diametro > 16) 
# El número de datoa mayores a 16 es de 24.
spp <- subset(datos, datos$Especie == "C")

cedrojo <- subset(datos, datos$Especie !="C")
DBH.16.9 <- subset(datos, datos$Diametro <= 16.9)
# El numero de valores menores o iguales a 16.9 es de 31.
H.18.5 <- subset(datos, datos$Altura > 18.5)
# El número de valores mayor a 18.5 es de 2.

# Histogramas  ------------------------------------------------------------

hist(datos$Altura, xlab = "Altura", ylab = "frecuencia", main = "Histograma de alturas",
     xlim = c(6,23), ylim = c(0,15), col = "blue")
hist(H.media$Altura, xlab = "Altura", ylab = "frecuencia", main = "Histograma de altura de h.media",
     xlim = c(13,23), ylim = c(0,12), col = "red")
hist(H.16$Altura, xlab = "Altura", ylab = "frecuencia", main = "Histograma de altura de H.16",
     xlim = c(7,18), ylim = c(0,12), col = "pink")
hist(datos$Vecinos, xlab = "Altura", ylab = "frecuencia", main = "Histograma de datos vecinos",
     xlim = c(0,7), ylim = c(0,13), col = "yellow")
hist(Vecino.3$Altura, xlab = "altura", ylab = "frecuencia", main = "Histograma de altura de vecino.3",
     xlim = c(8,22), ylim = c(0,10), col = "orange")     
hist(Vecinos.4$Altura, xlab = "Altura", ylab = "frecuencia", main = "Histograma de altura de vecinos.4",
     xlim = c(8,21), ylim = c(0,4), col = "brown")
hist(datos$Diametro, xlab = "altura", ylab = "frecuencia", main = "histograma de diametro",
     xlim =c(6,27), ylim = c(0,13), col = "gray")
hist(DBH.mean$Diametro, xlab = "Altura", ylab = "frecuencia", main = "Histogtama de DBH.mean",
     xlim = c(6,18), ylim = c(0,8), col = "purple")
hist(DBH.16$Diametro, xlab = "Altura", ylab = "frecuencia", main = "Histograma de DBH.16",
     xlim = c(14,25), ylim = c(0,10), col = "black")


# # Media y deviación estándar --------------------------------------------


mean(datos$Altura)
# La media es de 13.9432
sd(datos$Altura)
# La desviación estadar es de 2.907177
mean(H.media$Altura)
# La media es de 16.16962
sd(H.media$Altura)
# La desviación es de 1.73751
mean(H.16$Altura)
# La media es de 12.85538
sd(H.16$Altura)
# La desviacion es de 2.210549
mean(datos$Vecinos)
# La media es de 3.34
sd(datos$Vecinos)
# La desviacón es de 1.598596
mean(Vecino.3$Vecinos)
# La media es de 2.115385
sd(Vecino.3$Vecinos)
# La desviación es de 1.070586
mean(Vecinos.4$Vecinos)
# La media es de 5.454545
sd(Vecinos.4$Vecinos)
# La desviación es de 0.522233
mean(datos$Diametro)
# La media es de 15.794
sd(datos$Diametro)
# La desviación es de 3. 227017
mean(DBH.mean$Diametro)
# La media es de 13.256
sd(DBH.mean$Diametro)
# La desviación es de 2.098627
mean(DBH.16$Diametro)
# La media es de 18.4375
sd(DBH.16$Diametro)
# La desviación es de 1.815588