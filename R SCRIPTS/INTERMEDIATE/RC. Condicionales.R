# Uso de operadores relacionales
var1 <- c(1, 4, 5, 8, 9)
var2 <- c(6, 4, 2, 20, 1)

# Operador mayor que
var1 > var2

# Operador mayor o igual que
var1 >= var2

# Operador menor que
var1 < var2

# Operador menor o igual que
var1 <= var2

# Operadore de igualdad
var1 == var2

# Operador de desigualdad
var1 != var2


# Condicional if
if (TRUE) {
  print("Ejecuta este código")
}

if (FALSE) {
  print("Ejecuta este código")
}


# Crear una nueva variable
var3 <- 25

# Realizar comparación
if (var3 == 25) {
  var3 * 10
}

if (var3 > 24) {
  (var3 + 10) * 2
}

if (var3 < 25) {
  print("No se ejecutará esta línea")
}


# Condicional if-else
if (var3 < 25) {
  var3 - 10
} else {
  var3 + 10
}

# Agregar más elementos a las condicionales
if (var3 < 25) {
  
  # Mostrar código
  print("Es menor a 25")
  var3 - 10
  
} else {
  
  # Mostrar código
  print("No es menor a 25")
  var3 + 10
  
}


# Ciclos for
# Crear una variable con diferentes elementos
var4 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Mostrar todos los elementos en pantalla con un ciclo
for (i in var4) {
  print(i)
}

# Emplear cadenas de caracteres
for (i in var4) {
  print(paste("Número", i))
}

# Mostrar solo los valores mayores a 5
for (i in var4) {
  if (i > 5) {
    
    # Mostrar código en pantalla
    print(paste("Número", i)) 
    
  }
}

# Crear una secuencia del 1 al 100
seq1 <- seq(1, 100)

# Mostrar todos los elementos pares
for (i in seq1) {
  
  # Evaluar si es par o impar
  if (i %% 2 == 0) {
    
    # Mostrar código en pantalla
    print(paste("Número", i))
    
  }  
}


# Mostrar todos los elementos impares
for (i in seq1) {
  
  # Evaluar si es par o impar
  if (i %% 2 != 0) {
    
    # Mostrar código en pantalla
    print(paste("Número", i))
    
  }  
}


# Declaración break
# Mostrar todos los elementos pares
for (i in seq1) {
  
  # Evaluar si es par o impar
  if (i %% 2 == 0) {
    
    # Emplear condicional anidada
    if (i == 20) {
      break
    }
    
    # Mostrar código en pantalla
    print(paste("Número", i))
    
  }  
}


# Declaración next
# Mostrar todos los elementos pares
for (i in seq1) {
  
  # Evaluar si es par o impar
  if (i %% 2 == 0) {
    
    # Emplear condicional anidada
    if (i == 20) {
      next
    }
    
    # Mostrar código en pantalla
    print(paste("Número", i))
    
  }  
}




