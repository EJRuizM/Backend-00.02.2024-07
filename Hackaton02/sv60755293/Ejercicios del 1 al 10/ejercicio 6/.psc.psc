Proceso ejercicio6
    Definir horas_trabajadas, sueldo Como Real
    Definir sueldo_base, sueldo_extra Como Real
    sueldo_base <- 20
    sueldo_extra <- 25
    Escribir "Ingrese las horas trabajadas en la semana:"
    Leer horas_trabajadas
    Si horas_trabajadas <= 40 Entonces
        sueldo <- horas_trabajadas * sueldo_base
    Sino
        sueldo <- 40 * sueldo_base + (horas_trabajadas - 40) * sueldo_extra
    FinSi
    Escribir "El sueldo semanal es: ", sueldo
FinAlgoritmo