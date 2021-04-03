# LINEA

Dibuja una línea en el archivo actual.

## Parámetros

| Variable | Definición |
| :--- | :--- |
| [INC](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/l/INC.html) | Distancia entre puntos consecutivos. Se establece bien en el cuadro de diálogo Nuevo Proyecto Digi, o bien con la orden _INC_ |
| [TOL](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/l/TOL.html) | Tolerancia lineal que se aplica si está activa la función de generalización \(Conmutador G\) |
| [TOL\_ANG](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/l/TOL_ANG.html) | Tolerancia angular que se aplica si está activa la función de generalización \(Conmutador G\) |

Cuando se está dibujando una línea, se puede enganchar con otra entidad ya digitalizada mediante el pedal/botón de Tentativo. La modalidad de enganche se elige con la orden [MODOB](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/l/MODOB.html). Para poder utilizar el tentativo con plenas funcionalidades debe estar activado el conmutador [VER](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/l/VER.html).

Es posible utilizar otras órdenes de digitalización de forma integrada con el dibujado de líneas.

## Observaciones

No es necesario ejecutar esta orden para dibujar una línea, pues basta con seleccionar un código definido para una entidad linal, y pulsar sobre Dato para dibujar una línea.

Esta orden solicita puntos hasta que pulses la tecla Esc o el pedal/botón de finalizar entidad \(o ejecutar [FIN\_ENT](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/l/FIN_ENT.html)\) para dejar de ejecutar esta orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](linea.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Polilínea |
| Barra de herramientas en la que aparece la orden | Polilíneas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [INC](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/l/INC.html), [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/l/REPITE.html) |

