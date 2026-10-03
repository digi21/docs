# BAJA\_Z

Baja la Z del cursor en una cuantía igual a la [equidistancia](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) de curvas que se tenga establecida.

## Parámetros

No admite parámetros.

## Observaciones

La equidistancia se define en el _cuadro de diálogo Nuevo Proyecto de DigiNG_, o bien mediante la orden [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md).

Esta orden es utilizada cuando se está curvando. Una vez que el operador ha terminado de restituir una curva de nivel deberá subir o bajar la Z de registro una cantidad igual a la equidistancia para comenzar con la siguiente curva de nivel.

La orden resta la equidistancia a la Z actual del cursor; no redondea el resultado a un múltiplo de la equidistancia. El cursor se mueve a la nueva Z aunque la Z esté bloqueada. Si la variable [FIJAZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) está activada, la orden asigna también la nueva Z a la variable [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](baja-z.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Coordenada Z/Bajar la coordenada Z al múltiplo de equidistancia anterior |
| Barra de herramientas en la que aparece la orden | Coordenada Z |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) — equidistancia de curvas de nivel<br>[FIJAZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) — fija la coordenada Z al múltiplo de la equidistancia<br>[Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) — valor de la coordenada Z activa |
| Órdenes relacionadas | [SUBE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/sube-z.md) |
| Nombre interno | {416EF674-CB78-4121-8671-A076F25B2763} |

