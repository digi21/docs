# LISTA\_WKT

Lista la geometría seleccionada en formato WKT.

## Parámetros

No admite parámetros.

## Observaciones

La orden abre el panel de resultados y escribe en él la geometría seleccionada. Las coordenadas se transforman del sistema de referencia del dibujo a coordenadas geográficas WGS 84 \(EPSG:4326\) y se escriben solo en 2D, con el número de decimales del dibujo. Los puntos y los textos se escriben como `POINT`, las líneas como `LINESTRING`, los polígonos como `POLYGON` \(con sus huecos\) y las entidades complejas como `GEOMETRYCOLLECTION`.

## Características de la orden

| Tipo de orden | [Orden interactiva](lista-wkt.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [LISTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista.md)<br>[LISTA\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista_atributos.md) |
| Nombre interno | {07435CF1-F2A3-45EF-AF8B-9506CC393B2B} |
