# DETECTAR\_ERRORES\_CONTINUIDAD\_LINEAS\_CASES

Detecta errores de continuidad en líneas que finalizan en el límite de dos modelos y que no continuan en el siguiente modelo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código de las líneas que forman el límite entre modelos | Si |
| 2 | Forzar mismo código \(0 o 1\) | Si |
| 3 | Código o códigos de las líneas a analizar \(uno o más\) | Si |

## Observaciones

La orden necesita al menos dos archivos de dibujo cargados. Con menos, muestra un mensaje de error y termina.

Si indicas menos de tres parámetros, la orden muestra un cuadro de diálogo para seleccionar los códigos, el código de límite y la opción de forzar el mismo código. Si cancelas el cuadro de diálogo, la orden muestra un mensaje de error y termina.

La orden localiza los tramos de las líneas con el código de límite que aparecen en más de un archivo de dibujo. Por cada extremo de línea que coincide con un vértice de esos tramos:

- Si solo un archivo de dibujo tiene líneas que terminan en ese punto, la orden crea una tarea de error de continuidad.
- Si varios archivos tienen líneas que terminan en ese punto y el parámetro 2 vale 1, la orden crea una tarea de error por cada código que aparece en un archivo y no en otro.

La orden solo analiza las líneas que tienen alguno de los códigos del parámetro 3 o de los seleccionados en el cuadro de diálogo.

## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-errores-continuidad-lineas-cases.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Detectar errores de conectividad de líneas entre archivos... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [AJUSTA\_LIMITES\_ARCHIVOS\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/ajusta-limites-archivos-dibujo.md)<br>[CONTROL\_TOPOLOGICO\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-topologico-cases.md)<br>[DETECTAR\_ERRORES\_ATRIBUTOS\_BBDD\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-errores-atributos-bbdd-cases.md) |
| Nombre interno | {991B1568-5815-48B2-9829-7D4E504A8951} |
