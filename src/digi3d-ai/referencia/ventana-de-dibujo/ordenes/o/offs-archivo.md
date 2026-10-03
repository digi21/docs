# OFFS\_ARCHIVO

Desactiva códigos en la ventana fotogramétrica para un determinado número de archivo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Índice del archivo de dibujo | No |
| 2 … N | Código o códigos (uno o más, separados por espacios) | No |

## Observaciones

El índice 0 corresponde al archivo de dibujo principal y los índices 1, 2… a los archivos de referencia. El índice -2 aplica la orden a todos los archivos de referencia. Cualquier otro índice fuera de rango la aplica a todos los archivos.

Si solo indicas el índice del archivo, la orden no hace nada. Un parámetro que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

## Características de la orden

| Tipo de orden | [Orden inmediata](offs-archivo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [OFF\_ARCHIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-archivo.md)<br>[OFFS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs.md)<br>[ONS\_ARCHIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons-archivo.md) |
| Nombre interno | {39C9AACB-78EA-4A0E-9969-F5D83985645A} |
