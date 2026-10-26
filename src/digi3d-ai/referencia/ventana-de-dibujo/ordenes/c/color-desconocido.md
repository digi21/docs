# COLOR\_DESCONOCIDO
<!-- id: color-desconocido -->

Establece el color con el que se dibujan las entidades cuyo código es desconocido.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Componente roja, o índice de color en la paleta si es el único parámetro | Entero de 0 a 255, ambos incluidos | Sí |
| 2 | Componente verde | Entero de 0 a 255, ambos incluidos | Sí |
| 3 | Componente azul | Entero de 0 a 255, ambos incluidos | Sí |

## Observaciones

Si no se indica ningún parámetro, se muestra el cuadro de diálogo [Seleccionar color](../../../cuadros-de-dialogo/seleccionar-color.md) con la paleta de la tabla de códigos activa. Al elegir un color de la paleta, el color desconocido toma el valor RGB de esa entrada, no su número: si después cambia la paleta, el color no cambia. El cuadro no muestra la opacidad (**A**), porque el color es siempre opaco. Si no hay ninguna tabla de códigos cargada, muestra el cuadro sin paleta. En el cuadro, pulsar **Aceptar** o Intro aplica los valores escritos en los cuadros R, G y B, sin necesidad de hacer clic en el color. El cuadro del valor hexadecimal es de solo lectura. Si se indica un único parámetro, se interpreta como el índice (0-255) de un color de la paleta. Si se indican tres, son las componentes roja, verde y azul (0-255). Con dos parámetros, o con un índice fuera del intervalo 0-255, la orden emite un sonido de error y no cambia el color.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ver/Parámetros de visualización/Color desconocido... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {B114FEAC-4ABD-46F8-B4B2-4E1D8DE0E29A} |
