Algoritmo calculadora
	definir a,b, op Como Entero
	definir resultado, resultado2 Como Real
	op<-1
mientras op!=0 hacer
	op<-capturaOpcion
	Si op=1 Entonces
		Escribir "Introduzca los valores a y b :"
		leer a,b
		resultado<-Suma(a,b)
		Escribir "La suma de ",a," y de ",b," es de ",resultado
	SiNo
		Si op=2 Entonces
			Escribir "Introduzca los valores a y b :"
			leer a,b
			resultado<-Resta(a,b)
			Escribir "La resta de ",a," menos ",b," es de ",resultado
		SiNo
			Si op=3 Entonces
				Escribir "Introduzca los valores a y b :"
				leer a,b
				resultado<-Multiplicacion(a,b)
				Escribir "La multiplicacion de ",a," por ",b," es de ",resultado
			SiNo
				Si op=4 Entonces
					Escribir "Introduzca los valores a y b :"
					leer a,b
					resultado<-Division(a,b)
					Escribir "La división de ",a," entre ",b," es de ",resultado
				SiNo
					Si op=5 Entonces
						Escribir "Introduzca los valores a y b :"
						leer a,b
						resultado<-Ecuacion1grado(a,b)
						Escribir "La solución de la incógnita X es de ",resultado
					SiNo
						Si op=6 Entonces
							Escribir "Introduzca los valores a, b, c de la ecuación ax2+bx+c :"
							Leer a,b,c
							resultado<-Ecuacion2grado1(a,b,c)
							resultado2<-Ecuacion2grado2(a,b,c)
							Si a!=0 Y (b*b-4*a*c)>=0 Entonces
								Escribir "Las soluciones de la incógnita X son: ",resultado," y ",resultado2
							FinSi
						SiNo
							Escribir "Saliendo de la calculadora..."
							op<-0
						finsi
					finsi
				Fin Si
			Fin Si
		Fin Si
	Fin Si
Fin Mientras
FinAlgoritmo


SubProceso op<-capturaOpcion()
	Escribir " "
	Escribir "Qué quieres hacer: 1(suma), 2(resta), 3(multiplicación), 4(división), 5(Ecuación 1er grado), 6(Ecuación 2º grado), ..otro(salir)"
	Leer op
FinSubProceso

SubProceso ret <- Suma ( a,b )
	ret<-a+b
Fin SubProceso

SubProceso ret <- Resta ( a,b )
	ret<-a-b
Fin SubProceso

SubProceso ret <- Multiplicacion ( a,b )
	ret<-a*b
Fin SubProceso

SubProceso ret <- Division ( a,b )
	ret<-a/b
Fin SubProceso

SubProceso ret<-Ecuacion1grado(a,b)
	ret<- (-b/a)
FinSubProceso

SubProceso ret1 <-Ecuacion2grado1(a,b,c)
	definir ret1 Como Real
	Si a=0 Entonces
		Escribir "el valor de a no puede ser 0"
	SiNo
		Si (b*b-4*a*c)<0 Entonces
			Escribir "no se pueden hacer raíces de números negativos, cambie los valores.."
		SiNo
			ret1<- (-b+(RAIZ(b*b-4*a*c))/2*a)
		Fin Si
	FinSi
FinSubProceso

SubProceso ret2 <-Ecuacion2grado2(a,b,c)
	definir ret2 Como Real
	Si a!=0 Y (b*b-4*a*c)>=0 Entonces
		ret2<- (-b-(RAIZ(b*b-4*a*c))/2*a)
	FinSi
FinSubProceso

