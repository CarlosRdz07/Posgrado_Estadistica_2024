
# code.R 15 y 16 ------------------------------------------------------------------

set.seed(42)
n <- 30
altura <- rnorm(n, mean = 170, sd =10)
peso <- 0.5 * altura + rnorm(n, mean = 0, sd = 5)
t.test(altura , peso)
#se hace una prueba de t para muestras depemdientes 
# se acepta la hipotesis nula ya que p-value < 2.2e-16

# #code.R 17 y 18 ---------------------------------------------------------

set.seed(42)
n <- 30
altura <- rnorm(n, mean = 170, sd = 10)
peso <- 0.5 * altura + rnorm(n, mean = 0, sd = 5)
cor.test(altura , peso)

#con este resultado quiere decir que si es significativo 0.7114793 
#esto quiere decir que hay una correlacion positiva fuerte.

#19 y 20 
set.seed(25)
n <- 40
diam_arboles <- rnorm(n, mean = 20, sd = 5)

altura_arboles <- 1.5 * diam_arboles + rnorm(n, mean = 0, sd = 3)

datos <- data.frame(diam_arboles , altura_arboles)
ed.lm <- lm(diam_arboles ~ altura_arboles)
ed.lm
lm(datos)
#Coefficients:
#(Intercept)  altura_arboles  
#2.1209          0.6035  
