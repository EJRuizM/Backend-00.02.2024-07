Algoritmo Palindromo
    Definir palabra, longitud, i Como Entero
    Definir palindromo Como Lógico
    Escribir "Ingrese una palabra:"
    Leer palabra
    longitud <- Longitud(palabra)
    palindromo <- Verdadero
    Para i <- 1 Hasta longitud / 2 Con Paso 1 Hacer
        Si Subcadena(palabra, i, 1) <> Subcadena(palabra, longitud - i + 1, 1) Entonces
            palindromo <- Falso
            Salir
        FinSi
    FinPara
    Si palindromo Entonces
        Escribir "La palabra es un palíndromo."
    Sino
        Escribir "La palabra no es un palíndromo."
    FinSi
FinAlgoritmo