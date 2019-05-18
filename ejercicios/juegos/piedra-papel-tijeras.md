Piedra, Papel, o Tijeras
========================

En este juego clasico el usuario podra jugar contra la maquina en modo
_Partida Simple_ de una sola jugada o en modo _Al mejor de X_ donde
se jugaran varios turnos hasta determinar el ganador.

El usuario elegira su jugada a traves del ingreso por teclado
de las palabras: `piedra`, `papel`, o `tijera`.

La maquina realizara su eleccion al azar sin tener en cuenta
el ingreso del usuario, es decir no realizara trampa.

Las reglas classicas son:

    Piedra aplasta Tijera.
    Tijera corta Papel.
    Papel envuelve Piedra.

Luego de cada jugada se debera mostrar por pantalla tanto la
eleccion de cada jugador, como el verbo accion de la jugada,
quien gano el turno, el contador parcial y final de la partida
segun el modo de juego.

Al finalizar una partida se debera reiniciar el sistema, e invitar
al usuario a una nueva partida. El sistema nunca termina.

#### Ejemplo

```
Ingrese "simple" o un numero para jugar al mejor de.. ?
> simple

Partida simple.

Tu eleccion? (piedra, papel, o tijera)
> tijeras

"tijeras" no es una opcion correcta

Tu eleccion? (piedra, papel, o tijera)
> papel

Mi eleccion: tijera

Tijera corta Papel. Yo gano.

Ingrese "simple" o un numero para jugar al mejor de.. ?
> 2

Partida al mejor de 2

Turno 1

Tu eleccion? (piedra, papel, o tijera)
> papel

Mi eleccion: tijera

Tijera corta Papel. Yo gano. Vamos 1 a 0, gano yo.

Tu eleccion? (piedra, papel, o tijera)
> piedra

Mi eleccion: piedra

Empate!

Tu eleccion? (piedra, papel, o tijera)
> papel

Mi eleccion: piedra

Papel envuelve Piedra. Tu ganas. Vamos 1 a 1, empate.

Tu eleccion? (piedra, papel, o tijera)
> papel

Mi eleccion: piedra

Papel envuelve Piedra. Tu ganas. Vamos 1 a 1, empate.

Tu eleccion? (piedra, papel, o tijera)
> tijera

Mi eleccion: papel

Tijera corta Papel. Tu ganas. Vamos 2 a 1, ganas vos.

Me ganaste 2 a 1.

Ingrese "simple" o un numero para jugar al mejor de.. ?
>
```
