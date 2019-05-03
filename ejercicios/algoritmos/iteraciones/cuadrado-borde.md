Borde del Cuadrado
==================

Escribir un programa que nos pida dos numeros _alto_ y _ancho_, y luego dibuje el borde de un cuadrado de tales dimensiones utilizando los caracteres `+`, `-`, `|`, ` `.

Luego el programa volvera a pedir otros dos numeros, para repetir la operacion. El programa no debe terminar.

Se debera validar que el cuadrado posea como minimo `1` de _alto_ o _ancho_, en cuyo caso se mostrara un mensaje de error.

Finalmente el programa debera tratar correctamente ingresos invalidos, como numeros negativos, letras, y cualquier otro error de usuario, en cuyo caso se mostrara un mensaje de error.

```java
public class BordeDelCuadrado {
  public static void main(String[] args) {
    // (tu algoritmo aca)
  }
}
```

#### Notas

Para todo `cuadrado` el _ancho_ y _alto_ de su `borde` debera respetar:

    borde.ancho = cuadrado.ancho + 2
    borde.alto  = cuadrado.alto  + 2

El cuadrado mas pequeño sera de 1\*1, por lo que el borde mas pequeño sera de 3*3

               +-+
    #    -->   | |
               +-+

#### Bonus

Utilizar caracteres especiales para dibujar bordes cerrados:

    +-----+     ┌─────┐
    |     | --> │     │
    +-----+     └─────┘

#### Ejemplo:

```
> Ingrese alto: 0
> Ingrese ancho: 5

Alto invalido

> Ingrese alto: 0
> Ingrese ancho: cincuenta

Ancho invalido

> Ingrese alto: 1
> Ingrese ancho: 1

+-+
| |
+-+

> Ingrese alto: 5
> Ingrese ancho: 7

+-------+
|       |
|       |
|       |
|       |
|       |
+-------+
```
