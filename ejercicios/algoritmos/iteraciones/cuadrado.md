Cuadrado
========

Escribir un programa que nos pida dos numeros _alto_ y _ancho_, y luego dibuje un cuadrado de tales dimensiones utilizando el caracter `#`.

Luego el programa volvera a pedir otros dos numeros, para repetir la operacion. El programa no debe terminar.

Se debera validar que el cuadrado posea como minimo `1` de _alto_ o _ancho_, en cuyo caso se mostrara un mensaje de error.

Finalmente el programa debera tratar correctamente ingresos invalidos, como numeros negativos, letras, y cualquier otro error de usuario, en cuyo caso se mostrara un mensaje de error.

```java
public class Cuadrado {
  public static void main(String[] args) {
    // (tu algoritmo aca)
  }
}
```

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

#
//aqui existe un error
> Ingrese alto: 8
> Ingrese ancho: 5

#######
#######
#######
#######
#######

```
