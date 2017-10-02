Cajero Automatico
=================

Un cajero automatico posee 5 distintos cajones, los cuales pueden contener hasta 100 billetes cada cajon.

Cada cajon podra contener billetes una unica denominacion, pudiendo ser estas de 50, 100, o 500 pesos.

Todas las mañanas el cajero inicia las actividades con los 5 cajones al maximo, pero el personal del banco no siempre carga todas las denominaciones o los cajones en orden alguno. Por ejemplo:

    Lunes  = 50, 100, 500, 50, 500
    Martes = 100, 100, 100, 500, 100
    Miercoles = 500, 100, 500, 50, 50

El cajero permite a los usuarios realizar extracciones exactas del monto pedido, siempre que el cajero posea los billetes necesarios para tal operacion. El cajero debera entregar el monto pedido en la minima cantidad de billetes disponibles, de modo de poder dar un mejor servicio a la mayor cantidad de usuarios.

En caso del cajero no poseer los billetes para tal operacion el cajero debera imprimir los dos montos mas cercanos, uno menor y otro mayor, al monto pedido. Cuando el monto pedido supere la cantidad de dinero disponible solo se mostrara el monto menor. De la misma forma, cuando el monto pedido sea menor al billete mas pequeño disponible se debera mostrar el monto mayor.

Cuando el cajero no posea dinero, el mismo debera imprimir un mensaje de error y continuar con la operacion, es decir el programa cajero nunca termina.


```java
public class Cajero {
  public static void main(String[] args) {
    // (tu algoritmo aca)
  }
}
```

#### Ejemplo:

Suponiendo que el cajero posea

   $  | cant
-----:|----:
  50  |   1
 100  |   1
 500  |   1
 100  |  10
  50  |   1

```
> Ingrese monto a retirar: 520

Solo puedo entregar 500 o 550 pesos.

> Ingrese monto a retirar: 550

Extraccion: 1 * 50 + 1 * 500

> Ingrese monto a retirar: 650

Extraccion: 1 * 50 + 6 * 100

> Ingrese monto a retirar: 200

Extraccion: 2 * 100

> Ingrese monto a retirar: 250

Solo puedo entregar 200 o 300 pesos.

> Ingrese monto a retirar: 350

Solo puedo entregar 300 pesos.

> Ingrese monto a retirar: 50

Solo puedo entregar 100 pesos.

> Ingrese monto a retirar: 300

Extraccion: 3 * 100

> Ingrese monto a retirar: 50

No hay dinero disponible.

> Ingrese monto a retirar: 100

No hay dinero disponible.

```
