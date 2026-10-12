# Archivos PointCloud
<!-- id: pointcloud -->

Importador de **Archivos PointCloud**.

## Parámetros

Esta extensión no recibe parámetros por la línea de comandos.

## Parámetros del motor de importación/exportación

Este formato no añade propiedades a la categoría **Motor de importación/exportación** del cuadro de diálogo que importa archivos de este formato.

### Al importar el archivo

Digi3D.AI prepara los archivos de nivel de detalle de la nube de puntos y muestra el progreso en un cuadro de diálogo. Los parámetros de esa creación están en la sección [Creación de archivos de nivel de detalle de PointCloud](../../cuadros-de-dialogo/configuracion/creacion-de-archivos-de-nivel-de-detalle-de-pointcloud/README.md) del cuadro de diálogo Configuración.

### Sistema de referencia de coordenadas

En un archivo `.las`, el sistema de referencia se lee de la cabecera. Si el archivo no lo tiene, o el formato no lo guarda, Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo**. El sistema elegido se guarda en un archivo `.prj` de la caché de nivel de detalle y no se vuelve a pedir mientras exista ese archivo.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.las`, `.pts`, `.e57`, `.ptx`, `.laz` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | No |
| Se puede abrir una ventana de dibujo con este formato | No |
