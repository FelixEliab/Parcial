Algoritmo SeguraPro
	//Datos de Entrada:
//sumaAsegurada: La cantidad de dinero correspondiente a la suma asegurada.
	//Proceso:
	//Se define el porcentaje para cada caso: porcentaje1, porcentaje2 y porcentaje3.
	//Se establece el índice del socio especial: socioEspecial.
	//Se solicita al usuario ingresar la sumaAsegurada.
	//Se aplican las siguientes condiciones: a. Si sumaAsegurada es menor o igual a 120,000:
	//Se calcula el monto total a distribuir para el caso 1 (monto1).
	//Se divide monto1 en partes iguales entre dos socios. b. Si sumaAsegurada está entre 100,001 y 120,000:
	//Se calcula el monto total a distribuir para el caso 1 (monto1).
	//Se divide monto1 en partes iguales entre dos socios. c. Si sumaAsegurada es mayor a 120,000:
	//Se calcula el monto total a distribuir para el caso 1 (monto1).
	//Se calcula el monto total a distribuir para el caso 2 (monto2).
	//El resto de la suma asegurada después de aplicar los casos anteriores se asigna al socio especial (monto3).
	//Salida:
	//Se imprime el monto a distribuir al socio 1: monto1.
	//Se imprime el monto a distribuir al socio 2: monto2.
	//Se imprime el monto a distribuir al socio especial: monto3.

    Definir sumaA, porcentaje1, porcentaje2, porcentaje3, socio, monto1, monto2, monto3 Como Real
    
    porcentaje1 <- 0.2
    porcentaje2 <- 0.5
    porcentaje3 <- 0.3
    socio <- 1
    
    Escribir "Ingrese la suma asegurada:"
    Leer sumaA
    
    Si sumaA <= 120000 Entonces
        monto1 <- sumaA * porcentaje1
        monto2 <- monto1 / 2
        monto3 <- monto1 / 2
    Sino
        Si sumaA > 100000 Y sumaA <= 120000 Entonces
            monto1 <- 100000 * porcentaje1
            monto2 <- monto1 / 2
            monto3 <- monto1 / 2
        Sino
            monto1 <- 100000 * porcentaje1
            monto2 <- 20000 * porcentaje2
            monto3 <- sumaA - 120000
            socio <- 2
        Fin Si
    Fin Si
    
    Escribir "Monto a distribuir al socio 1:", monto1
    Escribir "Monto a distribuir al socio 2:", monto2
    Escribir "Monto a distribuir al socio", socio, ":", monto3
    
FinAlgoritmo

