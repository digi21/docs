# DETECTAR\_POLIGONOS\_VECINOS\_MISMO\_CENTROIDE

Marca como error aquellos polígonos que son vecinos y que tienen el mismo centroide.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre de la topología | No |

## Observaciones

Si no hay ninguna topología cargada, la orden muestra un mensaje de error y termina. Si no indicas el parámetro o la topología no existe, la orden emite un sonido de error y termina.

Dos polígonos válidos de la topología se consideran vecinos cuando comparten al menos un tramo. La orden crea una tarea de error por cada pareja de vecinos cuyos centroides tienen el mismo texto, los mismos códigos y los mismos atributos. La tarea señala los tramos compartidos.

## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-poligonos-vecinos-mismo-centroide.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {1AB418B7-39BA-44A5-A927-83CE87D31892} |
