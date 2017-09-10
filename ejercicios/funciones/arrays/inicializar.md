inicializar
===========

Inicializa los primeros `n` elementos del array `arr` con el valor `val`

### Implementacion:

```java
public class Arrays {
  public static void inicializar(Object[] arr, int n, Object valor) {
    // (tu solucion aca)
  }
}
```

#### Ejemplo de uso:

```java
public class EjemploArraysInicializar {

  public static void main(String[] args) {

    String[] palabras = new String[4];
    int n = 4;

    Arrays.inicializar(palabras, n, "hola");

    for (int i = 0; i < n; i += 1) {
      System.out.println(
        String.format("palabra[%d] = %s", i, palabras[i])
      );
    }
  }
}
```
