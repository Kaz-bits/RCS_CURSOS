# Nombrar una forma de acuerdo con sus lados

# Ingresar los lados de la forma
nsides = int(input("Ingresa el número de lados: "))

# Determinar el nombre de la figura
name = ""
if nsides == 3:
    name = "Triángulo"
elif nsides == 4:
    name = "Cuadrado"
elif nsides == 5:
    name = "Pentágono"
elif nsides == 6:
    name = "Hexágono"
elif nsides == 7:
    name = "Heptágono"
elif nsides == 8:
    name = "Octágono"
elif nsides == 9:
    name = "Nonágono"
elif nsides == 10:
    name = "Decágono"

# Mostrar un mensaje de error en caso de no soportar la cantidad de lados
if name == "":
    print("El número de lados no es soportado por este programa")
else: 
    print("Este es un:", name)
