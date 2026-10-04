# AGRUPAR\_ENTIDADES\_DUPLICADAS
<!-- id: agrupar-entidades-duplicadas -->

Agrupa todas las entidades duplicadas en una única entidad por código.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

## Observaciones

Dos entidades son duplicadas si son del mismo tipo (línea, punto o texto), tienen el mismo número de vértices y las mismas coordenadas X e Y en cada vértice, en el mismo sentido o en sentido inverso. La orden no compara la Z. Solo analiza entidades visibles y dentro de la zona de interés.

Por cada grupo de entidades duplicadas, la orden borra todas las entidades del grupo y añade una copia de una de ellas con los códigos de todas. Si el registro no permite geometrías con códigos repetidos, los códigos repetidos se añaden una sola vez.

* Si se pasan códigos como parámetro, la orden es inmediata: analiza las entidades del archivo de dibujo que tienen visible alguno de esos códigos. La entidad que se conserva es la que tiene el código que aparece antes en la lista de parámetros.
* Si no se pasan parámetros, la orden es interactiva: solicita una [selección múltiple](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md) y analiza las entidades seleccionadas. La entidad que se conserva es la primera del grupo.

## Características de la orden

| Tipo de orden | [Orden inmediata](agrupar-entidades-duplicadas.md) si se pasan parámetros; [orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) si no se pasan |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [AGRUPAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md)<br>[DETECTAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md)<br>[DETECTAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_CODIGOS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md)<br>[ELIMINAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_TODAS\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md)<br>[ELIMINAR\_TODAS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Nombre interno | {46E40887-D59E-4E9A-8314-BD1A49EA241A} |
