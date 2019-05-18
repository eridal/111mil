Escalera
========

Escribir un programa que nos pida el numero de _pisos_ que necesitamos trepar, y
a continuacion dibuje por pantalla la escalera desde el suelo hasta el piso dado.

Luego el programa volvera a pedir otro numero, para repetir la operacion. El programa no debe terminar.

El programa debera tratar correctamente ingresos invalidos, como numeros negativos, letras, y cualquier otro error de usuario, en cuyo caso se mostrara un mensaje de error.

La escalera se dibujara con el caracter `\` junto con el numero de piso a continuacion. Para el caso del suelo se utilizara `pb`.

La escalera debera dibujerase conexa entre pisos, es decir se deberan agregar caracteres
blancos o espacios ` ` de forma tal que los caracteres `\` de pisos sucesivos den la
idea de una secuencia continua.

_Ejemplo_:

    Bien:         Mal:       Mal:            Mal:
      \            \          \                 \
       \           \            \              \
        \          \              \           \

> **Bonus**:
> Dibujar una escalera con escalones y suelo, de forma tal que quede un poligono cerrado, por ejemplo..
>
>      _ 3
>     | |_ 2
>     |   |_ 1
>     |_____| pb

----

#### Java:

```java
public class Escalera {
  public static void main(String[] args) {
    // (tu algoritmo aca)
  }
}
```

#### Ejemplo:

```
Ingrese altura?
> 4
\ 4
 \ 3
  \ 2
   \ 1
    \ pb

Ingrese altura?
> 0
\ pb

Ingrese altura?
> 3
\ 3
 \ 2
  \ 1
   \ pb

Ingrese altura?
...
```
