# EJEMPLOS DE PROGRAMAS CREADOS USANDO PYTHON
# Calcular el área de un cuadrado
# Variable con las dimensiones dle cuadrado
square = int(input("Dimensiones del cuadrado: "))

# Mostrar el resultado del área del cuadrado
print(f"""Calcula el área del siguiente cuadrado:

* * * * * * 
*         *
*         * {square} cm
*         *
*         *
* * * * * *

El área del cuadrado es: {square**2}

""")


# Convertidor de dólares a pesos
dollar = int(input("Cantidad ($): "))

# Mostrar conversión
print(f"""
======================================
El dolar vale: 18.38 pesos (MXN)

======================================
{dollar} dólares es igual a {round(dollar * 18.38, 2)} pesos

""")



# Crear un cuestionario sencillo
# Importar fecha actual
import datetime 

# Guardar fecha actual
fecha  = datetime.datetime.now()

# Generar variables con input
name = input("Nombre: ")
age = int(input("Edad: "))
birth = input("Fecha de nacimiento: ")
pet = input("¿Tiene mascotas? (Sí/No): ")
car = input("¿Cuenta con auto propio? (Sí/No): ")
car_model = input("Modelo del auto (No aplica): ")

# Mostrar respuestas en un formato adecuado
print(f""" 
                         Fecha: CDXM {fecha}
                         
{name}              
___________________ 
     Nombre        
     
     
{age}
___________________
      Edad


{birth}
___________________
Fecha de nacimiento


{pet}      
___________  
Mascotas 


{car}
___________
¿Automóvil?


{car_model}
___________
Modelo



ATTE: Python programmers
_________________________

""")





