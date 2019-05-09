Celcius a Fahrenheit
=====================

Convierte una temperatura en grados Celcius a grados Fahrenheit.


Realizar la conversion segun la siguiente definicion:

     F(x) = (x °C * 9 / 5) + 32 °F

> _Extra_: Implementar la operacion inversa: de grados Fahrenheit a Celcius

### Implementacion:

```java
public class Temp {
  public static double fahrenheit(double celcius) {
    // (tu solucion aca)
  }
}
```

#### Ejemplo de uso:

```java
public class EjemploDecimalBinario {

  public static void main(String[] args) {
    escribir(Temp.fahrenheit( 0.0)); // 32
    escribir(Temp.fahrenheit(10.0)); // 50
    escribir(Temp.fahrenheit(36.0)); // 96.8
    escribir(Temp.fahrenheit(36.5)); // 97.7
    escribir(Temp.fahrenheit(37.0)); // 98.6
  }

  private static void escribir(double temp) {
    System.out.println(temp);
  }
}
```
