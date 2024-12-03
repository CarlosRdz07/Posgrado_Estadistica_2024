# Actividad correlacion_erupciones 

library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")
summary(erupciones)
#grafica para precentar datos
plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 19)



#correlacion
cor.test(erupciones$waiting, erupciones$eruptions)
#    cor 
#0.9008112 #p-value < 2.2e-16
#con el resultado de correlación resultado quiere decir que si es significativo.

##para obtener el intercepto alfa y beta.
ed.lm <- lm(erupciones$eruptions ~ erupciones$waiting)
ed.lm
#Coefficients:
#(Intercept)  erupciones$waiting  
#-1.87402             0.07563  
summary(ed.lm)
## los valores de alfa y beta son significativos

plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 19)
#sacar la linea de tendencia central.
abline(ed.lm)


# ##Respuesta a preguntas  ------------------------------------------------

#En este caso, la variable dependiente es eruptions ( duracion de las erupciones)
#La variable independiente corresponde a waiting (tiempo de espera entre erupciones)
#Con el resultado de correlación resultado quiere decir que si es significativo.
#Si existe una relacion entre las dos variables 
#los valores de alfa y beta son altamente significativos. 



