# DIBUJA\_R

Dibuja recintos topológicos a partir de una topología cargada.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

## Observaciones

Si no hay ninguna topología cargada, la orden muestra un mensaje de error y termina.

La orden recorre los recintos de todas las topologías cargadas. Por cada recinto cuyo centroide tiene alguno de los códigos indicados, añade al archivo de dibujo una línea con el contorno exterior del recinto y el código activo.

Si no indicas ningún código, la orden muestra un cuadro de diálogo para seleccionar los códigos.

## Características de la orden

| Tipo de orden | [Orden inmediata](dibuja-r.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {80F52B47-ED1A-4285-B11C-BED8832B1903} |
