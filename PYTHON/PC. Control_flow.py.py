# Modulos
import random as rd

# Generar dos variables
x = 1
y = 0

# Realizzar comparaciones lógicas
z = ((x == y) and (x == y) or not(x == y))

# Mostrar valor de "z"
print(z)

# Sintaxis de una sentencia if
if (condition):
    code

# Generar variable "var"
var = 26

# Ejemplo de sentencia if
if (var > 25):
    print(var + 10)
    print(var - 10)
    print(var * 10)
    print(var / 10)   

# Mostrar evaluaciones
print(var > 25)

# Generar variable "num"
num = 25

# Evaluar con sentencia if
if (num < 25):
    print("Esto es parte del if")
    
# Evaluar condición
print(num < 25)

# Evaluar si un número es positivo
if (num > 0):
    print("Es un número positivo")

# Operador de residuo
print(8 / 6)
print(8 % 6)

# Generar variable "even"
even = 4

# Evaluar si un número es par o impar
if (even % 2) == 0:
    print("Es un número par")
    print("El número par es:", even)
    print("La suma de", even, "mas diez es igual a", even + 10)


age = 15
if (age > 18):
    print("Eres un adulto")



# Cargar modulo "random"
from random import randint as rd

# Generar un número pseudo-aleatorio
rd(1, 10)

# Guardar el número aleatorio
num = rd(1, 5)

# Evaluar el número aleatorio
if num == 5:
    print("Ganaste")



# Cargar modulo
import random as rd

# Colocar semilla (seed)
rd.seed(1)

# Generar un nuevo valor pseudo-aleatorio
rd.randint(1, 10)



# Sentencia if-else
if condition:
    code 1
else:
    code 2


# Evaluar sentencia if-else
if True:
    print("Este el cuerpo del if") # código 1
else:
    print("Este es el cuerpo del else") # código 2


if False:
    print("Este es el ecuerpo del if") # código 1
else:
    print("Este es el cuerpo del else") # código 2


# Generar una variable llamda "var"
var = 12

# Evaluar la variable "var" con if-else
if var > 10:
    print(var + 10)
    print(var + 20)
    print(var + 30)
    print(var + 40)
else:
    print(var - 10)


if var < 10:
    print(var + 10)
else:
    print(var - 10)


# Evaluar si es un número es positivo o negativo
neg = -10

# Evaluar variable "neg"
if neg > 0:
    print("Positivo")
else:
    print("Negativo")



# Generar variable "res"
res = 74

# Evaluar si la variable es par o impar
if res % 2 == 0:
    print("El numero par es:", res)
else:
    print("El número impar es:", res)


# Evaluar la edad para votar
edad = rd.randint(10, 40)

# Evaluar con if-else
if edad >= 18:
    print("Eres elegible para votar")
else:
    print("No eres elegible para votar")





































