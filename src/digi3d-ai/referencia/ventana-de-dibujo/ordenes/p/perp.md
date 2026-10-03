# PERP

Traza líneas perpendiculares a una entidad de dibujo.

![PERP: la polilínea empieza en el pie de la perpendicular al tramo, pasa por el punto digitalizado y continúa con LINEA; en alzado, el pie toma la Z del punto](../../../../../images/orden-perp.svg)

## Parámetros

Esta orden no admite parámetros.

## Observaciones

Selecciona el tramo de la línea al que quieres la perpendicular y digitaliza un punto. La orden empieza una polilínea con la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md): su primer vértice es el pie de la perpendicular desde el punto a la recta del tramo (puede caer en su prolongación) y el segundo es el punto. Después sigues digitalizando la polilínea.

El pie toma la Z del punto digitalizado. Para que tome la Z del tramo, usa [PERP\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/perp-z.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](perp.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Polilínea cuyo primer segmento es perpendicular a un segmento |
| Barra de herramientas en la que aparece la orden | Polilíneas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [PERP\_A](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/perp-a.md)<br>[PERP\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/perp-z.md) |
| Nombre interno | {1CACF6F1-0916-4241-8791-4B91F1A7B8F4} |

