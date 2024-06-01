Funcion EsperarInfinito
	Escribir "Presione cualquier tecla para continuar...."
	Esperar Tecla
Fin Funcion

Funcion FlujoDescendente
	Escribir "*********************************************"
	Escribir "*                DESCENDENTE                *"
	Escribir "*********************************************"
	Escribir "Ingrese valor Máximo"
	Leer valorMaximo
	Escribir "Ingrese valor Mínimo"
	Leer valorMinimo
	
	Mientras valorMaximo >= valorMinimo Hacer
		Escribir "Secuencia ", valorMaximo, " de ", valorMinimo
		valorMaximo = valorMaximo - 1
	Fin Mientras
Fin Funcion

Funcion FlujoAscendente
	Escribir "*********************************************"
	Escribir "*                 ASCENDENTE                *"
	Escribir "*********************************************"
	Escribir "Ingrese valor mínimo"
	Leer valorMinimo
	Escribir "Ingrese valor máximo"
	Leer valorMaximo
	
	Mientras valorMinimo <= valorMaximo Hacer
		Escribir "Secuencia ", valorMinimo, " de ", valorMaximo
		valorMinimo = valorMinimo + 1
	Fin Mientras
Fin Funcion

Funcion returnOpcion <- Menu
	Limpiar Pantalla
	
	Escribir "*********************************************"
	Escribir "*              MENU  MIENTRAS               *"
	Escribir "* 1. Ascendente                             *"
	Escribir "* 2. Descendente                            *"
	Escribir "* 3. Salir                                  *"
	Escribir "*********************************************"
	Escribir "Escoja la opción:"
	Leer returnOpcion
Fin Funcion

Algoritmo Mientras_2
	op <- Menu()
	
	Mientras op <> 3 Hacer
		Segun op Hacer
			1:
				Limpiar Pantalla
				FlujoAscendente()
				EsperarInfinito()
			2:
				Limpiar Pantalla
				FlujoDescendente()
				EsperarInfinito()
			De Otro Modo:
				Escribir "Opción no válida..."
				Esperar 1 Segundos
		Fin Segun
		op <- Menu()
	Fin Mientras
FinAlgoritmo
