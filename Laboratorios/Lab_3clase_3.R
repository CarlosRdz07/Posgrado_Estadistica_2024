prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url, encoding = "latin1") 
head(profepa)

summary(profepa) 

mean(profepa$Inspección) 
ins <- subset(profepa, profepa$Inspección >= mean(profepa$Inspección))
bajo <- subset(profepa, profepa$Inspección >= mean(profepa$Inspección))
cero <- subset(profepa, profepa$Inspección == 0) #si pone los dos signos de igual le indicas que los datos sean cero 
todos <- subset(profepa, profepa$Inspección != 0)
       
 #o	Valor p < 0.05: Se suele considerar que hay evidencia suficiente para rechazar la hipótesis nula y aceptar la hipótesis alternativa.      

# # descarga de datos seguros ---------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
conjunto$Especie <- as.factor(conjunto$Especie)
conjunto$Clase <- as.factor(conjunto$Clase) 
summary(conjunto)

#subset es para hacer una base de datos espesificos.
 SpFH <- subset(conjunto, conjunto$Especie != "C")
 
 tapply(SpFH$Diametro, SpFH$Especie, mean) 
 
 
 boxplot(SpFH$Diametro ~ SpFH$Especie) 
 
 boxplot(conjunto, conjunto$Especie, mean)
 
 boxplot(SpFH$Diametro ~ SpFH$Especie, 
         xlab = "Especie",
         ylab = "Diametro",
         col = "indianred")
 
  # Normalidad de datos 
 shapiro.test(SpFH$Diametro)
 
  # Homogeneidad de varianza
 
 bartlett.test(SpFH$Diametro, SpFH$Especie) 

# # Prueba de T  independientes  ------------------------------------------

t.test(SpFH$Diametro ~ SpFH$Especie, var.equal = TRUE) 


# # Prueba de T de una muestra  -------------------------------------------

t.test(conjunto$Diametro, mu = 16.4) 

 prod <-read.csv("Produ.csv", header = T) 

 

 boxplot(prod$Kgsem ~ prod$Tiempo)
 
 t.test(prod$Kgsem ~ prod$Tiempo, paired = T)
 