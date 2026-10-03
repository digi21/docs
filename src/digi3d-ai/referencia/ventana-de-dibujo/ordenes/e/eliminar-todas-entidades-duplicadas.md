# ELIMINAR\_TODAS\_ENTIDADES\_DUPLICADAS

Elimina todas las entidades duplicadas, por código.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Código o códigos de las entidades a procesar | Si |

## Observaciones

Dos entidades están duplicadas cuando son del mismo tipo, tienen el mismo número de vértices y sus vértices coinciden en X,Y, en el mismo sentido o en el inverso. La Z no se compara. Solo se analizan entidades no borradas, visibles y dentro de la zona de interés.

Sin parámetros, la orden solicita que selecciones las entidades a analizar. De cada grupo de entidades duplicadas borra todas, sin conservar ninguna.

## Características de la orden

| Tipo de orden | [Orden inmediata](eliminar-todas-entidades-duplicadas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {9CF1C8A8-380D-47F4-93C7-E81310BD05D2} |
