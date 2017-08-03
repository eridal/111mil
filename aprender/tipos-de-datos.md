# Tipos de Datos

El **tipo** de un _dato_ representa el *conjunto de valores* posibles que un dato puede tomar.

## Jerarquia de Tipos

Los lenguajes poseen mecanismos para la construccion de nuevos tipos de datos, derivados
desde otros tipos.

### 1. Tipos Primitivos

Son aquellos proporcionados por los autores del lenguaje, disponibles en todo
momento y lugar de nuestro programa.

Tanto los limites y restricciones como las operaciones posibles con valores pertenecientes
a tipos primitivos son determinados durante el diseño del lenguaje de programacion.

#### Ejemplos 

 - `boolean`
 - `int`
 - `float`
 - `number`
 - `char`
 - `string`

### 2. Tipos Abstractos

Un tipo abstracto se compone de _operaciones_ definidas sobre un _conjunto de valores_.

Son construidos por los autores del programa, utilizando otros tipos, segun las necesidades
del problema a resolver.

Los limites y restricciones de estos tipos son determinadas por el autor y en muchas 
ocaciones deberan ser validadas en tiempo de ejecucion.

#### Ejemplos

 - `set`: conjuntos matematicos, con _union_, _interseccion_, _diferencia_
 - `list`: conjunto ordenado, con _agregar al principio_, _sacar del final_
 - `stack` o `queue`: pilas y colas, con operaciones como _agregar_, _sacar_, _primero_

## Diferencias de Abstraccion


### Bajo Nivel

En lenguajes de bajo nivel el _tipo_ de un dato posee relacion directa con el espacio
fisico de memoria utilizado y los valores posibles que en dicho espacio se podra representar.

Las operaciones sobre los valores son proporcionadas por el set de instrucciones 
del procesador, o bien construidas a partir de ellas.

Los programas en este nivel declaran explicitamente, para cada valor, que tipo de dato 
se utilizara.

#### Ejemplos de Bajo Nivel

- `signed int`: 1 bit de signo + 31 bits para representar un numero entero
- `unsigned int`: 32 bits para representar un numero entero positivo
- `float`: 32 bits para representar un numero decimal
- `double`: 64 bits para representar un numero decimal

### Alto Nivel

En lenguajes de alto nivel el _tipo_ de dato determina el conjunto logico al cual 
pertenecen los valores, con independencia de la representacion fisica en memoria.

Las operaciones sobre los valores son determinadas por el resultado que se espera
obtener (el que), sin tener en cuenta las operaciones a realizar (el como).

Algunos lenguajes permiten la omision del tipo de dato, siendo este determinado
implicitamente segun que el uso de los valores.

#### Ejemplos de Alto Nivel

- `boolean`: _Verdadero_ o _Falso_
- `number`: un numero cualquiera, tanto negativo como positivo, entero o decimal
- `string`: una palabra o texto
