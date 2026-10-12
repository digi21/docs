# Archivos Esri FileGdb
<!-- id: filegdb -->

Importador y exportador de **Archivos Esri FileGdb**.

## Parámetros

Esta extensión no recibe parámetros por la línea de comandos.

## Parámetros del motor de importación/exportación

Este formato no añade propiedades a la categoría **Motor de importación/exportación** de los cuadros de diálogo: la categoría aparece vacía al crear o abrir un archivo.

### Al crear o abrir el archivo

Si la geodatabase no existe, Digi3D.AI la crea. Después, al crear, abrir, importar o exportar el archivo, muestra el cuadro de diálogo **Selección de dataset**, con el texto «Se han localizado los siguientes datasets. Selecciona el que quieres abrir»:

* La lista muestra los _Feature Datasets_ de la geodatabase. Si hay capas fuera de cualquier dataset, la lista incluye también **(raíz de la geodatabase)**.
* **Aceptar** se activa al seleccionar un elemento de la lista.
* **Nuevo...** abre el cuadro de diálogo **Crear Dataset**, con los campos **Nombre** y **Código de la Referencia Espacial**. El botón **Buscar...** abre el buscador de sistemas de referencia horizontales y escribe el código del sistema elegido. Digi3D.AI muestra un error si el nombre está vacío, si el código es 0 o si ya existe un dataset con ese nombre. En la versión actual, el dataset se crea siempre con el sistema EPSG 25830 (ETRS89 / UTM zona 30N), sea cual sea el código indicado.
* **Cancelar** no abre el archivo y muestra «Operación cancelada por el usuario».

Solo se cargan las capas del dataset elegido.

### Sistema de referencia de coordenadas

Si se elige un dataset, el sistema de referencia es el del dataset. Si se elige **(raíz de la geodatabase)**, el sistema lo aporta cada capa.

### Opciones de la configuración

El cuadro de diálogo Configuración tiene más opciones de este formato en [Importador/exportador de FileGdb](../../cuadros-de-dialogo/configuracion/importador-exportador-de-filegdb/README.md).

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.gdb` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
