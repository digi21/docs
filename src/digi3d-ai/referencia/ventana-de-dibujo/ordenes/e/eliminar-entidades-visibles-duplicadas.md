# ELIMINAR\_ENTIDADES\_VISIBLES\_DUPLICADAS
<!-- id: eliminar-entidades-visibles-duplicadas -->

Elimina las entidades visibles duplicadas manteniendo únicamente la que tenga un código que esté antes en la tabla de códigos.

## Parámetros

No admite parámetros.

## Observaciones

Dos entidades están duplicadas cuando son del mismo tipo, tienen el mismo número de vértices y sus vértices coinciden en X,Y, en el mismo sentido o en el inverso. La Z no se compara. La orden analiza las entidades no borradas, visibles, dentro de la zona de interés y con algún código visible de la tabla de códigos. De cada grupo de entidades duplicadas conserva la que tiene el código que aparece antes en la tabla de códigos y borra las demás.

## Características de la orden

| Tipo de orden | [Orden inmediata](eliminar-entidades-visibles-duplicadas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Eliminar entidades duplicadas/Entidades visibles |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [AGRUPAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md)<br>[AGRUPAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md)<br>[DETECTAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md)<br>[DETECTAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_CODIGOS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md)<br>[ELIMINAR\_TODAS\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md)<br>[ELIMINAR\_TODAS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Nombre interno | {23B801A3-E5D4-456A-BC22-93E348B4FB3B} |
