Es Bisiesto
============

Retorna verdadero si el año dado es un año bisiesto.

Las reglas para determinar si un año es bisiesto son:

1. Si el año NO es divisible por 4: NO es bisiesto.

1. Si el año es divisible por 4 y NO es divisible por 100: ES bisiesto.

1. Si el año es divisible por 4 y 100, pero NO es divisible por 400: NO es bisiesto

1. Si el año es divisible por 4, 100, y 400: ES bisiesto

> Nota: La funcion debera aplicar el mismo criterio para años negativos (A.C.)

### Implementacion:

```java
public class Fechas {
  public static boolean esBisiesto(int año) {
    // (tu solucion aca)
  }
}
```

#### Ejemplo de uso:

```java
public class EjemploEsBisiesto {

  public static void main(String[] args) {
    escribir(Fechas.esBisiesto(2019)); // false
    escribir(Fechas.esBisiesto(2020)); // false
    escribir(Fechas.esBisiesto(2000)); // true
    escribir(Fechas.esBisiesto(1900)); // false
    escribir(Fechas.esBisiesto(1816)); // true
    escribir(Fechas.esBisiesto(-4)); // true
    escribir(Fechas.esBisiesto(-5)); // false

  private static void escribir(boolean rta) {
    System.out.println(rta);
  }
