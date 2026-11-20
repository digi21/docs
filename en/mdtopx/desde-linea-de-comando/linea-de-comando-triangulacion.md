# Triangulation
<!-- id: linea-de-comando-triangulacion -->
<!-- origen: 2416b7317bcb79a9b0f3cff1a38be3dd3f824f33 -->

[Triangulation](/mdtopx/como/como-triangulacion.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /TRI [archivo de salida]
```

The input file must contain the topographic or mapping information used to calculate the digital model. It can be a TopCal point file, DIGI drawing, AutoCad DXF drawing, MicroStation drawing or ASCII file containing X, Y, Z coordinates. MDTopX reads as points the POINT entities of DXF and DWG files and the MicroStation lines whose start and end coincide, with the code of their layer or level.

The output file is the name with which MDTopX saves the triangulation. MDTopX chooses the format from the extension of the output file, regardless of letter case:

| Extension | Format |
| --- | --- |
| STL | Binary STL mesh with the triangles of the model. |
| OBJ | Wavefront OBJ mesh with the triangles of the model. |
| Any other, or none (for example, MDT or TIN) | MDTopX native format for TIN digital models. The extension does not change the content: `salida.tin` and `salida.mdt` contain the same format. |

With STL and OBJ, if the **Base** field of the **\[ExportarMDT]** section of MDTopX.ini is 1, MDTopX also adds the base of the model (see [Export digital terrain models](/mdtopx/desde-linea-de-comando/linea-de-comando-exportar-modelos-digitales-del-terreno.md)). For the native format, use the MDT extension, which is the one MDTopX uses for its TIN digital models.

The `/LADO` and `/TRANSFORM` commands also save a TIN model in STL format with the .stl extension, in OBJ format with the .obj extension and in the native format with any other extension or no extension, according to the extension of the file in which they save it: the input file or, with `/TRANSFORM`, the output file.

To configure triangulation, MDTopX.ini must also contain the mandatory **\[Triangulacion]** line followed by:

* **CodTri**: code used to store triangles. Default: TRIANG.
* **CotaMaxima**: maximum elevation in meters for entities included in the digital model. Default: 5000.
* **CotaMinima**: minimum elevation in meters for entities included in the digital model. Default: 0.01.
* **HayRupturas**: 1 to include breaklines, or 0 for no breaklines. Default: 1.
* **Codigo\[n]**: sequence of codes included in the model, where n is a consecutive number starting at 1. MDTopX stops reading the sequence at the first value of n missing from the file. If **Codigo1** does not exist, the model uses all codes (wildcard `*`).
* **Ruptura\[m]**: sequence of breakline codes, where m is a consecutive number starting at 1. MDTopX stops reading the sequence at the first value of m missing from the file. If **Ruptura1** does not exist, any code (wildcard `*`) can be a breakline.
* **ExcluirCodigo\[p]**: sequence of codes to exclude from the model, where p is a consecutive number starting at 1.
* **ExcluirRuptura\[q]**: sequence of codes not to use as breaklines, where q is a consecutive number starting at 1.
* **CotaInterseccion**: elevation assigned to the point where two breaklines cross: 0 (independent elevation, each line keeps its own), 1 (mean elevation), 2 (highest elevation) or 3 (lowest elevation). MDTopX applies this field only when **HayRupturas** is 1. Default: 1.
* **DistanciaMaxima**: maximum distance in meters between two vertices of a triangle. MDTopX does not generate triangles that have a longer side. The value 0 disables the limit. Default: 0.
* **NoUnirCurvas**: 1 to avoid joining contour lines during triangulation, or 0 to allow contour lines to be joined during triangulation. Default: 0.
* **Equidistancia**: original contour interval in meters, used when avoiding contour line joining is enabled. Default: 1.

If the file omits a field, MDTopX uses the value stored in its preferences. On an installation with no stored preferences, that value is the default shown for each field.

```ini
[Triangulacion]
CodTri = TRIANGUL
CotaMaxima = 950.5
CotaMinima = 0.01
HayRupturas = 1
Codigo1 = 020123
Codigo2 = 020124
Codigo3 = 060140
Ruptura1 = 020124
Ruptura2 = 060140
CotaInterseccion = 1
DistanciaMaxima = 0
NoUnirCurvas = 0
Equidistancia = 1
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
