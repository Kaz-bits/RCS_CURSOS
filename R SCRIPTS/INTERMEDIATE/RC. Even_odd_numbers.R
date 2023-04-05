# Crear data frame
df_sample <- data.frame(x = 1:26, y = LETTERS[1:26])

# Usar un if-else vectorizado anidado
df_sample$response <- ifelse(df_sample$x > 9 & df_sample$x <= 17, "Medium", 
                             ifelse(df_sample$x <= 9, "Low", "High"))

# Crear dos contadores
count_even = 0
count_odd = 0

# Crear variables para realizar sumas
sum_even = 0
sum_odd = 0

# Determinar cuántos valores pares e impares hay
for (i in 1:nrow(df_sample)) {
  
  # Evaluar si es par
  if (i %% 2 == 0) {
    # Añadir un uno al contador
    count_even <- count_even + 1
    sum_even <- sum_even + i
    
  } else {
    
    # Añadir un uno al contador
    count_odd <- count_odd + 1
    sum_odd <- sum_odd + i
    
  }
}

# Mostrar la cantidad de pares e impares
print(paste("Se tienen", count_odd, "números pares"))
print(paste("Se tienen", count_even, "números impares"))

# Mostrar la suma de pares o impares
print(paste("La suma de números pares es: ", sum_even))
print(paste("La suma de números impares es: ", sum_odd))
