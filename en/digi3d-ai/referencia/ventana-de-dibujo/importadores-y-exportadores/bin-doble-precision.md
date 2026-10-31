# Double-precision Digi files
<!-- id: bin-doble-precision -->
<!-- origen: fb25ad6bbf83d9ddd1da7e26f10ed7fd3bfe345e -->

Importer and exporter for **Double-precision Digi files**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.bind <NombreGestorModeloDatosBaseDatos> <ConexionBBDD>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Database data model manager | No |
| 2 | Database connection string | No |

## Import/export engine parameters

These properties appear in the **Import/export engine** category of the [Drawing file](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) tab in the New project dialog and in dialogs that open, import or export files in this format. Initial values are those used the last time the format was used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Data model | **No connection to database** or one of the installed data model managers. | Manager that saves drawing entity attributes in a database. With **No connection to database**, the file connects to none. |
| Connection string | Text. **...** opens the _Windows_ connection wizard. | Database connection. May contain the drawing filename, which Digi3D.AI substitutes when connecting. Only used if a data model is selected. |
| Connect in read-only mode | Yes or No. Default: No. | With **Yes**, the database connection opens read-only and the loading results list displays “The database is connected in read-only mode: records will not be created or modified.” |
| Skip loading reference files | Yes or No. Default: No. | With **Yes**, reference files associated with the file are not loaded. |

All four properties appear both when creating a file and when opening an existing one. Digi3D.AI saves their values in the user configuration.

### Coordinate reference system

The reference system is saved in the file itself. When creating a new file or exporting to this format, Digi3D.AI displays **Select the reference coordinate system to be assigned to the file**. When opening an existing file, the system is read from the file and not requested. See [Location of the coordinate reference system](../../../sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/archivos-de-dibujo/ubicacion-src-archivos-dibujo.md).

### Oriented text

Oriented text is text outside the XY plane. In addition to an angle around the Z axis, oriented text has an orientation: a unit quaternion (w, x, y, z) that rotates the text in its local system (X axis along the baseline, Y axis towards the top of the characters and Z axis towards the reader) before applying the angle. The [CAMERA\_ORIENTED\_TEXT](../variables/t/texto-orientado-con-camara.md) variable describes the commands that create oriented text.

Each text occupies an entity record in the file. Text in the XY plane is saved as a `Digi21.DigiNG.Text` record. Oriented text is saved as a `Digi21.DigiNG.Text2` record, which contains the fields of `Digi21.DigiNG.Text` followed by the orientation:

| Field | Type | Record |
| :--- | :--- | :--- |
| Insertion point (x, y, z) | Three double-precision numbers | `Text` and `Text2` |
| Angle, in hundredths of a sexagesimal degree | Double-precision number | `Text` and `Text2` |
| Height | Double-precision number | `Text` and `Text2` |
| Justification | Unsigned 16-bit integer | `Text` and `Text2` |
| Character count | 32-bit integer | `Text` and `Text2` |
| Text characters | UTF-16, with no trailing null character | `Text` and `Text2` |
| Orientation (w, x, y, z) | Four double-precision numbers | `Text2` only |

An angle with an integer number of hundredths is written as that integer, without rounding error. The file version is 5 whether or not the file contains `Text2` records. If the file ends before a `Text2` record's orientation, Digi3D.AI reports “The file is corrupted: unable to read the orientation of a text”.

A Digi3D version that does not recognize `Digi21.DigiNG.Text2` behaves as follows:

- It skips each oriented text with “Located an entity of unknown type”, loads the remaining entities and displays the error dialog after loading.
- If the oriented text is part of a complex element or a point complex element, it does not load the complex element or its entities before the text, and loads subsequent entities in the complex element as independent entities.
- When compressing the file with [COMPRESS](../ordenes/c/comprimir.md), it writes only entities it has loaded: oriented text and all other unloaded entities disappear from the file.

MDTopX skips oriented text without displaying a warning.

### Configuration options

The Configuration dialog has more options for this format in [Double-precision binary file importer/exporter](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-binarios-de-doble-precision/README.md).

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.bind` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | Yes |
