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

```java
public class EjemploNumerosEsPrimo {

  public static void main(String[] args) {
    // primos
    escribir(Numeros.esPrimo(2));     // true
    escribir(Numeros.esPrimo(7));     // true
    escribir(Numeros.esPrimo(1871));  // true
    escribir(Numeros.esPrimo(12119)); // true
    escribir(Numeros.esPrimo(15679)); // true
    // no primos
    escribir(Numeros.esPrimo(6));         // false
    escribir(Numeros.esPrimo(11663));     // false
    escribir(Numeros.esPrimo(2663399));   // false
    escribir(Numeros.esPrimo(190013801)); // false
    escribir(Numeros.esPrimo(245831041)); // false
  }

  private static void escribir(boolean rta) {
    System.out.println(rta);
  }
}
```
