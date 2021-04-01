# LINEA

Dibuja una línea en el archivo actual.

## Parámetros

| Variable | Definición |
| :--- | :--- |
| [INC](INC.html) | Distancia entre puntos consecutivos. Se establece bien en el cuadro de diálogo Nuevo Proyecto Digi, o bien con la orden _INC_ |
| [TOL](TOL.html) | Tolerancia lineal que se aplica si está activa la función de generalización \(Conmutador G\) |
| [TOL\_ANG](TOL_ANG.html) | Tolerancia angular que se aplica si está activa la función de generalización \(Conmutador G\) |

Cuando se está dibujando una línea, se puede enganchar con otra entidad ya digitalizada mediante el pedal/botón de Tentativo. La modalidad de enganche se elige con la orden [MODOB](MODOB.html). Para poder utilizar el tentativo con plenas funcionalidades debe estar activado el conmutador [VER](VER.html).

Es posible utilizar otras órdenes de digitalización de forma integrada con el dibujado de líneas.

## Observaciones

No es necesario ejecutar esta orden para dibujar una línea, pues basta con seleccionar un código definido para una entidad linal, y pulsar sobre Dato para dibujar una línea.

Esta orden solicita puntos hasta que pulses la tecla Esc o el pedal/botón de finalizar entidad \(o ejecutar [FIN\_ENT](FIN_ENT.html)\) para dejar de ejecutar esta orden.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Polilínea |
| Barra de herramientas en la que aparece la orden | Polilíneas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [INC](INC.html), [REPITE](REPITE.html) |

