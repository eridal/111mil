Decimal a Binario
=================

Convierte un numero entero en sus correspondientes bits.

La funcion debera convertir correctamente valores enteros positivos, incluyendo el cero.

> _Nota_: Los numeros binarios se representan de derecha a izquierda:


### Implementacion:

```java
public class Numeros {
  public static String binario(int numero) {
    // (tu solucion aca)
  }
}
```

#### Ejemplo de uso:

```java
public class EjemploDecimalBinario {

  public static void main(String[] args) {
    escribir(Numeros.binario(0));         // "0"
    escribir(Numeros.binario(1));         // "1"
    escribir(Numeros.binario(2));         // "11"
    escribir(Numeros.binario(47));        // "101111"
    escribir(Numeros.binario(123));       // "1111011"
    escribir(Numeros.binario(11663));     // "10110110001111"
    escribir(Numeros.binario(2663399));   // "1010001010001111100111"
    escribir(Numeros.binario(190013801)); // "1011010100110110000101101001"
    escribir(Numeros.binario(245831041)); // "1110101001110001010110000001"
  }

  private static void escribir(boolean rta) {
    System.out.println(rta);
  }
}
```
