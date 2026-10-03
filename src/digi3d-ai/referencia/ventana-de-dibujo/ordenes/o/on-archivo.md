# ON\_ARCHIVO

Activa códigos en la ventana de dibujo para un determinado número de archivo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Índice del archivo de dibujo | No |
| 2 … N | Código o códigos (uno o más, separados por espacios) | No |

## Observaciones

El índice 0 corresponde al archivo de dibujo principal y los índices 1, 2… a los archivos de referencia. El índice -2 aplica la orden a todos los archivos de referencia. Cualquier otro índice fuera de rango la aplica a todos los archivos.

Si solo indicas el índice del archivo, la orden no hace nada. Un parámetro que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

## Características de la orden

| Tipo de orden | [Orden inmediata](on-archivo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {E7C683C8-87E4-49FA-9014-80DBBB120315} |
