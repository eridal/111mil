contiene
========

Retorna si el valor `val` se encuentra entre los primeros `n` elementos del array `arr`

### pseint

```scala
Funcion esta <- contiene(arr, n, val)
  Definir esta Como Logico;

  // (tu solucion aca)

FinFuncion
```

#### Ejemplo de uso:

```scala
SubProceso ejemploContieneDeTextos
  Definir saludos Como Caracter;
  Dimension saludos[3];
  
  saludos[0] <- "hola";
  saludos[1] <- "chau";
  saludos[2] <- "hello";
  
  Escribir contiene(saludos, 3, "hola"); // valor existe
  Escribir contiene(saludos, 3, "adios"); // valor no existe
  Escribir contiene(saludos, 2, "hello"); // valor existe, pero fuera de rango
FinSubProceso

SubProceso ejemploContieneDeNumeros
  Definir precios Como Real;
  Dimension precios[5];
  
  precios[0] <- 12.34;
  precios[1] <- 100;
  precios[2] <- 15.35;
  precios[3] <- 2000;
  precios[4] <- 500.50;
  
  Escribir contiene(precios, 5, 100); // valor existe
  Escribir contiene(precios, 5, 3500); // valor no existe
  Escribir contiene(precios, 3, 2000); // valor existe, pero fuera de rango
FinSubProceso

Proceso ejemploContiene
  ejemploContieneDeNumeros();
  ejemploContieneDeTextos();
FinProceso
```
