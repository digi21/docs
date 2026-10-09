# COLOR\_DESCONOCIDO
<!-- id: color-desconocido -->

Establece el color con el que se dibujan las entidades cuyo código es desconocido.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Componente roja, o índice de color en la paleta si es el único parámetro | 0-255 | Si |
| 2 | Componente verde | 0-255 | Si |
| 3 | Componente azul | 0-255 | Si |

## Observaciones

Si no se indica ningún parámetro, se muestra un cuadro de diálogo para elegir el color. En el cuadro, pulsar **Aceptar** o Intro aplica los valores escritos en los cuadros R, G y B, sin necesidad de hacer clic en el color. El cuadro del valor hexadecimal es de solo lectura. Si se indica un único parámetro, se interpreta como el índice (0-255) de un color de la paleta. Si se indican tres, son las componentes roja, verde y azul (0-255). Con dos parámetros, o con un índice fuera del intervalo 0-255, la orden emite un sonido de error y no cambia el color.

## Características de la orden

| Tipo de orden | [Orden inmediata](color-desconocido.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ver/Parámetros de visualización/Color desconocido... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {B114FEAC-4ABD-46F8-B4B2-4E1D8DE0E29A} |
