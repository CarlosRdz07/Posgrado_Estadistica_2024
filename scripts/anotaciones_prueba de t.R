#Lo primero que hay que hacer es importar los datros.

#para iniciar con la prueba de t hay que poner un nombre a la bace de datos 

head(vivero)
#Para la prueba de t se aplica el comando t.test
t.test(vivero$IE)
#en esta parte checamosn p-value para observar la normalidad delas medias de los datos 
##en este caso  p-value < 2.2e-16, lo que quiere decir que no hay normalidad en los datos.

#ahora para corroborar visual mente se hace el boxplot
boxplot(vivero$IE ~ vivero$Tratamiento)

#tambien se puede verificar con un histograma 
hist(vivero$IE)

#Lo siguiente es checar la normalidad con una prueba de shapiro
shapiro.test(vivero$IE)

#el resultado de la normalidad de los datos nos indica que si existe una normalidad en ellos 
#p-value = 0.1777

# para sacar la prueba de homogeniedad se utiliza Barttlet
bartlett.test(vivero$IE ~ vivero$Tratamiento)
#p-value = 0.05305 si existe homogeniedad de los datos



# correlacion  ------------------------------------------------------------

# la correlacion nos ayuda
#aplicarmeos la funcion cor.test para ver la correlacion
cor.test(vivero$IE , vivero$Tratamiento)
#el resultado de p es p-value = 0.05305 lo que significa que si hay correlacion

#para estimar alfa y beta 
vm.lm <- lm(vivero$IE ~ vivero$Tratamiento) 
vm.lm
##para obtener la significansa aplico summary 
summary(vm.lm)
# no hay significancia en los datos ya que el valor de p es de  p-value: 0.004868

#para graficar 
plot(vivero$IE , vivero$planta)
abline(vivero$IE , vivero$planta)
