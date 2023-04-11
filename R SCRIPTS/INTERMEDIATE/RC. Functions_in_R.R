# Escribir una función para evaluar una operación aritmética
op <- function(x) {
   (x + 10) * 2 
}

# Evaluar la función "op"
op(1)
op(2)
op(5)

# Generar una función con más de un argumento
pyth <- function(a, b) {
    c <- sqrt((a ** 2) + (b ** 2))
    print(c)
}

# Evaluar diferentes catetos
pyth(2, 5)
pyth(20, 45)
pyth(2.3, 4.5)

# Generar función sin referenciar argumentos
pyth2 <- function(a, b) {
    c <- sqrt((2 ** 2) + (5 ** 2))
    print(c)
}

# Evaluar diferentes catetos
pyth2()


# Generar función con argumentos opcionales
pyth3 <- function(a = 2, b = 5) {
    c <- sqrt((a ** 2) + (b ** 2))
    print(c)
}

# Evaluar función con argumentos opcionales
pyth3()
pyth3(3, 7)



# Generar dos variables vacías
odd <- c()
even <- c()

# ¿Cuántos números pares e impares hay en una secuencia del 1 al 1000?
# Crear una función para evaluar números pares e impares
odd_even <- function(vec) {
    # Este es el ciclo for
    for (i in vec) {

        # Esta es la sentencia if
       if (i %% 2 == 0) {
          print(paste("El número", i, "es par"))
          even[length(even) + 1] <<- i

        # Esta es la sentencia else
       } else {
          print(paste("El número", i, "es impar"))
          odd[length(odd) + 1] <<- i

       }
    }

    # Mostrar cantidad de números pares e impares
    print(paste("Cantidad de número impares:", length(odd)))
    print(paste("Cantidad de número pares", length(even)))
}

# Evaluar números individuales
odd_even(1)
odd_even(2)

# Evaluar secuencias completas
odd_even(1:10)
odd_even(seq(25, 96))
