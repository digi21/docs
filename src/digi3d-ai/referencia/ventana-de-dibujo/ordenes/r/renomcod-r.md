# RENOMCOD\_R
<!-- id: renomcod-r -->

Renombra códigos por recinto topológico.

## Parámetros

No admite parámetros.

## Observaciones

La orden necesita al menos una topología cargada; si no la hay, muestra un aviso y termina.

La orden muestra un cuadro de diálogo en el que seleccionas los códigos de centroide, el código A \(código que se renombra\), el código B \(código nuevo\) y el tipo de inclusión.

Para cada recinto de las topologías cargadas cuyo centroide tiene alguno de los códigos seleccionados, la orden recorta por el contorno del recinto las líneas del archivo de dibujo activo que tienen el código A. En los trozos interiores y en las líneas completamente interiores sustituye el código A por el código B; los trozos exteriores conservan el código A.

## Características de la orden

| Tipo de orden | [Orden inmediata](renomcod-r.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BORRA\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-r.md)<br>[CAMB\_COD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod-r.md)<br>[RENOMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md)<br>[RENOMCOD\_SEL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-sel.md) |
| Nombre interno | {ED48B9FA-78F6-4E31-A6E4-5237BD4BA9C8} |
