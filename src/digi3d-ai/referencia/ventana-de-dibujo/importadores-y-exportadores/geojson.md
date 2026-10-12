# Archivos GeoJSON
<!-- id: geojson -->

Importador y exportador de **Archivos GeoJSON**.

## Parámetros

Esta extensión no recibe parámetros por la línea de comandos.

## Parámetros del motor de importación/exportación

Este formato no añade propiedades a la categoría **Motor de importación/exportación** de los cuadros de diálogo que importan o exportan archivos de este formato.

### Sistema de referencia de coordenadas

Digi3D.AI no pide el sistema de referencia: los archivos de este formato están siempre en coordenadas geográficas WGS 84 tridimensionales (EPSG 4979). Al importar, una posición sin altura toma Z = 0.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.geojson` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | No |
