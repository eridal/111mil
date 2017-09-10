sumatoria
=========

Retorna la suma de los primeros `n` elementos del array `arr`

### Implementacion:

```java
public class Arrays {
  public static double sumatoria(double[] arr, int n) {
    // (tu solucion aca)
  }
}
```

#### Ejemplo de uso:

```java
public class EjemploArraysSumatoria {

  public static void main(String[] args) {

    double[] valores = new double[5];

    valores[0] =  5.0;
    valores[1] = 10.0;
    valores[2] = 12.3;
    valores[3] = 50.0;
    valores[4] = 25.5;

    escribir(Arrays.sumatoria(valores, 0)); //   0.0
    escribir(Arrays.sumatoria(valores, 1)); //   5.0
    escribir(Arrays.sumatoria(valores, 2)); //  15.0
    escribir(Arrays.sumatoria(valores, 3)); //  27.3
    escribir(Arrays.sumatoria(valores, 4)); //  77.3
    escribir(Arrays.sumatoria(valores, 5)); // 102.8
  }

  private static void escribir(double num) {
    System.out.println(num);
  }
}
```
