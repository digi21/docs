# Triangulation
<!-- id: linea-de-comando-triangulacion -->
<!-- origen: 4e234a37d7d4e687f9b2daaaeab7814e6827dfad -->

[Triangulation](/mdtopx/como/como-triangulacion.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /TRI [archivo de salida]
```

The input file must contain the topographic or mapping information used to calculate the digital model. It can be a TopCal point file, DIGI drawing, AutoCad DXF drawing, MicroStation drawing or ASCII file containing X, Y, Z coordinates.

The output file specifies where to save the triangulation and should have the MDT extension.

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
