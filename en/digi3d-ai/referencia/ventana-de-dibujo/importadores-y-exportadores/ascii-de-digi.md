# Digi ASCII files
<!-- id: ascii-de-digi -->
<!-- origen: 6279f2fd96f2385efb4caf7e42706a4df60dc37a -->

Importer and exporter for **Digi ASCII files**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.asc <numeroDecimales>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Number of decimal places used to write the file | No |

## Import/export engine parameters

These properties appear in the **Import/export engine** category of dialogs that import or export files in this format. The format cannot be opened directly in a drawing window, so these properties do not appear in the New project dialog. Initial values are those used the last time the format was used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Coordinate reference system | Reference system. **...** opens the selection dialog. Default: **Unknown**. | System assigned when importing a file without a `.prj`. |
| Decimals | Integer. Default: 3. | Number of coordinate decimal places when exporting. |

### Coordinate reference system

The reference system is saved in a `.prj` file with the same name as the drawing file. If the `.prj` exists, Digi3D.AI uses it. If the `.prj` does not exist:

* When importing, the **Coordinate reference system** property is used. If it is **Unknown** or a local system, Digi3D.AI displays **Select the reference coordinate system to be assigned to the file**. The system is not written to any `.prj`.
* When exporting, Digi3D.AI displays **Select the reference coordinate system to be assigned to the file** and creates the `.prj` with the selected system.

## File format

Each entity starts with a header line: a letter indicating the type, `=` if the entity is not deleted or a space if it is deleted, the code, the number of vertices or entities, and the number of attributes. The header is followed by lines specific to the entity type, then one line per attribute.

| Type | Entity | Header | Lines after the header |
| :--- | :--- | :--- | :--- |
| `C` | Line or point | `C=<código> <vértices> <atributos>` | One `x y z` line per vertex. With a single vertex, the entity is a point. |
| `T` | Text | `T=<código> 1 <atributos>` | `altura justificación giro` (oriented text adds `w x y z`), the insertion point's `x y z` and the text. |
| `B` | Image | `B=<código> 2 <atributos>` | Center, rotations and scale (`x y z` each), then the image path. |
| `E` | Polygon | `E=<código> <vértices> <atributos> <contornos interiores>` | One `x y z` line per exterior ring vertex and each interior ring as a `C` entity. |
| `X` | Complex element | `X=<código> <entidades> <atributos>` | Each entity in the complex element as a `C` entity. |
| `Y` | Point complex element | `Y=<código> <entidades> <atributos>` | The insertion point's `x y z giro` (angle in sexagesimal degrees), then each entity as a `C` entity. |

Each attribute is an `A <tabla> <registro> <código>` line. A code containing a space, `=`, `,` or a tab is enclosed in double quotation marks.

The exporter does not write oriented points, meshes, OLE objects, DTM entities or complex elements containing entities other than points or lines. During import, entities of an unknown type are skipped with a warning; this includes the `h`, `A`, `D`, `P`, `M`, `O` and `m` headers that earlier versions wrote without vertices.

### Oriented text

Oriented text is text outside the XY plane. The [CAMERA\_ORIENTED\_TEXT](../variables/t/texto-orientado-con-camara.md) variable describes the commands that create oriented text.

For oriented text, the `altura justificación giro` line is followed by the four orientation numbers `w x y z`: a unit quaternion that rotates the text in its local system (X axis along the baseline, Y axis towards the top of the characters and Z axis towards the reader) before applying the text angle. The angle and four numbers are written with up to 17 significant digits, so reading the file produces the same values. For text in the XY plane, the line has no four additional numbers and the angle is written with two decimal places.

The importer reads orientation if the line has seven or more words. A Digi3D version that does not read orientation uses only the first three words and reads oriented text as text in the XY plane with its angle.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.asc` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | No |
