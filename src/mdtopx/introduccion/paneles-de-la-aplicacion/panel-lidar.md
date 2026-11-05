# Panel LiDAR
<!-- id: panel-lidar -->

[Paneles de la aplicación](/mdtopx/introduccion/paneles-de-la-aplicacion/)

Este panel reúne herramientas de acceso rápido para los documentos de dibujo que contienen nubes de puntos LiDAR. Muestra las clasificaciones LiDAR que tiene el archivo activo, para encenderlas, apagarlas o cambiarles el color sin abrir ningún cuadro de diálogo.

Si el documento activo no es un dibujo (por ejemplo, un TIN o un DEM), el panel aparece vacío y desactivado.

## Lista de clasificaciones

La lista muestra una fila por cada clasificación que tiene el archivo, con:

* Una **casilla** para mostrar u ocultar los puntos de esa clasificación.
* Un **cuadro con el color** con el que se dibujan sus puntos.
* El **código y el nombre** de la clasificación, por ejemplo «[2] Suelo». Las clasificaciones que no están en la [Lista de clasificaciones](../../modulo-laser/vista/lista-de-clasificaciones.md) aparecen como «No definido».
* El **número de puntos** de esa clasificación.

La lista se actualiza sola cuando cambia el archivo: al asignar o borrar puntos, al deshacer o al cambiar de documento.

Se pueden seleccionar varias filas a la vez con las teclas `Ctrl` y `Mayús`. Si se marca o desmarca la casilla de una fila seleccionada, el cambio se aplica a todas las filas seleccionadas. Si la fila no está seleccionada, el cambio solo afecta a esa fila.

Los cambios de visibilidad y de color se guardan en la [Lista de clasificaciones](../../modulo-laser/vista/lista-de-clasificaciones.md). Si una clasificación del archivo no estaba en esa lista, se añade.

## Botones de la lista

* **Color**: cambia el color de las filas seleccionadas. También se puede cambiar el color de una fila haciendo doble clic sobre ella.
* **Todas**: muestra todas las clasificaciones del archivo.
* **Ninguna**: oculta todas las clasificaciones del archivo.
* **Borrar clases**: borra del archivo los puntos de las clasificaciones seleccionadas en la lista. Antes de borrar, pide confirmación indicando qué clasificaciones se van a borrar. Si la vista muestra solo una selección (*Vista selección*), borra solo los puntos de esa zona. Es lo mismo que [Borrar según clasificación](../../modulo-laser/segun-clasificacion-lidar/borrar-segun-clasificacion.md), sin pasar por el cuadro de diálogo.

## Selección

Estas herramientas actúan sobre los puntos seleccionados en la vista activa:

* **Asignar**: cambia la clasificación de los puntos seleccionados a la elegida en el desplegable. El desplegable contiene todas las clasificaciones de la [Lista de clasificaciones](../../modulo-laser/vista/lista-de-clasificaciones.md), aunque el archivo todavía no tenga puntos de ellas.
* **Borrar**: borra los puntos seleccionados, sean de la clasificación que sean. Es lo mismo que pulsar la tecla `Supr` en la vista.

Todas estas operaciones se pueden deshacer.

## Vista selección

El botón **Vista selección** crea una vista con los puntos que están seleccionados. Esta herramienta está también en las [Herramientas para Archivos LIDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/).
