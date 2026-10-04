# DETECTAR\_ZIGZAG
<!-- id: detectar-zigzag -->

Analiza líneas y detecta ZigZags en sus vértices.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

## Observaciones

Un zigzag es un vértice en el que el vértice anterior y el siguiente tienen las mismas coordenadas X, Y y Z: la línea vuelve sobre sí misma.

La orden analiza las líneas visibles que tengan alguno de los códigos indicados, o todas las líneas visibles si no indicas ningún código. Por cada línea con zigzags crea una tarea de error situada en el primer vértice donde se produce.

## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-zigzag.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Detectar ZigZag/Líneas visibles |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {EC558A4F-3869-46D3-8C17-0EF403A37260} |
