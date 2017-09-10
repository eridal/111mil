contiene
========

Retorna si el valor `val` se encuentra entre los primeros `n` elementos del array `arr`

### Implementacion:

```java
public class Arrays {
  public static boolean contiene(Object[] arr, int n, Object valor) {
    // (tu solucion aca)
  }
}
```

#### Ejemplo de uso:

```java
public class EjemploArraysContiene {

  private static void ejemploContieneDeStrings() {
    String saludos[] = new String[3];
    saludos[0] = "hola";
    saludos[1] = "chau";
    saludos[2] = "hello";

    System.out.println(Arrays.contiene(saludos, 3, "hola")); // valor existe
    System.out.println(Arrays.contiene(saludos, 3, "adios")); // valor no existe
    System.out.println(Arrays.contiene(saludos, 2, "hello")); // valor existe, pero fuera de rango
  }
  
  
  private static void ejemploContieneDeNumeros() {
    Number[] precios = new Number[5];
    precios[0] = 12.34;
    precios[1] = 100;
    precios[2] = 15.35;
    precios[3] = 2000;
    precios[4] = 500.50;

    System.out.println(Arrays.contiene(precios, 5, 100)); // valor existe
    System.out.println(Arrays.contiene(precios, 5, 3500)); // valor no existe
    System.out.println(Arrays.contiene(precios, 3, 2000)); // valor existe, pero fuera de rango
  }

  public static void main(String[] args) {
    ejemploContieneDeStrings();
    ejemploContieneDeNumeros();
  }
}
```
