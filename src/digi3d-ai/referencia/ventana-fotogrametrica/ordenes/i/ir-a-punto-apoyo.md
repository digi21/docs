# IR\_A\_PUNTO\_APOYO
<!-- id: ir-a-punto-apoyo -->

Mueve el restituidor a un punto de apoyo elegido de un archivo de puntos.

## Parámetros

No admite parámetros.

## Observaciones

La orden lee la ruta del archivo de puntos del valor de registro `ArchivoPuntos`, el mismo que usa la pestaña [Sensores fotogramétricos](/digi3d-ai/referencia/cuadros-de-dialogo/nuevo-proyecto/sensores-fotogrametricos.md) del cuadro de diálogo **Nuevo proyecto**. Si el valor está vacío o el archivo no existe, la orden muestra el cuadro de diálogo de Windows para abrir un archivo y guarda la ruta elegida en ese valor. Si cancelas el cuadro de diálogo para abrir un archivo, la orden termina con la música de error.

Después de leer o seleccionar el archivo de puntos de apoyo, la orden solicita el punto en el cuadro de diálogo **Selecciona el punto de apoyo al que desplazar la ventana fotogramétrica**.

![Cuadro de diálogo Selecciona el punto de apoyo al que desplazar la ventana fotogramétrica](../../../../../images/ir-a-punto-apoyo.png)

* **Archivo de puntos de apoyo**: ruta del archivo cargado. El botón **...** abre el cuadro de diálogo **Selecciona archivo de puntos de apoyo** para cargar otro archivo, y guarda la ruta elegida en el valor `ArchivoPuntos`.
* **Escribe el nombre del punto de apoyo o selecciónalo en la lista**: al escribir, la lista selecciona el punto que se llama exactamente así o, si no hay ninguno, el primero cuyo nombre empieza por el texto escrito. No distingue mayúsculas de minúsculas. Si ningún nombre empieza por el texto, la lista se queda sin selección.
* La lista de puntos muestra las columnas **Punto**, **X**, **Y**, **Z** y **Descripción**. Cada línea del archivo con al menos cuatro datos \(nombre, X, Y y Z\) es un punto; el resto de la línea, si existe, es la descripción. Las demás líneas se ignoran.

Al abrirse, el cuadro de diálogo de selección del punto de apoyo tiene el foco en el campo del nombre. Escribe el nombre del punto o selecciona el punto en la lista y pulsa **Aceptar** o **Intro** para desplazar la ventana fotogramétrica al punto. También puedes hacer doble clic sobre el punto en la lista. Si no hay ningún punto seleccionado, suena un aviso y el cuadro de diálogo sigue abierto.

La orden mueve el restituidor a las coordenadas terreno del punto y suena un pitido. Si se cancela el cuadro de diálogo, la orden termina con la música de error.

La orden no comprueba si las orientaciones relativa y absoluta están realizadas.

El cuadro de diálogo se puede redimensionar y guarda su tamaño y su posición.

## Características de la orden

| Tipo de orden | Orden interactiva |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Ir a punto de apoyo... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [IR\_A](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ir-a.md)<br>[IR\_A\_PUNTO\_ORIGEN](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/i/ir-a-punto-origen.md) |
| Nombre interno | {9FCD076A-DD12-42a7-980E-FC2392C95419} |
