-## si el docunmento inicia con https, quiere decir que hay que aplicar la funcion source_data
# que quiere decir que es de un url seguro.

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

#Para obtener la media se aplica la funcion mean 

mean(cuadro1$Diametro)
#en este caso se obsevra que la media del diametro de los datos es de  
##mean(cuadro1$Diametro) [1] 15.794

# Para comparar las caracterisgticas de las medias se utiliza la funcion subset

dmd <- subset(cuadro1, cuadro1$Diametro >= mean(cuadro1$Diametro))
# lo que se realizo aqui es obtener aquellos valores que fueron mayores o iguales a la media obtenida de la variable diametro.

dmo <- subset(cuadro1, cuadro1$Altura >= mean(cuadro1$Altura))
mean(cuadro1$Altura)
# esta funcionm es para excluir valores en este caso fue 17.8
dma <- subset(cuadro1, cuadro1$Diametro != 17.8)
# con esta funcion excluimos ejemplares de la especie F
spp1 <- subset(cuadro1, cuadro1$Especie != "F")

#La prueba de T sirve para comparar medias y existen 3 tipos independientes, dependientes y de una sola muestra.
# se utiliza la fucnion t.test si tengo dos variables 
#Tapply para comparar las medias en una categoria o en grupos



# ##Anova -----------------------------------------------------------------
#para comparar medias de dos o mas variables
#Lo primero en hacer es poner un nombre 
 sit.aov <- aov(cuadro1$Diametro ~ cuadro1$Especie)
 summary(sit.aov)
#Lo sigueinte es hacer una prueba de normalidad shapiro.test
 shapiro.test(cuadro1$Diametro)
# me dio un valor de p de p-value = 0.8988 lo que significa que si hay normalidad en los datos 
# es una reprecentacion grafica de la normalidad : boxplot
 boxplot(cuadro1$Diametro ~ cuadro1$Especie,
         xlab = "Especie",
         ylab = "Diametro",
         col = "blue")

 tapply(cuadro1$Diametro, cuadro1$Especie, mean)
#lo que hice con la fucnion tapply fue comparar las medias del diametro de las especies C, F Y H
 #en este caso la media es C        F        H 
#                         14.93636 16.70000 16.23571 
 
 
 tapply(cuadro1$Diametro, cuadro1$Especie, var)
 #aqui lo que hice fu sacar la varianza entre los datos del diametro con la especie.
 # C         F         H 
# 10.233853  6.778462 13.602473 
 
 
 

# #correlacion  -----------------------------------------------------------

#plot se utiliza para graficar 
 
