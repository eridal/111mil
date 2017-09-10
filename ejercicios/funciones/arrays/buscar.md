buscar
======

Busca en los primeros `n` elementos del array `arr` y retorna la posicion donde 
se encuentra el valor `val`, o `-1` si no se encontro.

### Implementacion:

```java
public class Arrays {
  public static int buscar(Object[] arr, int n, Object valor) {
    // (tu solucion aca)
  }
}
```

#### Ejemplo de uso:

```java
public class EjemploArraysBuscar {

  public static void main(String[] args) {

    String[] palabras = new String[5];

    palabras[0] = "hola";
    palabras[1] = "chau";
    palabras[2] = "adios";
    palabras[3] = "hello";
    palabras[4] = "world";

    escribir(Arrays.buscar(palabras, 0, "hola"));  // -1
    escribir(Arrays.buscar(palabras, 3, "hola"));  //  0
    escribir(Arrays.buscar(palabras, 3, "hello")); // -1
    escribir(Arrays.buscar(palabras, 5, "hello")); //  3
  }

  private static void escribir(int indice) {
    System.out.println(indice);
  }
}
```
