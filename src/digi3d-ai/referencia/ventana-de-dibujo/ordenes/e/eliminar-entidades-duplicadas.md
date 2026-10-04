# ELIMINAR\_ENTIDADES\_DUPLICADAS
<!-- id: eliminar-entidades-duplicadas -->

Elimina las entidades duplicadas manteniendo únicamente la que tenga un código que esté antes en la línea de comandos, por código.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Código o códigos de las entidades a procesar | Si |

## Observaciones

Dos entidades están duplicadas cuando son del mismo tipo, tienen el mismo número de vértices y sus vértices coinciden en X,Y, en el mismo sentido o en el inverso. La Z no se compara. Solo se analizan entidades no borradas, visibles y dentro de la zona de interés.

* Con parámetros, la orden analiza las entidades que tienen visible alguno de los códigos indicados. De cada grupo de entidades duplicadas conserva la que tiene el código que aparece antes en la lista de parámetros y borra las demás.
* Sin parámetros, la orden solicita que selecciones las entidades a analizar. De cada grupo de entidades duplicadas conserva una y borra las demás.

## Características de la orden

| Tipo de orden | [Orden inmediata](eliminar-entidades-duplicadas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [AGRUPAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md)<br>[AGRUPAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md)<br>[DETECTAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md)<br>[DETECTAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_CODIGOS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_TODAS\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md)<br>[ELIMINAR\_TODAS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Nombre interno | {E86EFDA5-68D1-4A6A-A7E0-AC7C39D9483D} |
