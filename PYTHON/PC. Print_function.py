# Función print con un elemento
print("Python")

# Función print con más de un elemento
print("Python", "Programming", "Hello, world")

# Función print con salto de línea
print("Python is a\nprogramming language")

# Función print con tabulaciones
print("Las tabulaciones son\tespacios en blanco dobles")

# Función print con elementos separadores
# Separador con tres puntos
print("We are in the technology area", "2023 is the AI year", "All of us have to know Python", sep = "...")

# Separador con tres guiones
print("Phrase 1", "Phrase 2", "Phrase 3", sep = "---")

# Separador con tabulaciones
print("Sentence 1", "Sentence 2", "Sentence 3", sep = "\t")

# Separador con saltos de línea
print("Word 1", "Word 2", "Word 3", sep = "\n")

# Función print con elementos terminadores
# Terminador punto
print("Word 1", "Word 2", "Word 3", end = ".")

# Combinación de separadores y terminadores
print("Python is a high-level language", "and easy to learn", "Machine learning ises Pythion", sep = "\n", end = ".")

# Combinando la función print con variables
x = 20
y = 10
z = 45

# Mostrar el valor de x
print("El valor de 'x' es:", x)

# Mostrar el valor de y
print("El valor de 'y' es:", y)

# Mostrar el valor de z
print("El valor de 'z' es:", z)

# Mostrar el valor de x, y, z
print("Los valores de 'x', 'y', 'z' son:", x, y, z, "respectivamente")

# Mostrar la suma de x y z
print("La suma de 'x' y 'z' es:", x + z)

# Mostrar la suma de x, y, z
print("La suma de 'x', 'y', 'z' es:", x + y + z)

# Mostrar operaciones complejas
print("El producto de 'x' * 'y' es:", x * y, "\nEl producto de 'z' * 'y' es:", z * y, "\nLa suma de", x * y, "y", z * y, "es:", (x * y) + (z * y))

# Ejercicio 1: modificar el código anterior para evitar generar una sola línea de código
# Escribirlo de forma individual
print("El producto de 'x' * 'y' es:", x * y)
print("El producto de 'z' * 'y' es:", z * y)
print("La suma de", x * y, "y", z * y, "es:", (x * y) + (z * y))

# Generar multilíneas con la función print
print("""Línea 1 
Línea 2
Línea 3
Línea n""")

# Usando .format
print("""El producto de 'x' * 'y' es: {0}
El producto de 'z' * 'y' es: {1} 
La suma de, {0} y {1} es: {2}""".format(x * y, z * y, (x * y) + (z * y)))

# Usando f-strings
# Crear variable con un nombre
name = "César"

# Emplear estilo f-strings
print(f"My name is {name}")

# Empleando distintas variables
print(f"""El producto de 'x' * 'y' es: {x * y} 
El producto de 'z' * 'y' es: {z * y} 
La suma de {x * y} y {z * y} es: {(x * y) + (z * y)}""")

# Crear variables de datos personales
name = "César"
age = 24
birth = "12 de octubre"

# Generar un programa que muestre toda la información de forma ordenada
print(f"""Nombre: {name}
Edad: {age}
Nacimiento: {birth}""")

# Modificar el programa anterior para generar diferentes outputs
# Crear variables de datos personales usando la función input
name = input("Nombre: ")
age = int(input("Edad: "))
birth = input("Fecha de nacimiento: ")

# Generar programa que interactúe con el usuario
print(f"Tu nombre es: {name}, tienes {age} años y naciste el {birth}")
