# Importadores y exportadores
<!-- id: importadores-y-exportadores -->

Digi3D.AI lee y escribe distintos formatos de archivo mediante **importadores y exportadores**. Cada uno declara qué puede hacer:

- **Importación**: el formato puede leerse con la orden [IMPORTAR](../ordenes/i/importar.md).
- **Exportación**: el formato puede escribirse con la orden [EXPORTAR](../ordenes/e/exportar.md).
- **Acceso directo**: el formato puede seleccionarse directamente al abrir o guardar una ventana de dibujo (sin pasar por IMPORTAR/EXPORTAR).

Los parámetros de cada importador/exportador se le pasan mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md) (o como parámetros de IMPORTAR/EXPORTAR), y se describen en la página de cada uno.

| Formato | Extensiones | Importa | Exporta | Acceso directo |
| :--- | :--- | :---: | :---: | :---: |
| [ArcGIS DEM](arcgis-dem.md) | `.asc` | Sí | No | Sí |
| [Archivos Adobe Pdf](pdf.md) | `.pdf` | No | Sí | No |
| [Archivos Ascii de Digi](ascii-de-digi.md) | `.asc` | Sí | Sí | No |
| [Archivos ASCII de Kork](kork.md) | `.lst` | Sí | Sí | No |
| [Archivos AutoCAD DWG](dwg.md) | `.dwg` | Sí | Sí | Sí |
| [Archivos AutoCAD DXF](dwg.md) | `.dxf` | Sí | Sí | No |
| [Archivos Blend](blend.md) | `.blend` | Sí | Sí | Sí |
| [Archivos Datawarehouse de Geomedia](geomedia.md) | `.mdb` | Sí | Sí | Sí |
| [Archivos de conexión con PostGIS](postgis.md) | `.pg` | Sí | Sí | Sí |
| [Archivos de orientación de imagen esférica de Leica Pegasus](imagen-esferica.md) | `.csv`, `.e57`, `.ptx`, `.spherical` | Sí | No | No |
| [Archivos DGNv8](dgn.md) | `.dgn` | Sí | Sí | Sí |
| [Archivos Digi](bin.md) | `.bin`, `.bik` | Sí | Sí | Sí |
| [Archivos Digi de doble precisión](bin-doble-precision.md) | `.bind` | Sí | Sí | Sí |
| [Archivos Esri FileGdb](filegdb.md) | `.gdb` | Sí | Sí | Sí |
| [Archivos FICC](ficc.md) | `.a`, `.p`, `.s`, `.t`, `.x` | Sí | No | No |
| [Archivos GeoJSON](geojson.md) | `.geojson` | Sí | Sí | No |
| [Archivos GeoPackage](geopackage.md) | `.gpkg` | Sí | Sí | Sí |
| [Archivos IFC](ifc.md) | `.ifc` | Sí | Sí | No |
| [Archivos KML de Google Earth](kml.md) | `.kml` | Sí | Sí | Sí |
| [Archivos PointCloud](pointcloud.md) | `.las`, `.pts`, `.e57`, `.ptx`, `.laz` | Sí | No | No |
| [Archivos Scalable Vector Graphics](svg.md) | `.svg` | Sí | Sí | No |
| [Archivos Shapefile de ESRI](shp.md) | `.shp` | Sí | Sí | Sí |
| [Archivos Skeetch Up](sketchup.md) | `.skp` | Sí | Sí | Sí |
| [Archivos VEC de Latino](vec.md) | `.vec` | Sí | Sí | No |
| [Archivos Well Known Text](wkt.md) | `.wkt` | Sí | Sí | Sí |
| [Imágenes ráster](raster.md) | — | Sí | No | Sí |
| [MDT (modelo digital del terreno)](mdt.md) | `.mdt` | Sí | No | No |
| [OpenStreetMap (mapa de teselas)](osm-slippy-map.md) | `.osms` | Sí | No | No |
| [OpenStreetMap (OSM)](osm.md) | `.osm` | Sí | No | No |
| [Photomod](photomod.md) | — | Sí | Sí | No |
| [Valores separados por comas](csv.md) | `.csv`, `.txt` | Sí | No | No |
| [WMS (Web Map Service)](wms.md) | `.wmsconnection` | Sí | No | Sí |

## Parámetros al crear y al abrir archivos

Al crear, abrir, importar o exportar un archivo, la categoría **Motor de importación/exportación** de los cuadros de diálogo muestra las propiedades del formato. Digi3D.AI muestra además otros cuadros de diálogo para algunos formatos, y casi todos necesitan un sistema de referencia de coordenadas. La página de cada formato explica las propiedades, los cuadros de diálogo y el sistema de referencia en la sección **Parámetros del motor de importación/exportación**.

