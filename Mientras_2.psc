Funcion EsperarInfinito
	Escribir "Presione cualquier tecla para continuar...."
	Esperar Tecla
Fin Funcion

Funcion FlujoDescendente
	Escribir "*********************************************"
	Escribir "*                DESCENDENTE                *"
	Escribir "*********************************************"
	Escribir "Ingrese valor M�ximo"
	Leer valorMaximo
	Escribir "Ingrese valor M�nimo"
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
	Escribir "Ingrese valor m�nimo"
	Leer valorMinimo
	Escribir "Ingrese valor m�ximo"
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
	Escribir "Escoja la opci�n:"
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
				Escribir "Opci�n no v�lida..."
				Esperar 1 Segundos
		Fin Segun
		op <- Menu()
	Fin Mientras
FinAlgoritmo
