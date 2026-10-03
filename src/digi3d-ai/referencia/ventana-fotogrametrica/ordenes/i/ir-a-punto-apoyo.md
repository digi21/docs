# IR\_A\_PUNTO\_APOYO

Mueve el restituidor a un punto de apoyo elegido de un archivo de puntos.

## Parámetros

No admite parámetros.

## Observaciones

La orden lee la ruta del archivo de puntos del valor de registro `ArchivoPuntos`, el mismo que usa la pestaña [Sensores fotogramétricos](/digi3d-ai/referencia/cuadros-de-dialogo/nuevo-proyecto/sensores-fotogrametricos.md) del cuadro de diálogo **Nuevo proyecto**. Si el valor está vacío o el archivo no existe, la orden muestra un cuadro de diálogo para abrir un archivo de puntos y guarda la ruta elegida en ese valor. Si se cancela, la orden termina con la música de error.

Después la orden muestra un cuadro de diálogo con la lista de puntos del archivo: nombre, X, Y, Z y descripción. Cada línea del archivo con al menos cuatro columnas \(nombre, X, Y y Z\) es un punto; la quinta columna, si existe, es la descripción. El botón de examinar del cuadro de diálogo permite cargar otro archivo de puntos.

Para ir a un punto, selecciónalo en la lista y pulsa **Aceptar**, o haz doble clic sobre él. La orden mueve el restituidor a las coordenadas de terreno del punto. Si se cancela el cuadro de diálogo, la orden termina con la música de error.

La orden no comprueba si las orientaciones relativa y absoluta están realizadas.

## Características de la orden

| Tipo de orden | Orden interactiva |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Ir a punto de apoyo... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [IR\_A](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ir-a.md)<br>[IR\_A\_PUNTO\_ORIGEN](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/i/ir-a-punto-origen.md) |
| Nombre interno | {9FCD076A-DD12-42a7-980E-FC2392C95419} |

