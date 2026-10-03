# SELECCIONA\_INDICE

Permite seleccionar una entidad mediante su índice de registro.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Índice de archivo. El 0 es el primer archivo de dibujo cargado | No |
| 2 | Índice de entidad dentro del archivo. La primera entidad es la 0 | No |

## Observaciones

La orden envía la entidad indicada a la orden que se está ejecutando. Si esa orden admite selección simple, recibe la entidad como seleccionada; si no, recibe una pulsación del pulsador de datos en el primer vértice de la entidad.

La orden emite un sonido de error y no envía nada si no hay ninguna orden en ejecución, si falta alguno de los dos parámetros, si algún índice está fuera de rango o si la entidad no es visible o está fuera de la zona de interés.

## Características de la orden

| Tipo de orden | [Orden inmediata](selecciona-indice.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Seleccionar entidad por posición en el archivo... |
| Barra de herramientas en la que aparece la orden | Selecciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [SELECCIONA\_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md) |
| Nombre interno | {C735FB18-183F-4884-A85D-F08521DC40BC} |
