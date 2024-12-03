
# Correlacion de datos 

library(repmis)
edad <- source_data("https://www.dropbox.com/s/nxoijhgmutuho0s/datos_control_Rascon.csv?dl=1")

summary(edad)
# grafica para precentar datos
#positivo

plot(edad$DAP, edad$EDAD, pch = 19, col = "red", 
     xlab = "Diametro (cm)",
     ylab = "Edad",
     ylim = c(20,140),
     xlim = c(10,50))

plot(edad$EDAD, edad$DAP)

# la funcion pch = 19 cambia los estilos de la grafica. 
##corelación
cor.test(edad$DAP, edad$EDAD)
# 0.7953145
# con este resultado quiere decir que si es significativo.
# se confirma que el diametro si es buen predictor de la edad de los árboles.

## estimar y prima , alfa y beta 

ed.lm <- lm(edad$EDAD ~ edad$DAP)
#para obtener el intercepto alfa y beta.
ed.lm 
#intercept = a alpa 
#-8.480
#para obtener la significansa aplico summary 
summary(ed.lm)

# graficar 
plot(edad$DAP, edad$EDAD, pch = 19, col = "red",
     xlab = "Diametro (cm)",
     ylab = "Edad",
     ylim = c(20,140),
     xlim = c(10,50))
#sacar la linea de tendencia central.
abline(ed.lm, col = "blue")
text(20, 120, "y = -8.4 * 2.43(x)")

ed.lm$coefficients
ed.lm$residuals
edad$res <- ed.lm$residuals
<- edad$edprim <- ed.lm$fitted.values
edad$com.res <- edad$EDAD ~ edad$edprim

# suma de residuales 
sum(edad$res)
sum(edad$re^2)/58
# estimar la edad (prima) para los valores DAP 15,30, 45, 47 
valores <- c(15, 30, 45,47)
prima <- -8.4 + 2.4* (valores) 


