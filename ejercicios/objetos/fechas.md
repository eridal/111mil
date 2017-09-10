Fechas
======

# Interface:

```java
package ejercicios.fecha;

public interface Fecha {

  // getters
  int getAño();
  int getMes();
  int getDia();

  // setters
  Fecha setAño(int año);
  Fecha setMes(int mes);
  Fecha setDia(int dia);

  /**
   * @return la fecha en formato YYYY-MM-DD
   */
  String toFormato();
}
```

# Fabricas:

```java
package ejercicios.fecha;

import ejercicios.fecha.impl.FechaSimple;
import ejercicios.fecha.impl.FechaCompuesta;

public class Fechas {

  public static Fecha simple(int año, int mes, int dia) {
    return new FechaSimple(año, mes, dia);
  }

  public static Fecha compuesta(int año, int mes, int dia) {
    return new FechaCompuesta(año, mes, dia);
  }

  public static Fecha bits(int año, int mes, int dia) {
    return new FechaBits(año, mes, dia);
  }
}
```

# Implementacion Fecha Simple:

```java
package ejercicios.fecha.impl;

import ejercicios.fecha.Fecha;

public class FechaSimple implements Fecha {

  private final int yyyymmdd;

  public FechaSimple (int año, int mes, int dia) {
    // (completar constructor)
  }

  // (completar mensajes faltantes)
}
```

# Implementacion Fecha Compuesta:

```java
package ejercicios.fecha.impl;

import ejercicios.fecha.Fecha;

public class FechaCompuesta implements Fecha {

  private final int año;
  private final int mes;
  private final int dia;

  public FechaCompuesta (int año, int mes, int dia) {
    // (completar constructor)
  }

  // (completar mensajes faltantes)
}
```

# Implementacion Fecha Bits

```java
package ejercicios.fecha.impl;

import ejercicios.fecha.Fecha;

public class FechaBits implements Fecha {

  /**
   * Contiene los datos guardados en un campo de bits segun:
   *
   * BITS:
   *   año: 1111 1111 1111 1111 1111 1110 0000 0000 --> 23 bits --> max 2^23 = 8388607 años
   *   mes: 0000 0000 0000 0000 0000 0001 1110 0000 -->  4 bits --> max 2^4  =      15 meses
   *   dia: 0000 0000 0000 0000 0000 0000 0001 1111 -->  5 bits --> max 2^5  =      31 dias
   *
   * MASCARAS:
   *    año: 0xFFFFFE00
   *    mes: 0x000001E0
   *    dia: 0x0000001F
   */
  private final int bits;

  public FechaBits (int año, int mes, int dia) {
    // (completar constructor)
  }

  // (completar mensajes faltantes)
}
```

## Test de Fechas
```java

package ejercicios;

import ejercicios.fecha.Fecha;
import ejercicios.fecha.Fechas;

public class TestFechas {

  public static void main(String[] args) {

    int errores = 0;

    Fecha[] fechas = new Fecha[] {
      Fechas.simple(1810, 5, 25),
      Fechas.compuesta(1810, 5, 25),
      Fechas.bits(1810, 5, 25),
    };

    for (Fecha f : fechas) {
      errores += testFormato(f);
      errores += testGetDia(f);
      errores += testGetMes(f);
      errores += testGetAño(f);
      errores += testSetDia(f);
      errores += testSetMes(f);
      errores += testSetAño(f);
    }

    if (errores > 0) {
      println("Se encontraron %d errores", errores);
    } else {
      System.out.println("Tests con exito!");
    }
  }

  private static int testFormato(Fecha f) {
    String esperado = "1810-05-25";
    String resultado = f.toFormato();
    return esIgual(f, "toFormato", esperado, resultado);
  }

  private static int testGetAño(Fecha f) {
    int esperado = 1810;
    int resultado = f.getAño();
    return esIgual(f, "getAño", esperado, resultado);
  }

  private static int testGetMes(Fecha f) {
    int esperado = 5;
    int resultado = f.getMes();
    return esIgual(f, "getMes", esperado, resultado);
  }

  private static int testGetDia(Fecha f) {
    int esperado = 25;
    int resultado = f.getDia();
    return esIgual(f, "getDia", esperado, resultado);
  }

  private static int testSetDia(Fecha f1) {
    Fecha f2 = f1.setDia(31);

    String esperado = "1810-05-31";
    String resultado = f2.toFormato();

    return noEsMismo(f1, "setDia", f2)
         + mismaClase(f1, "setAño", f2)
         + esIgual(f1, "setDia", esperado, resultado);
  }

  private static int testSetMes(Fecha f1) {
    Fecha f2 = f1.setMes(12);

    String esperado = "1810-12-25";
    String resultado = f2.toFormato();

    return noEsMismo(f1, "setMes", f2)
         + mismaClase(f1, "setAño", f2)
         + esIgual(f1, "setMes", esperado, resultado);
  }

  private static int testSetAño(Fecha f1) {
    Fecha f2 = f1.setAño(1991);

    String esperado = "1991-05-25";
    String resultado = f2.toFormato();

    return noEsMismo(f1, "setAño", f2)
         + mismaClase(f1, "setAño", f2)
         + esIgual(f1, "setAño", esperado, resultado);
  }

  private static int noEsMismo(Fecha f1, String test, Fecha f2) {
    if (f1 != f2) {
      return 0;
    }
    error(f1, test, "distinto objecto", "el mismo");
    return 1;
  }

  private static int mismaClase(Fecha f1, String test, Fecha f2) {
    Class<?> c1 = f1.getClass();
    Class<?> c2 = f2.getClass();

    if (c1 == c2) {
      return 0;
    }

    error(f1, test, "misma clase", c2.getSimpleName());
    return 1;
  }

  private static int esIgual(Fecha f, String test, String esperado, String resultado) {
    if (esperado.equals(resultado)) {
      return 0;
    }
    error(f, test, esperado, resultado);
    return 1;
  }

  private static void error(Fecha fecha, String test, String esperado, String resultado) {
    println("%s.%s:", fecha.getClass().getSimpleName(), test);
    println("\tSe esperaba %s, pero el resultado fue %s", esperado, resultado);
  }

  private static int esIgual(Fecha f, String test, int esperado, int resultado) {
    if (esperado == resultado) {
      return 0;
    }
    error(f, test, esperado, resultado);
    return 1;
  }

  private static void error(Fecha fecha, String test, int esperado, int resultado) {
    println("%s.%s:", fecha.getClass().getName(), test);
    println("\tSe esperaba %d, pero el resultado fue %d", esperado, resultado);
  }

  private static void println(String formato, Object... objects) {
    System.out.println(String.format(formato, objects));
  }
}
```
