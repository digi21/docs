# Archivos GeoPackage
<!-- id: geopackage -->

Importador y exportador de **Archivos GeoPackage**.

## Parámetros

Esta extensión no recibe parámetros por la línea de comandos.

## Parámetros del motor de importación/exportación

Este formato no añade propiedades a la categoría **Motor de importación/exportación** de los cuadros de diálogo: la categoría aparece vacía al crear o abrir un archivo.

### Al abrir el archivo

Si está activada la opción [Preguntar por capas al cargar](../../cuadros-de-dialogo/configuracion/geopackage/preguntar-por-capas-al-cargar.md) del cuadro de diálogo Configuración (activada por defecto) y el archivo tiene alguna capa con geometrías, Digi3D.AI muestra el cuadro de diálogo [Selección de tablas](../../cuadros-de-dialogo/seleccion-de-tablas.md). Si se cancela, no se carga ninguna capa.

### Sistema de referencia de coordenadas

GeoPackage identifica el sistema de referencia de cada capa por su código EPSG. Digi3D.AI trabaja con un único sistema por archivo:

* Si el archivo no tiene ningún sistema de referencia (por ejemplo, al crear un archivo nuevo), Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo** y añade al archivo el sistema elegido. Si el sistema elegido no tiene código EPSG, no se añade al archivo.
* Si el archivo tiene un solo sistema, se usa ese.
* Si las capas tienen sistemas distintos, Digi3D.AI muestra el cuadro **Detectados múltiples sistemas de referencia de coordenadas** con un botón por sistema. El botón elegido fija el sistema con el que se trabaja. Si el archivo no se abre en solo lectura, el cuadro tiene además el botón **Asignar un sistema de referencia a todas las capas...**: abre el cuadro de selección de sistema y, tras pedir confirmación, cambia el sistema de todas las capas al elegido sin reproyectar sus coordenadas. Este cambio modifica el archivo y no se puede deshacer. Si el sistema elegido no tiene código EPSG, Digi3D.AI muestra «El sistema elegido no tiene código EPSG. GeoPackage identifica los sistemas de referencia por ese código, así que no se puede asignar.» y vuelve a mostrar el cuadro.
* Si se cierra el cuadro sin elegir, Digi3D.AI muestra «Apertura cancelada: no se ha elegido ningún sistema de referencia de coordenadas.» y no abre el archivo.

Las capas con un sistema que no es EPSG, o con un código EPSG que Digi3D.AI no conoce, se tratan como sistema **Desconocido**.

### Opciones de la configuración

El cuadro de diálogo Configuración tiene más opciones de este formato en [GeoPackage](../../cuadros-de-dialogo/configuracion/geopackage/README.md).

## Capas y códigos

Las capas sin clave primaria, como las vistas, no se cargan: Digi3D.AI muestra un aviso con su nombre y carga el resto del archivo.

Si varios códigos enlazan con la misma tabla, una entidad recibe el primer código cuyas condiciones cumple todas; un campo sin valor (NULL) no cumple ninguna condición.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.gpkg` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
