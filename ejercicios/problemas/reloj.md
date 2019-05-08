Reloj
======

Este reloj imprime cada un segundo la fecha y hora actual, con precision de segundos.

El formato a utilizar sera: `YYYY-MM-DD HH:mm:ss`, donde:

- `YYYY`: *Año*, por ej: `1810`

- `MM`: *Mes*, desde el `01` hasta `12`

- `DD`: *Dia*, desde el `01` hasta el `31` segun mes corriente

- `HH`: *Hora*, desde las `00` hasta las `23`

- `mm`: *Minutos*, de `00` hasta `59`

- `mm`: *Segundos*, de`00` hasta `59`

Ejemplo: El 25 de Mayo de 1810, a las 3:45 de la tarde, con 28 segundos: `1810-05-25 15:45:28`

> *Importante*: El programa no debera terminar.

```java
public class Reloj {
  public static void main(String[] args) {
    // (tu algoritmo aca)
  }
}
```


#### Ejemplo:

```
1810-05-25 15:45:58
1810-05-25 15:45:59
1810-05-25 15:46:00
1810-05-25 15:46:01
1810-05-25 15:46:02
1810-05-25 15:46:03
1810-05-25 15:46:04
...

```
