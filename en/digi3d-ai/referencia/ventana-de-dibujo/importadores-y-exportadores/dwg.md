# AutoCAD DWG files
<!-- id: dwg -->
<!-- origen: 8d86317021466545c781db7b27c9accb60f5d3a0 -->

Importer and exporter for **AutoCAD DWG files**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.dwg <Version> <RutaArchivoPlantilla> <ImportarBloques> <RutaImportacionBloques> <ImportarBloquesComoPuntualDigi> <ImportarPaleta> <UtilizarColoresArchivoDibujo>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | AutoCAD version | Yes |
| 2 | Template file path | Yes |
| 3 | Import blocks (0/1) | Yes |
| 4 | Block import path | Yes |
| 5 | Import blocks as Digi points (0/1) | Yes |
| 6 | Import palette (0/1) | Yes |
| 7 | Use drawing file colors (0/1) | Yes |

## Import/export engine parameters

These properties appear in the **Import/export engine** category of the [Drawing file](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) tab in the New project dialog and in dialogs that open, import or export files in this format. Initial values are those used the last time the format was used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Template file | `.dwg` file. Optional. | Base file used when creating a new file. Without a template, the new file is created with the layers and blocks from the code table. |
| Version | AutoCAD 11/12, 13, 14, 2000, 2004, 2007, 2010 or 2013. Default: AutoCAD 2000. | Version used to write the file. |
| Import blocks as | Point or point complex element. Default: Point. | With **Point**, each block reference is read as a point with its position, angle and scale. With **Point complex element**, each block reference is read as a point complex element containing the block's entities. Tables and multiple references (MINSERT) are not read as complex elements. |
| Import blocks | Yes or No. Default: No. | When opening an existing file, creates a `.bin` file for each block in the **Import route** folder. |
| Import route | Folder. | Folder where block `.bin` files are created. |
| Import palette | Yes or No. Default: No. | When opening an existing file, replaces the code table palette with AutoCAD's standard 256-color palette. Does not read the file's palette. |
| Use drawing file colors | Yes or No. Default: No. | With **Yes**, entities with their own color in the file retain it. With **No**, they take their layer's color. |

The same properties appear for `.dxf` files, plus one more:

| Property | Values | What it does |
| :--- | :--- | :--- |
| File type | Ascii or Binary. Default: Ascii. | Format used to write the `.dxf` file. |

Properties for `.dxf` files are saved separately from those for `.dwg`. If a property has never been saved for `.dxf`, its initial value is that for `.dwg`.

The `.dxf` format can be imported and exported, but cannot be opened in a drawing window.

### DXF command line parameters

The [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md) command with the `.dxf` extension accepts different parameters from `.dwg`:

