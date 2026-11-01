# Selección de archivos de referencia
<!-- id: seleccion-de-archivos-de-referencia -->

Digi3D.AI muestra este cuadro de diálogo al abrir un archivo de dibujo que tiene archivos de referencia, un proyecto fotogramétrico o un modelo fotogramétrico asociados, si está activada la opción [Preguntar qué archivos de referencia cargar](configuracion/comunicacion-con-el-usuario/preguntar-que-archivos-de-referencia-cargar.md).

## Campos

* **Lista de archivos de referencia**: los archivos de referencia asociados al archivo de dibujo, con el nombre del archivo y su carpeta. Marca los archivos que quieres cargar. Al abrir el cuadro de diálogo están todos marcados.
* **Todos** y **Ninguno**: marcan o desmarcan todos los archivos.
* **Eliminar**: quita de la lista los archivos seleccionados. Al pulsar **Aceptar** dejan de estar asociados al archivo de dibujo, igual que con la orden [DEJAR](../ventana-de-dibujo/ordenes/d/dejar.md).
* **Cargar el proyecto fotogramétrico asociado**, **Cargar el modelo _nombre_ del proyecto fotogramétrico asociado** o **Cargar el modelo fotogramétrico asociado**: casilla que aparece debajo de la lista si el archivo de dibujo tiene asociado un proyecto fotogramétrico, un modelo de un proyecto fotogramétrico o un archivo de modelo fotogramétrico (`.d3d`). El texto termina con la ruta del proyecto o del archivo de modelo. Al abrir el cuadro de diálogo está marcada. Desmarca la casilla del proyecto o del modelo para abrir el archivo de dibujo sin cargar el proyecto ni el modelo.
* **Aceptar**: carga los archivos marcados, quita del archivo de dibujo los eliminados y, si la casilla del proyecto o del modelo está marcada, carga el proyecto o el modelo asociado.
* **Cancelar**: abre el archivo de dibujo sin cargar ningún archivo de referencia ni el proyecto o el modelo asociado, y sin quitar los eliminados.

Si el archivo de dibujo no tiene archivos de referencia pero sí un proyecto o un modelo asociado, la lista aparece vacía y los botones **Todos**, **Ninguno** y **Eliminar** están desactivados.

Los archivos que no se marcan siguen asociados al archivo de dibujo y vuelven a aparecer en la lista la próxima vez que lo abras. Si desmarcas la casilla del proyecto o del modelo, o pulsas **Cancelar**, el proyecto o el modelo sigue asociado al archivo de dibujo y la casilla vuelve a aparecer la próxima vez que lo abras.

La lista y la ruta del proyecto o del modelo asociado se obtienen del [archivo de archivos de referencia](../archivos/archivo-de-archivos-de-referencia.md) del archivo de dibujo.
