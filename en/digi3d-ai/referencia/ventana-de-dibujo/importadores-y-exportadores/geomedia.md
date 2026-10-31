# GeoMedia Datawarehouse files
<!-- id: geomedia -->
<!-- origen: a83dfe1faa837a88b5c95a0df8e98e184c8db047 -->

Importer and exporter for **GeoMedia Datawarehouse files**.

## Parameters

This extension accepts no command line parameters.

## Import/export engine parameters

These properties appear in the **Import/export engine** category of the [Drawing file](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) tab in the New project dialog and in dialogs that open, import or export files in this format. Initial values are those used the last time the format was used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Horizontal coordinate reference system | Reference system. **...** opens the selection dialog. | System assigned to the file if it has none. If the file has layers, the first layer's system is used; for UTM or ETRS89 or WGS84 geographic coordinates, the corresponding EPSG code is used. Default: an unknown local system. |

The property appears both when creating a file and when opening an existing one. Digi3D.AI saves its value in the user configuration.

### Opening the file

If [Ask for layers to load](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-datawarehouse-de-geomedia/preguntar-por-capas-a-cargar.md) is enabled in the Configuration dialog (the default), Digi3D.AI displays [Tables selection](../../cuadros-de-dialogo/seleccion-de-tablas.md). Cancelling displays “The file cannot be loaded if at least one layer is not selected.” and leaves the file unopened.

### Oriented text

Oriented text is text outside the XY plane. The [CAMERA\_ORIENTED\_TEXT](../variables/t/texto-orientado-con-camara.md) variable describes the commands that create oriented text.

GeoMedia saves each text as a `TextPointGeometry`, with a normal (a vector perpendicular to the text plane) and a rotation in degrees within that plane. Rotation is measured from the plane's X axis. Digi3D.AI calculates that axis from the normal using AutoCAD's arbitrary axis algorithm, the same one AutoCAD uses to calculate an entity's object coordinate system (OCS).

When writing text:

- In a text feature class (`gdbGraphicsText`) or a class accepting any geometry type (`gdbAnySpatial`), Digi3D.AI writes a `TextPointGeometry`. For oriented text, the normal is the text's Z axis (perpendicular to the text plane and towards the reader) and rotation is the baseline angle measured from the plane's X axis. For text in the XY plane, the normal is (0, 0, 1) and rotation is the text angle.
- In a point feature class (`gdbPoint`), Digi3D.AI writes an oriented point (`OrientedPointGeometry`) with the angle direction in the XY plane. The text loses its orientation.

When reading a `TextPointGeometry`:

- If the normal does not point in the (0, 0, 1) direction, Digi3D.AI calculates the baseline using rotation measured from the plane's X axis and reads oriented text.
- If the normal points in the (0, 0, 1) direction, is zero or has non-finite components, Digi3D.AI reads text in the XY plane with rotation as the text angle.

This way of measuring rotation has not been checked with files created by GeoMedia. Digi3D.AI reads back the oriented text it writes with the same orientation, but neither how GeoMedia displays that text nor whether Digi3D.AI reads the correct rotation for text with a normal other than (0, 0, 1) in files created by GeoMedia has been checked.

### Configuration options

The Configuration dialog has more options for this format in [GeoMedia Datawarehouse file importer/exporter](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-datawarehouse-de-geomedia/README.md).

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.mdb` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | Yes |
