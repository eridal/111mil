Fechas
======

Una _Fecha_ es una 3-upla, compuesta por:

1. año: entero
2. mes: `[1-12]`
3. dia: `[1-31]`

Se utilizara un `int` de 32 bits como soporte de alamacenamiento.

## Operaciones

Implementar las siguientes operaciones:

### Crear

Crea una nueva fecha, con sus componentes asociadas.

```java
fecha_crear (int año, int mes, int dia): Fecha;
```

### Convertir

Transforma la fecha en un texto, con formato: `YYYY-MM-DD`.

```java
fecha_toString(Fecha fecha): String;
```

#### Ejemplo de uso:

```java
Fecha f = fecha_crear(1810, 5, 25);

String s = fecha_toString(f); // "1810-05-25"
```

### Getters

Acceder a cada una de las componentes de una fecha.

```java
fecha_get_año (Fecha fecha): int;
fecha_get_mes (Fecha fecha): int;
fecha_get_dia (Fecha fecha): int;
```

#### Ejemplo de uso:

```java
Fecha f = fecha_crear(1810, 5, 25);

int año = fecha_get_año(f); // 1810
int mes = fecha_get_mes(f); // 5
int dia = fecha_get_dia(f); // 25
```

### Setters

Modificar una componente de una fecha. La fecha original no debera ser modificada.

```java
fecha_set_año (Fecha fecha, int año): Fecha;
fecha_set_mes (Fecha fecha, int mes): Fecha;
fecha_set_dia (Fecha fecha, int dia): Fecha;
```

#### Ejemplo de uso:

```java
Fecha f = fecha_crear(1810, 5, 25);
Fecha g = fecha_set_año(f, 1816);

String sf = fecha_toString(f); // "1810-05-25"
String sg = fecha_toString(g); // "1816-05-25"
```

### Distancia

Retorna la distancia, en distintas unidades, entre dos fechas.

Se debera prestar especial cuidado al signo del resultado, siendo:

                          ⎧ > 0  si desde > hasta
    diff_*(desde, hasta): ⎨ = 0  si desde = hasta
                          ⎩ < 0  si desde < hasta

```java
fecha_diff_años (Fecha desde, Fecha hasta): float;
fecha_diff_meses (Fecha desde, Fecha hasta): float;
fecha_diff_dias (Fecha desde, Fecha hasta): float;
```

#### Ejemplo de uso:

```java
Fecha cabildo = fecha_crear(1810, 5, 25);
Fecha tucuman = fecha_crear(1816, 7,  9);

fecha_diff_años(cabildo, tucuman); // 6.13 años (aprox)
fecha_diff_meses(cabildo, tucuman); // 73.55 meses (aprox)
fecha_diff_dias(cabildo, tucuman); // 2237 dias
```
