Es Primo
========

Determina si un numero `num` es primo o no.

> Un numero es primo cuando es divisible por si mismo y por uno.

### Implementacion:

```java
public class Numeros {
  public static boolean esPrimo(int numero) {
    // (tu solucion aca)
  }
}
```

#### Ejemplo de uso:

```scala
public class EjemploNumerosEsPrimo {

  public static void main(String[] args) {
    escribir(Numeros.esPrimo(1));   // true
    escribir(Numeros.esPrimo(2));   // true
    escribir(Numeros.esPrimo(3));   // true
    escribir(Numeros.esPrimo(4));   // false
    escribir(Numeros.esPrimo(200)); // false
  }

  private static void escribir(boolean rta) {
    System.out.println(rta);
  }
}
```
