# TOPOLOGIA\_A\_POLIGONO

Genera polígonos a partir de la topología pasada por parámetros.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre de la topología. Si contiene espacios, escríbelo entre comillas | No |

## Observaciones

La topología tiene que estar cargada; si no lo está, la orden emite un sonido de error y no hace nada.

La orden crea un polígono, con sus huecos, por cada recinto válido de la topología que tenga un centroide asociado. Los recintos sin centroide no generan polígono.

- Si la topología está definida en la tabla de códigos, el código del polígono es el que indica la definición de la topología, y la Z se asigna según el tipo de Z configurado en la topología o en el centroide. Los recintos cuyo centroide tiene el texto de centroide de huecos no generan polígono.
- Si la topología no está definida en la tabla de códigos, el polígono toma los códigos del centroide.

## Características de la orden

| Tipo de orden | [Orden inmediata](topologia-a-poligono.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Transformar topologías cargadas a polígonos |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md)<br>[EXPORTAR\_TOPOLOGIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-topologia.md) |
| Nombre interno | {570042CB-FBD3-44E2-8B8B-C468012CED69} |
