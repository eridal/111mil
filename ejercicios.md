Catalogo de Ejercicios
======================

# Programas

## Escribir / Leer
- **holaMundo**: imprime el texto `"hola mundo"`
- **holaNombre**: pide el ingreso de un nombre, imprime el texto `"hola $nombre"` .. ej: `"hola Pepe"`

## Si
- **mayorMenorIgual**: pide el ingreso de dos numeros A y B, los compara e imprime "mayor, menor o igual".
- **nombreDeMes**: pide el ingreso de un numero del 1 al 12, imprime el nombre del mes, o error en otro caso.
- **esPrimo**: pide el ingreso de un numero, imprime si "es primo" o "no es primo".

## Mientras / Hasta
- **contar**: imprime numeros de uno en uno, desde el 1 hasta infinito.
- **contarHasta**: pide un numero, cuenta desde uno hasta dicho numero.
- **contarDesde**: pide un numero, cuenta desde dicho numero hasta cero.
- **contarDeAPasos**: pide un numero y cuenta desde uno con pasos segun el numero ingresado. ej: 

    contarDeAPasos(3)
    > 1
    > 4
    > 7
    > 10
    > 13
    > 16
    > ...

# Funciones

## Listas
- **inicializarLista(l, n)**: inicializa los primeros `n` elementos de la lista `l`, todos en cero.
- **inicializarListaCon(l, n, val)**: inicializa los primeros `n` elementos de la lista `l`, todos con valor `val`.
- **inicializarListaContando(l, n)**: inicializa los primeros `n` elementos de la lista `l`, con valores ascendentes de uno en uno, ej:

```js
  inicializarListaContando(unaLista, 5) = [1, 2, 3, 4, 5, ...]
```

- **inicializarListaContandoDesde(l, n, desde)**: inicializa los primeros `n` elementos de la lista `l`, con valores descendentes, de `desde` hasta `desde - n - 1`. ej:

```js
  inicializarListaContando(unaLista, 5, 7) = [7, 6, 5, 4, 3, ...]
```

- **darVueltaLista(l, n)**: da vuelta los primeros `n` elementos de la lista `l`. ej: 

```js
  revertirLista([1, 2, 3, 4, 5], 3) = [3, 2, 1, 4, 5]
```

- **sumatoria(l, n)**: retorna la suma de los primeros `n` elementos de la lista `l`. ej: 

```js
  sumatoria([10, 10, 10], 2) = 20
```
