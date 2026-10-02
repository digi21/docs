# SPLINE

Dibuja una figura usando arcos convirtiéndolos en una curva fluida.

![Órdenes para suavizar e interpolar: SUAVIZA con vértices cada INC, SUAVIZA_SPLINE y SPLINE con una spline cúbica de 10 vértices por tramo, INTER con las curvas intermedias múltiplos de la equidistancia, INTER_EJE con la línea media e INTERPOLAR_COD entre las líneas de un código que cortan dos segmentos](../../../../../images/suavizar-interpolar.svg)

## Parámetros

No admite parámetros.

## Observaciones

Para crear una curva [SPLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/spline.md) hay que definir los puntos por los que va a atravesar. A medida que se digitalizan los puntos, el movimiento del cursor actuará sobre los vértices que actúan como tensores.

Las _SPLINES_ generadas en DIGI son [SPLINES CÚBICAS](spline.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](spline.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Spline |
| Barra de herramientas en la que aparece la orden | Polilíneas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {A585D55F-20B4-41a7-AC7E-4B0E8A9C32AA} |

