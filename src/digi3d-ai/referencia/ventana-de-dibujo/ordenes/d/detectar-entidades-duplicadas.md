# DETECTAR\_ENTIDADES\_DUPLICADAS
<!-- id: detectar-entidades-duplicadas -->

Detecta todas las entidades que están duplicadas por código.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

## Observaciones

La orden busca entidades duplicadas entre las entidades visibles, dentro de la zona de interés, que tengan alguno de los códigos indicados, y crea una tarea de error por cada entidad duplicada. Cada código se compara de forma exacta. Para incluir todos los códigos que tengan una etiqueta, antepón una almohadilla \(\#\) al nombre de la etiqueta.

Si no indicas ningún código, la orden espera a que selecciones un conjunto de entidades mediante una selección múltiple y analiza las entidades seleccionadas.

## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-entidades-duplicadas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [AGRUPAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md)<br>[AGRUPAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md)<br>[DETECTAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_CODIGOS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md)<br>[ELIMINAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md)<br>[ELIMINAR\_TODAS\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md)<br>[ELIMINAR\_TODAS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Nombre interno | {7434C948-43E6-4DBF-B46F-4ECD9307A869} |
