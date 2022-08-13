"""
1) Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:  28957346,  Juan,  Perez, 4789689,  Belgrano 101
Dichos datos se corresponden  con los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección).
Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.
"""
print("Ejercicio 1")
Dueno = [28957346, "Juan", "Perez", 4789689, "Belgrano 101"]


def imprimir_dueno():
    if Dueno[0] > 26000000:
            print("El telefono del dueño es: ", Dueno[3])
    else:
        print("Su DNI no es mayor a 26000000")

imprimir_dueno()

print("")
print("")


"""
4)      Crear un lista en Python denominado “Perro2” que contenga los siguientes valores:

      14,  Fido,  12/12/2012 , Macho, 23546987

Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.
"""

print("Ejercicio 4")
Perro2 = [14,  "Fido",  "12/12/2012" , "Macho", 23546987]

def imprimir_perro2():
        for n in reversed(Perro2):
            print(n)


imprimir_perro2()

print("")
print("")


"""
8) Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:

          7510, 7960, 76180, 800, 4100

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”.
Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla.
"""
print("Ejercicio 8")
Historial4 = (7510, 7960, 76180, 800, 4100)

def valormin_historial4():
    valor_minimo = min(Historial4)
    print("El valor minimo de pesos gastados en atencion en Olivia es", valor_minimo)

valormin_historial4()

print("")
print("")

"""
9) Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:

          8520, 9510, 7530, 3570, 1590

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”.
Crear una función para determinar el valor máximo de atención gastada en “Toto”.
"""
print("Ejercicio 9")
Historial5 = (8520, 9510, 7530, 3570, 1590)

def valormax_historial5():
    valor_maximo = max(Historial5)
    print("El valor maximo de pesos gastados en atencion en Toto es", valor_maximo)

valormax_historial5()

print("")
print("")

"""
3)  Crear un lista en Python denominado “Perro” que contenga los siguientes valores:

  13,  Puppy,  12/12/2012 , Macho, 123

Que se corresponde con los datos de un perro de nuestra base de datos (Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño).
Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346 .
"""
print("Ejercicio 3")

Perro = [13,  "Puppy",  "12/12/2012" , "Macho", 123]

print(Perro)

for n in range(len(Perro)):
    if Perro[n] == "12/12/2012":
            Perro[n] = "13/12/2012"

Perro[4] = 28957346
print(Perro)

