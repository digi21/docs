# SELECCIONA\_EDITOR\_BBDD

Selecciona en el dibujo las entidades enlazadas a los registros que estén seleccionados en un editor de base de datos.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Número del editor de base de datos | Número entero de 0 a 3. El 0 es el primer editor | No |

## Observaciones

Requiere que se esté ejecutando una orden que admita selección múltiple.

La orden envía a la orden activa las entidades visibles y dentro de la zona de interés, de cualquier archivo de dibujo cargado, que tengan un código enlazado a alguno de los registros seleccionados en el editor. Solo se tiene en cuenta la tabla del primer registro seleccionado. Si no hay registros seleccionados en el editor, o si ninguna entidad está enlazada a ellos, la orden muestra un aviso y emite un sonido de error.

## Características de la orden

| Tipo de orden | [Orden inmediata](selecciona-editor-bbdd.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [SELECCIONA\_GEOMETRIA\_PANEL\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-geometria-panel-bbdd.md) |
| Nombre interno | {175A9D2E-D7B2-4915-816D-6F7D65E68EF4} |