```
IMPORTATION_PARAMETERS=.dxf <Version> <Binario> <ImportarBloquesComoPuntualDigi> <UtilizarColoresArchivoDibujo>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | AutoCAD version (0 = AutoCAD 11/12 … 7 = AutoCAD 2013) | No |
| 2 | File type (0 = Ascii, 1 = Binary) | No |
| 3 | Import blocks as points (0/1) | No |
| 4 | Use drawing file colors (0/1) | No |

For `.dwg` parameters, the version is also the list index (0 = AutoCAD 11/12 … 7 = AutoCAD 2013). An omitted `.dwg` parameter takes the value 0 or empty, rather than the saved value.

### Coordinate reference system

The reference system is saved in a `.prj` file with the same name as the drawing file. If that file does not exist (for example, when creating a new file), Digi3D.AI displays **Select the reference coordinate system to be assigned to the file** and creates the `.prj` with the selected system. If the file is opened read-only or imported, the `.prj` is not created and the selected system is only used during the session. See [Location of the coordinate reference system](../../../sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/archivos-de-dibujo/ubicacion-src-archivos-dibujo.md).

### Polygons and hatches

Each polygon is written as a non-associative solid-fill (`SOLID`) hatch (HATCH), on the layer specified by the code translation and with the layer's color:

- Each exterior ring is one hatch loop, and each hole is another.
- A complex element containing only polygons is written as a single hatch with all its polygons' loops, on the complex element code's layer. Polygons in the complex element lose their own codes: when read, all have that layer's code. A complex element containing other entities is not written.
- The hatch is flat: all polygon and hole vertices take the first vertex's Z. If vertices do not all have the same Z, the code's **Polygons with non-constant Z** property determines what is written (see *Polygons with non-constant Z*).
- A polygon whose exterior ring or any hole has fewer than three vertices is not written, and an error is reported.
- A geometry that would be read back as different polygons is not written, and an error is reported: overlapping polygons in a complex element, a polygon inside another but outside its holes, an island equal to a hole, or a hole outside or equal to its polygon.
- AutoCAD 11/12 has no hatches: the file stores a block of filled triangles (SOLID) with the hatch data, which Digi3D.AI reads back as a polygon. Other programs may see only the block. Secondary entity codes are not preserved in this version.

When reading a hatch, Digi3D.AI converts each closed loop into a ring. Boundary arcs, ellipses and spline curves are converted into vertices using the Configuration options [Minimum number of points](../../cuadros-de-dialogo/configuracion/arcos-y-circunferencias/minimo-de-puntos.md) and [Maximum number of points](../../cuadros-de-dialogo/configuracion/arcos-y-circunferencias/maximo-de-puntos.md): an arc receives the share of **Maximum number of points** corresponding to its angle, never fewer than **Minimum number of points**. Loops are classified by geometric containment according to the hatch style:

| Hatch style | Exterior loops | Hole loops |
| :--- | :--- | :--- |
| Normal | Inside an even number of loops (0, 2…) | Inside an odd number of loops |
| Outer | Inside no other loop | Inside exactly one loop; deeper loops are discarded |
| Ignore | Inside no other loop | None; inner loops are discarded |

A single exterior loop produces a polygon with its holes. Several exterior loops produce a complex element with one polygon per exterior loop. A hatch with no closed loops is read as a complex element containing the entities into which it decomposes. Hatch pattern, scale and angle are not read; when saving the resulting polygon, Digi3D.AI writes it with solid fill.

### Polygons with non-constant Z

In the code table editor, the [Codes](../../editor-de-tablas-de-codigos/pestanas/codigos/README.md) tab shows **Polygons with non-constant Z** for each code, under **AutoCAD file (\*.dwg) importer/exporter**. This property determines how `.dwg` and `.dxf` files store polygons with that code, and complex elements containing only polygons, when their vertices do not all have the same Z. Vertices in exterior rings and holes of all polygons are compared, without tolerance.

| Value | Value in the code table file | What is written |
| :--- | :--- | :--- |
| Flat hatch. Default. | `FlatHatch` | A hatch at the first vertex's Z, as for a polygon with constant Z. The first time such a polygon is written with a code while Digi3D.AI is open, Digi3D.AI displays a warning: “The polygons with the code *code* whose vertices do not all have the same Z are saved as a hatch, which is flat: the hatch takes the Z of the first vertex. […]”. |
| Closed 3D polyline | `Polyline3D` | A closed 3D polyline (POLYLINE) with the Z of each exterior ring vertex. Reading the file produces a closed line, not a polygon. A polyline cannot contain holes or multiple exterior rings, so a polygon with holes and a complex element of several polygons are written as flat hatches. The first time this happens with a code while Digi3D.AI is open, Digi3D.AI displays a warning: “The polygons with holes and the complexes of several polygons with the code *code* whose vertices do not all have the same Z are saved as a hatch, which is flat: the hatch takes the Z of the first vertex. […]”. |
| Do not export | `Reject` | The entity is not written, and an error is reported: “Unable to save in a DWG/DXF file the polygon with the code *code*: its vertices do not all have the same Z, and the code parameters indicate not to export it.” |

A polygon whose vertices all have the same Z is always written as a hatch, regardless of this property.

In the code table file, the property is the `<iodwg:polygon nonConstantZ="..."/>` element within `<iodwg:transform>`. A code table without this element uses **Flat hatch**.

In Python's `digi21.io.dwg` and `digi21.io.dxf` modules, an entity that is not written is counted in `rejected`, and the reason appears in `warnings`.

### Codes that are not exported

If a code's DWG translation in the code table has **Translate this code** = False (`export="0"` attribute), entities with that code are not written to the file. When storing one of these entities in a DWG drawing window, Digi3D.AI discards it and displays a balloon: “The code *code* is not exported to DWG (export="0" in the code table); the entity has not been stored.” The balloon appears once per code while Digi3D.AI is open.

### Oriented text

Oriented text is text outside the XY plane. The [CAMERA\_ORIENTED\_TEXT](../variables/t/texto-orientado-con-camara.md) variable describes the commands that create oriented text. Digi3D.AI reads and writes orientation in the same way in `.dwg` and `.dxf` files.

AutoCAD defines each TEXT and MTEXT entity's plane by its normal (extrusion vector): the text plane is perpendicular to the normal. TEXT rotation is measured from the X axis of the object coordinate system (OCS), which AutoCAD calculates from each entity's normal.

When reading the file:

- If a TEXT normal is not +Z, Digi3D.AI calculates the baseline using rotation measured in that normal's OCS and reads oriented text.
- If an MTEXT normal is not +Z, Digi3D.AI takes the MTEXT direction, stored by AutoCAD in the world coordinate system (WCS), as the baseline and reads oriented text.
- If the normal is +Z, Digi3D.AI reads text in the XY plane with rotation as the text angle.
- A TEXT or MTEXT with a -Z normal is read as oriented text with its readable face towards -Z.

When writing the file:

- Digi3D.AI writes each text as a TEXT.
- For oriented text, Digi3D.AI writes the text's Z axis (perpendicular to the text plane and towards the reader) as the normal, and the baseline angle measured in that normal's OCS as the rotation.
- Text in the XY plane is written with a +Z normal and its angle as the rotation.
- Text whose contents start with `@` is written as a block reference rotated by the text angle, without its orientation.
- The `.bin` files created by **Import blocks** save the angle of each text in the block, without its orientation.

### Configuration options

The Configuration dialog has more options for this format in [DWG file importer/exporter](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-dwg/README.md).

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.dwg` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | Yes |