| Formato | Propiedades del motor | Cuadros de diálogo al abrir o crear | Sistema de referencia de coordenadas |
| :--- | :--- | :--- | :--- |
| [ArcGIS DEM](arcgis-dem.md) | Ninguna | — | Archivo `.prj`; si no existe, se pide |
| [Archivos Adobe Pdf](pdf.md) | Tamaño del papel<br>Escala de impresión<br>Explotar simbología<br>Título | — | — |
| [Archivos Ascii de Digi](ascii-de-digi.md) | Sistema de referencia de coordenadas<br>Decimales | — | Archivo `.prj`; si no existe, la propiedad del motor al importar, o se pide |
| [Archivos AutoCAD DWG](dwg.md) | Archivo de plantilla<br>Versión<br>Importar bloques como<br>Importar bloques<br>Ruta de importación<br>Importar paleta<br>Utilizar colores archivo dibujo | — | Archivo `.prj`; si no existe, se pide |
| [Archivos AutoCAD DXF](dwg.md) | Las de DWG<br>Tipo de archivo | — | Archivo `.prj`; si no existe, se pide |
| [Archivos Datawarehouse de Geomedia](geomedia.md) | Sistema de referencia de coordenadas horizontal | Selección de tablas, si está activada en la configuración | El de la primera capa; si no hay capas, la propiedad del motor |
| [Archivos de conexión con PostGIS](postgis.md) | Servidor<br>Puerto<br>Usuario<br>Contraseña<br>Base de datos<br>Leer únicamente las geometrías que tengan los siguientes valores | Selección de tablas, si está activada en la configuración | El código EPSG de la primera tabla |
| [Archivos de orientación de imagen esférica de Leica Pegasus](imagen-esferica.md) | Ninguna | — | Archivo `.prj`; si no existe, se pide |
| [Archivos DGNv8](dgn.md) | Criterio para códigos<br>Archivo de plantilla<br>Extraer células de<br>Archivo de células<br>Transformar el nivel de las entidades de las células<br>Importar paleta<br>Colores de las entidades<br>Importar células como<br>Incremento de registro splines<br>Formato desconocidos<br>Archivos de recursos de simbología | — | Archivo `.prj`; si no existe, se pide |
| [Archivos Digi](bin.md) | Decimales de precisión<br>Origen global X, Y y Z | — | Archivo `.prj`; si no existe, se pide |
| [Archivos Digi de doble precisión](bin-doble-precision.md) | Modelo de datos<br>Cadena de conexión<br>Conectar en modo solo lectura<br>Omitir carga de archivos de referencia | — | En el propio archivo; se pide al crearlo |
| [Archivos Esri FileGdb](filegdb.md) | Ninguna | Selección de dataset, siempre | El del dataset elegido |
| [Archivos GeoJSON](geojson.md) | Ninguna | — | Fijo: WGS 84 (EPSG 4979) |
| [Archivos GeoPackage](geopackage.md) | Ninguna | Selección de tablas, si está activada en la configuración<br>Elección de sistema, si las capas tienen varios | El de las capas; si no tienen, se pide |
| [Archivos IFC](ifc.md) | Ninguna | — | — |
| [Archivos KML de Google Earth](kml.md) | Título<br>Descripción | — | Fijo: WGS 84 con alturas EGM96 |
| [Archivos PointCloud](pointcloud.md) | Ninguna | Progreso de la creación de los archivos de nivel de detalle | Cabecera del `.las`; si no lo tiene, se pide |
| [Archivos Scalable Vector Graphics](svg.md) | Ancho del dibujo | — | — |
| [Archivos Shapefile de ESRI](shp.md) | Decimales de precisión<br>Codificación<br>Cargar región de interés (BETA) | Selección de tablas, si está activada en la configuración | El de la primera capa; si no hay capas, se pide |
| [Archivos VEC de Latino](vec.md) | Ninguna | — | El de la ventana fotogramétrica o el de la ventana de dibujo |
| [Archivos Well Known Text](wkt.md) | Ninguna | — | Se pide; no se guarda |
| [Imágenes ráster](raster.md) | Comprimir<br>Nivel piramidal | — | Georreferenciación de la imagen; si no la tiene, se pide y se crea un `.prj` |
| [MDT (modelo digital del terreno)](mdt.md) | Ninguna | — | Archivo `.prj`; si no existe, se pide. Tiene que coincidir con el de la ventana de dibujo |
| [OpenStreetMap (mapa de teselas)](osm-slippy-map.md) | Ninguna | — | Fijo: WGS 84 (EPSG 4326) |
| [Valores separados por comas](csv.md) | Separador de campos<br>Columna X, Columna Y, Columna Z | — | Archivo `.prj`; si no existe, se pide |
| [WMS (Web Map Service)](wms.md) | Ninguna | Conexión con el servidor y elección de capas | El de la capa |

Un guion indica que el formato no muestra ningún cuadro de diálogo propio o que su página no documenta el sistema de referencia.