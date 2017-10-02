Circulo
=======

Escribir un programa que nos pida un numero _radio_ y luego dibuje un circulo de tales dimensiones utilizando el caracter `#`.

Luego el programa volvera a pedir otros dos numeros, para repetir la operacion. El programa no debe terminar.

Se debera validar que el cuadrado posea como minimo `1` de _radio_, en cuyo caso se mostrara un mensaje de error.

Finalmente el programa debera tratar correctamente ingresos invalidos, como numeros negativos, letras, y cualquier otro error de usuario, en cuyo caso se mostrara un mensaje de error.

```java
public class Circulo {
  public static void main(String[] args) {
    // (tu algoritmo aca)
  }
}
```

#### Notas

Un punto `x`, `y` pertenece a un circulo de radio `r` si:

    estaAdentro(x, y, r) = x * x + y * y < r * r

#### Ejemplo:

```
> Ingrese radio: 0

Radio invalido

> Ingrese radio: cincuenta

Radio invalido

> Ingrese radio: 1

#

> Ingrese radio: 3

###
###
###

> Ingrese radio: 8

   #####
  #######
 #########
 #########
 #########
 #########
 #########
  #######
   #####

```
