Triangulos
============

Escribir un programa que pida el ingreso de tres numeros, los cuales
corresponden a las longitudes de los lados de un triangulo; luego
el programa debera imprimir `"equilatero"`, `"isosceles"`, o `"escaleno"`
segun corresponda.

**Tipo de Triangulo**:

                             ⎧ "equilatero"   si a = b = c
    tipo-triangulo(a, b, c): ⎨ "escaleno"     si a ≠ b ≠ c ∧ a ≠ c
                             ⎩ "isosceles"    e.o.c.


> opcional: Volver a pedir nuevos numeros a continuacion. El programa nunca termina.

```java
public class Triangulos {
  public static void main(String[] args) {
    // (tu algoritmo aca)
  }
}
```

#### Ejemplo:

```
Ingrese tres numeros
> 2
> 5
> 1
escaleno

Ingrese tres numeros?
> 5
> 2
> 5
isosceles

Ingrese tres numeros?
> 7
> 7
> 7
equilatero

...

```
