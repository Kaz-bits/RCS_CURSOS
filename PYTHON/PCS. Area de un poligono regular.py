# Determinar el área de un poligono regular

# Importar modulos
from math import tan, pi

# Ingresar las dimensiones del poligono
side = float(input("Ingresar la longitud de los lados del poligono: "))
number = int(input("Ingresar la cantidad de lados del poligono: "))

# Calcular el área del poligono
area = (number * side ** 2) / (4 * tan(pi / number))

# Mostrar el resultado
print("El área del poligono es: ", round(area, 2))