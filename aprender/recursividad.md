Recursividad
============

La recursividad es la propiedad que permite a elementos de un programa definirse a 
traves de si mismos.

```scala
struct Persona {
  nombre: Texto;
  padre: Persona;
  madre: Persona;
}
```

## Recursion

La recursion es el mecanismo por el cual una pieza de codigo se invoca a si misma.

Las funciones recursivas estan intimamente relacionadas con la induccion, en donde 
comunmente se establece un _caso base_ y por recursion se logra demostra la hipotesis.

Por lo tanto en todo algoritmo recursivo debo tener:

- **Caso base**: criterio de corte y fin de la recursividad
- **Recursion**: invocacion recursiva

### Ejemplo

**sumatoria (valores, i, n):** Retorna la sumatoria de los primeros `n` valores desde `i` inclusive.

#### Metodo _cabeza-cola_:

Este metodo divide a los valores en dos grupos, siendo la `cabeza` el primer elemento y la `cola` la lista de elementos siguientes.

Luego para los valores `{ 1.0, 2.0, 3.0 }`, su _cabeza_ es `1.0` y su _cola_ seran `{ 2.0, 3.0 }`

Bajo estas condiciones el algoritmo queda definido como:

**sumatoria(array):**

- caso base: array vacio, sin _cabeza_, su resultado es `0`
- recursion: valor de _cabeza_ + sumatoria(_cola_)

```c
float sumatoria (float[] valores, int i, int n) {
  if (i == n) {
    return 0;
  }
  return valores[i] + sumatoria(valores, i + 1, n);
}
```

El metodo _cabeza-cola_ procesa los elementos en el mismo order que son dados:

    float[] valores = { 1.0, 2.0, 3.0 };

    float resultado = sumatoria(valores, 0, 3);
                      └── 1.0 + sumatoria(valores, 0, 2);
                                └── 2.0 + sumatoria(valores, 0, 1);
                                          └── 3.0 + sumatoria(valores, 0, 0);
                                                    └── 0.0
    float resultado = 1.0 + 2.0 + 3.0 + 0.0;

#### Metodo _ultimo-primeros_:

Este metodo divide a los valores en dos grupos, siendo el `ultimo` el ultimo elemento y `primeros` la lista de elementos anteriores a él.

Luego para los valores `{ 1.0, 2.0, 3.0 }`, su _ultimo_ sera `3.0` y su _primeros_ son `{ 1.0, 2.0 }`

Bajo estas condiciones el algoritmo queda definido como:

**sumatoria(array):**

- caso base: array vacio, sin _ultimo_, su resultado es `0`
- recursion: valor de _ultimo_ + sumatoria(_primeros_)

```c
float sumatoria (float[] valores, int i, int n) {
  if (n == 0) {
    return 0;
  }
  return valores[n - 1] + sumatoria(valores, i, n - 1);
}
```

El metodo _ultimo-primeros_ procesa los elementos en el order contrario que son dados:

    float[] valores = { 1.0, 2.0, 3.0 };

    float resultado = sumatoria(valores, 0, 3);
                      └── 3.0 + sumatoria(valores, 0, 2);
                                └── 2.0 + sumatoria(valores, 0, 1);
                                          └── 1.0 + sumatoria(valores, 0, 0);
                                                    └── 0.0
    float resultado = 3.0 + 2.0 + 1.0 + 0.0;

