# ArcGIS DEM
<!-- id: arcgis-dem -->

Importador de **ArcGIS DEM**.

## Parámetros

Esta extensión no recibe parámetros por la línea de comandos.

## Parámetros del motor de importación/exportación

Este formato no añade propiedades a la categoría **Motor de importación/exportación** de los cuadros de diálogo.

### Sistema de referencia de coordenadas

El sistema de referencia se lee de un archivo `.prj` con el mismo nombre que el archivo de modelo digital de elevaciones (DEM). Si el archivo `.prj` no existe, Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo** y crea el `.prj` con el sistema elegido. Si el archivo DEM se abre en solo lectura o se importa, Digi3D.AI no crea el `.prj` y utiliza el sistema elegido únicamente durante la sesión.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.asc` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | No |
| Se puede abrir una ventana de dibujo con este formato | Sí |
