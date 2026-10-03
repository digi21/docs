# SELECCIONA\_INDICE

Permite seleccionar una entidad mediante su índice de registro.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Índice de archivo. El 0 es el primer archivo de dibujo cargado | Sí |
| 2 | Índice de entidad dentro del archivo. La primera entidad es la 0 | Sí |

Los dos parámetros se indican juntos o no se indica ninguno.

## Observaciones

La orden envía la entidad indicada a la orden que se está ejecutando. Si esa orden admite selección simple, recibe la entidad como seleccionada; si no, recibe una pulsación del pulsador de datos en el primer vértice de la entidad.

### Cuadro de diálogo

Si se ejecuta sin parámetros, por ejemplo desde la opción de menú, la orden muestra un cuadro de diálogo con estos campos:

* **Archivo de dibujo**: lista con el archivo de dibujo y los archivos de referencia cargados, en el orden de su índice. Aparece seleccionado el archivo de dibujo activo.
* **Índice de la entidad**: número de la entidad dentro del archivo seleccionado, empezando en 0. A la derecha del campo se muestra el rango de índices válidos para ese archivo.

Al pulsar **Aceptar**, la orden comprueba que el archivo seleccionado tiene entidades y que el índice está dentro del rango. Si no es así, muestra un mensaje de error y el cuadro de diálogo sigue abierto. Si los dos valores son válidos, la orden hace lo mismo que si se hubieran indicado como parámetros.

Al pulsar **Cancelar**, la orden termina sin enviar nada.

### Errores

La orden emite un sonido de error y no envía nada si no hay ninguna orden en ejecución, si se indica un solo parámetro, si algún índice está fuera de rango o si la entidad no es visible, está fuera de la zona de interés o no tiene vértices. Si no hay ninguna orden en ejecución, la orden no muestra el cuadro de diálogo.

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
