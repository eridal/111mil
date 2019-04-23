Calculadora
===========

Esta calculadora permite el ingreso de una operacion matematica simple, y luego
imprime el resultado de la misma, o un mensaje de error indicando el problema 
con la operacion ingresada.

Esta calculadora debera permitir  **sumar**, **restar**, **multiplicar**, y **divivir**,
como tambien debera respetar el orden de asociacion de los operadores. Es decir debera
resolver correctamente operaciones del tipo `1 + 2 * 3`.

Quedara a libre eleccion el conjunto de numeros a utilizar, pero debera permitir como minimo
el ingreso de numeros enteros positivos, e imprimir resultados con prescicion de decimales
cuando esto sea necesario, ej: `2 / 3`

El programa debera validar correctamente cualquier tipo de ingreso del usuario, y ejecutar
indefinidamente, es decir no debera terminar.

**Bonus**

1. Ingreso de parentesis `(`, `)` para modificar las asociatividad de los operadores, ej: `(1 + 2) * 3`

2. Sistema de memoria, para guardar resultados y utilizarlos luego en otros calculos, ej: `2 * A + B`

```java
public class Calculadora {
  public static void main(String[] args) {
    // (tu algoritmo aca)
  }
}
```

#### Ejemplo:

```
> 1 + 2 * 3
7

> 1 + * 2
error

> 2 / 3
0.666666667

...

```
