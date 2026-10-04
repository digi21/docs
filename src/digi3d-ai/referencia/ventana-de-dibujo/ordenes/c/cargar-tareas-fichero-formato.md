# CARGAR\_TAREAS\_FICHERO\_FORMATO
<!-- id: cargar-tareas-fichero-formato -->

Carga un fichero de texto con cualquier formato que contenga coordenadas de puntos.

## Parámetros

No admite parámetros.

## Observaciones

La orden muestra un cuadro de diálogo con estos datos:

| Dato | Descripción | Valores |
| :--- | :--- | :--- |
| Archivo | Ruta del fichero de texto | Ruta de archivo |
| X | Posición de la palabra con la coordenada X | Número entero; la primera palabra es la 0 |
| Y | Posición de la palabra con la coordenada Y | Número entero; la primera palabra es la 0 |
| Z | Posición de la palabra con la coordenada Z | Número entero; la primera palabra es la 0 |
| Descripción | Posición de la palabra con la descripción de la tarea | Número entero; la primera palabra es la 0 |
| Tipo de tarea | Tipo con el que se crean las tareas | Lista |

Las palabras de cada línea se separan por espacios, tabuladores o comas. La orden ignora las líneas que no tienen la palabra de mayor posición indicada. Si alguna posición es negativa, la orden emite un sonido de error y termina sin leer el fichero.

Estos puntos aparecerán en la lista de tareas facilitando al usuario posicionarse en dichas coordenadas mediante un solo clic. Si la opción de limpiar automáticamente la lista de tareas está activada, la orden borra antes las tareas existentes.

## Características de la orden

| Tipo de orden | [Orden interactiva](cargar-tareas-fichero-formato.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BORRAR\_TAREAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borrar-tareas.md)<br>[CARGAR\_TAREAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cargar-tareas.md)<br>[GUARDAR\_TAREAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/guardar-tareas.md) |
| Nombre interno | {6E345000-A069-4a06-94BF-5E7D0ACBB0D1} |

