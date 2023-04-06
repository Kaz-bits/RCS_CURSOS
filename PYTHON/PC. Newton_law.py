# Generar variables en notación científica
m1 = 5.98e24
m2 = 7.34e22
r = 3.84e5
g = 6.67e-11

# Calcular variable "F"
F = ((g) * ((m2 * m1) / (r)))

# Mostrar variable en pantalla
print(F)

# Reducir número de notación científica
F = "{:.3e}".format(F)

# Mostrar variable F
print(F)


# Variables para ingresar los datos de mis objetos
pln1 = float(input("Ingresar masa del objeto 1: "))
pln2 = float(input("Ingresar masa del objeto 2: "))
rad_pln = float(input("Ingresar la distancia entre los objetos: "))

# Escribir constante de gravitación
g = 6.67e-11

# Calcular variable "F"
F = ((g) * ((pln1 * pln2) / (rad_pln)))

# Mostrar valor de F con dos decimales
print("{:.2e}".format(F))

# Mostrar valor de F con tres decimales
print("{:.3e}".format(F))

# Guardar variable F
F = "{:.3e}".format(F)
