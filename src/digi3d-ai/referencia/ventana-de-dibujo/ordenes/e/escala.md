# ESCALA
<!-- id: escala -->

Al ejecutar esta orden, se informa de la escala de visualización actual del fichero de dibujo.

## Parámetros

No admite parámetros.

## Observaciones

Muestra la escala, por ejemplo `1:1000`, en un globo en la parte inferior izquierda de la ventana principal de DigiNG.

La orden divide la distancia en el terreno que ocupa el ancho de la pantalla entre el ancho físico del monitor, que por defecto es 30,5 cm. Por ejemplo, si en el ancho de la pantalla caben 305 m de terreno, la escala es 1:1000.

La misma escala decide qué códigos se dibujan: un código con **Escala de representación** distinta de 0 en la tabla de códigos deja de dibujarse cuando la escala es menor que la que indica, por ejemplo a 1:10000 si su escala de representación es 5000.

## Características de la orden

| Tipo de orden | [Orden inmediata](escala.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {7B0EC0F3-79D9-45dc-A0DB-233C63087D22} |

