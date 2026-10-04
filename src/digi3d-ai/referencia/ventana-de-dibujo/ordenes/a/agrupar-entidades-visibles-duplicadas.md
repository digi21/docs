# AGRUPAR\_ENTIDADES\_VISIBLES\_DUPLICADAS
<!-- id: agrupar-entidades-visibles-duplicadas -->

Agrupa todas las entidades visibles duplicadas en una única entidad.

## Parámetros

No admite parámetros.

## Observaciones

Dos entidades son duplicadas si son del mismo tipo (línea, punto o texto), tienen el mismo número de vértices y las mismas coordenadas X e Y en cada vértice, en el mismo sentido o en sentido inverso. La orden no compara la Z. Solo analiza entidades del archivo de dibujo visibles y dentro de la zona de interés.

Por cada grupo de entidades duplicadas, la orden borra todas las entidades del grupo y añade una copia de la primera con los códigos de todas. Si el registro no permite geometrías con códigos repetidos, los códigos repetidos se añaden una sola vez.

## Características de la orden

| Tipo de orden | [Orden inmediata](agrupar-entidades-visibles-duplicadas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Agrupar entidades duplicadas/Entidades visibles |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [AGRUPAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md)<br>[DETECTAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md)<br>[DETECTAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_CODIGOS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md)<br>[ELIMINAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_TODAS\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md)<br>[ELIMINAR\_TODAS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Nombre interno | {BC6A3076-B9F0-454B-9F44-80DA9C4FDCC5} |
