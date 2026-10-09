# EXT\_P
<!-- id: ext-p -->

Estira o recorta una entidad hasta su intersección con otra quedando ambas partidas en el punto de intersección, es decir, genera un nodo en este punto.

![EXT_P: se selecciona el límite (1) y la línea (2); la línea se estira hasta el límite y el límite se parte en dos en el punto de corte, que queda como nodo](../../../../../images/orden-ext-p.svg)

## Parámetros

No admite parámetros.

## Observaciones

La orden pide primero la línea límite y después la línea a ajustar. Las dos tienen que pertenecer al modelo actual. La orden elige el extremo a ajustar a partir del punto con el que seleccionas la línea, y lleva ese extremo a la intersección con el límite:

* Si la línea no llega al límite, la orden la estira.
* Si la línea sobrepasa el límite, la orden la recorta.

Los extremos de la línea conservan su coordenada Z original.

La orden parte el límite en dos líneas en el punto de intersección. Si el punto de intersección coincide en X e Y con un extremo del límite, la orden no parte el límite.

La orden termina después de ajustar una línea.

Si el control de calidad descarta cualquiera de las entidades nuevas (la línea extendida o los dos trozos de la línea límite), se conservan las dos entidades originales y no se añade ninguna de las nuevas.

## Características de la orden

| Tipo de orden | [Orden interactiva](ext-p.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Extender una polilínea para que se cruce con otra partiendo |
| Barra de herramientas en la que aparece la orden | Extender/Recortar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [EXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext.md)<br>[EXT\_M](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext-m.md)<br>[EXT\_PLANO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext-plano.md)<br>[EXT\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext-xyz.md)<br>[EXT2X](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext2x.md)<br>[EXTIENDE\_EXTREMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/extiende_extremo.md) |
| Nombre interno | {F0E5BE92-BAC4-42cb-9ABE-ABBD6C14889C} |

