# Importadores y exportadores

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
| [Archivos Blend](blend.md) | `.blend` | Sí | Sí | Sí |
| [Archivos Datawarehouse de Geomedia](geomedia.md) | `.mdb` | Sí | Sí | Sí |
| [Archivos de conexión con PostGIS](postgis.md) | `.pg` | Sí | Sí | Sí |
| [Archivos de orientación de imagen esférica de Leica Pegasus](imagen-esferica.md) | `.csv`, `.e57`, `.ptx`, `.spherical` | Sí | No | No |
| [Archivos DGNv8](dgn.md) | `.dgn` | Sí | Sí | Sí |
| [Archivos Digi](bin.md) | `.bin`, `.bik` | Sí | Sí | Sí |
| [Archivos Digi de doble precisión](bin-doble-precision.md) | `.bind` | Sí | Sí | Sí |
| [Archivos Esri FileGdb](filegdb.md) | `.gdb` | Sí | Sí | Sí |
| [Archivos FICC](ficc.md) | `.a`, `.p`, `.s`, `.t`, `.x` | Sí | No | No |
| [Archivos GeoJSON](geojson.md) | `.geojson` | No | Sí | No |
| [Archivos GeoPackage](geopackage.md) | `.gpkg` | Sí | Sí | Sí |
| [Archivos IFC](ifc.md) | `.ifc` | Sí | Sí | No |
| [Archivos KML de Google Earth](kml.md) | `.kml` | Sí | Sí | Sí |
| [Archivos PointCloud](pointcloud.md) | `.las`, `.pts`, `.e57`, `.ptx`, `.laz` | Sí | Sí | Sí |
| [Archivos Scalable Vector Graphics](svg.md) | `.svg` | Sí | Sí | Sí |
| [Archivos Shapefile de ESRI](shp.md) | `.shp` | Sí | Sí | Sí |
| [Archivos Skeetch Up](sketchup.md) | `.skp` | Sí | Sí | Sí |
| [Archivos VEC de Latino](vec.md) | `.vec` | Sí | Sí | Sí |
| [Archivos Well Known Text](wkt.md) | `.wkt` | Sí | Sí | Sí |
| [Imágenes ráster](raster.md) | — | Sí | No | Sí |
| [MDT (modelo digital del terreno)](mdt.md) | `.mdt` | Sí | No | No |
| [OpenStreetMap (mapa de teselas)](osm-slippy-map.md) | `.osms` | Sí | No | No |
| [OpenStreetMap (OSM)](osm.md) | `.osm` | Sí | No | No |
| [Photomod](photomod.md) | — | Sí | Sí | No |
| [Valores separados por comas](csv.md) | `.csv`, `.txt` | Sí | No | No |
| [WMS (Web Map Service)](wms.md) | `.wmsconnection` | Sí | No | Sí |
