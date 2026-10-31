# DGNv8 files
<!-- id: dgn -->
<!-- origen: f85da51ecf203b1fafb7a3b8d47bb55afe0eb526 -->

Importer and exporter for **DGNv8 files**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.dgn <RutaArchivoPlantilla> <CriterioCodigos> <UtilizarArchivoCelulas> <ArchivoCelulas> <TransformarNivelesEntidadesQueFormanCell> <ImportarPaleta> <UtilizarColoresDGN> <ImportarCelulasComoPuntualDigi> <IncrementoRegistroSplines> <FormatoDesconocidos> <RutasArchivosRecursos>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Template file path | No |
| 2 | Code assignment criterion | No |
| 3 | Use cell file (0/1) | No |
| 4 | Cell file | Omitted if parameter 3 is 0 |
| 5 | Transform levels of entities in the cell (0/1) | Omitted if parameter 3 is 0 |
| 6 | Import palette (0/1) | No |
| 7 | Use DGN colors (0/1) | No |
| 8 | Import cells as Digi points (0/1) | No |
| 9 | Spline registration increment | No |
| 10 | Unknown code format | No |
| 11 | Resource file paths | Yes. Empty if omitted |

Parameters 4 and 5 are only supplied if parameter 3 is 1. If parameter 3 is 0, the next parameter is **Import palette**, and subsequent parameters move forward two positions. Parameter 2 is the criterion's position in the dialog's **Code criteria** list, starting at 0. Values range from 0 to 18; values above 18 are treated as 18 and negative values as 0.

## Import/export engine parameters

These properties appear in the **Import/export engine** category of the [Drawing file](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) tab in the New project dialog and in dialogs that open, import or export files in this format. Initial values are those used the last time the format was used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Code criteria | Level; Level/Cell; Level, color, style, thickness (with or without Cell); Level/Color; Level/Style; Level/Weight; Graphic group; Geographics; NGix; the same variants with Number of level; Level, color/Cell; Level, color and Cell. Default: Level. | DGN element attributes used to find its Digi3D.AI code when reading, and written when exporting. With **Number of level** options, the level is identified by number rather than name. With **Level, color/Cell**, the level is identified by name; if the element is a cell, matching the cell is sufficient. **Geographics** and **NGix** use those programs' linkages. |
| Template file | `.dgn` file. Optional. | Base file used when creating a new file. Without a template, the new file is created with the levels and palette from the code table. |
| Extract cells from | A MicroStation cell file or the Digi symbols folder. Default: the symbols folder. | Source of cell shapes. |
| Cell file | `.cel` file. | Cell file loaded if **Extract cells from** is a cell file. Its initial value is that of [Cell file](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-bentley-microstation-v8/archivo-de-celulas.md) in the Configuration dialog. |
| Transform the cell entity level | Yes or No. Default: No. | Export only: assigns the code's level, color, style and weight to each cell element. |
| Import palette | Yes or No. Default: Yes. | When opening an existing file, imports its color palette, if any. |
| Entity colors | DGN file colors or active code table colors. Default: DGN file colors. | Source of entity colors and weights when reading the file. |
| Import cells as | Point or point complex element. Default: Point. | Entity type to which each cell is converted when reading the file. |
| Registry spline increase | Real number. Default: 1. | Distance between vertices when converting splines into polylines during reading. A value below 1 is treated as 1. |
| Unknown format | Text with the placeholders `$(Nivel)`, `$(Color)`, `$(Estilo)`, `$(Grosor)` and `$(GrupoGrafico)`. Default: `$(Nivel)`. | Name of the code created for elements with no translation in the code table. If empty, `$(Nivel)` is used. |
| Symbology resource files | MicroStation resource file paths separated by semicolons. The last has the highest priority. | Resource files loaded when opening the file. |

All properties appear both when creating a file and when opening an existing one. Digi3D.AI saves their values in the user configuration.

### Coordinate reference system

The reference system is saved in a `.prj` file with the same name as the drawing file. If that file does not exist (for example, when creating a new file), Digi3D.AI displays **Select the reference coordinate system to be assigned to the file** and creates the `.prj` with the selected system. If the file is opened read-only or imported, the `.prj` is not created and the selected system is only used during the session. See [Location of the coordinate reference system](../../../sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/archivos-de-dibujo/ubicacion-src-archivos-dibujo.md).

### Codes that are not exported

If a code's DGN translation in the code table has **Translate this code** = False (`export="0"` attribute), entities with that code are not written to the file. When storing one of these entities in a DGN drawing window, Digi3D.AI discards it and displays a balloon: “The code *code* is not exported to DGN (export="0" in the code table); the entity has not been stored.” The balloon appears once per code while Digi3D.AI is open.

### Oriented text

Oriented text is text outside the XY plane. The [CAMERA\_ORIENTED\_TEXT](../variables/t/texto-orientado-con-camara.md) variable describes the commands that create oriented text.

The DGN model type determines whether the file preserves text orientation:

| Model | Reading the file | Writing the file |
| :--- | :--- | :--- |
| 3D | The text element stores its rotation in a quaternion. If rotation is around the Z axis, Digi3D.AI reads text in the XY plane with that angle. With any other rotation, Digi3D.AI reads oriented text with the element's full rotation. | Digi3D.AI writes the oriented text's full rotation to the quaternion: its orientation and angle around the Z axis. Text in the XY plane is written with a rotation around the Z axis. |
| 2D | The text element stores only an angle, and Digi3D.AI reads text in the XY plane with that angle. | Digi3D.AI writes the text angle. Oriented text loses its orientation. |

Digi3D.AI reads a text node (the MicroStation element grouping several lines of text) in a 3D model as a complex element containing the node's texts, each preserving its orientation.

### Configuration options

The Configuration dialog has more options for this format in [Bentley MicroStation v8 file importer/exporter](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-bentley-microstation-v8/README.md).

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.dgn` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | Yes |
