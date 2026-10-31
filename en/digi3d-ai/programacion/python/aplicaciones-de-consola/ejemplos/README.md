# Programming examples
<!-- id: ejemplos -->
<!-- origen: 0215788a2a409248d327532323f4f50eb3fdda61 -->

Tutorials for learning to program **console applications** with the Digi3D.AI Python API. Each topic starts with a practical goal and shows complete code.

For detailed class and method descriptions, see [Reference](../../referencia/README.md). Each `digi21.io` format module also has a page with reading, creation and conversion examples: see [digi21.io](../../referencia/digi21.io/README.md).

## Topics

- [Reading a drawing file](leer-un-archivo-de-dibujo.md): open a file and iterate over its geometries.
- [Creating a drawing file](crear-un-archivo-de-dibujo.md): write geometries to a new file and convert formats.
- [Creating a shapefile](crear-un-shapefile.md): write one layer per code and configure the codes table.
- [Converting to GeoPackage](convertir-a-geopackage.md): convert shapefile layers to GeoPackage.
- [Exporting to KML and GeoJSON](exportar-a-kml-y-geojson.md): write longitude and latitude for web viewers.
- [Exporting to SVG, WKT and PDF](exportar-a-svg-wkt-y-pdf.md): formats without a coordinate system.
- [Exporting to VEC, IFC, GeoMedia and PostGIS](exportar-a-vec-ifc-geomedia-y-postgis.md): building faces and databases with existing layers.
- [Creating geometries](crear-geometrias.md): construct points, lines, polygons, texts and complexes.
- [Geometry relationships](relaciones-entre-geometrias.md): query whether geometries cross, touch, contain one another, etc.
- [Transforming coordinates with crskit](../../referencia/crskit/ejemplos.md): convert points between reference systems using Digi3D.AI's EPSG database, read a system's WKT and use Digi3D.AI-specific codes. Requires `crskit` (`pip install crskit`).
