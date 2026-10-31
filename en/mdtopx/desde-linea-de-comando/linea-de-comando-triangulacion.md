# Triangulation
<!-- id: linea-de-comando-triangulacion -->
<!-- origen: 8458f35ec30204f02fa8c1b16e3e8fffb6ecc8b0 -->

[Triangulation](/mdtopx/como/como-triangulacion.md)

To run this tool from the command line, enter:

```bash
MDTop [archivo de entrada] /TRI [archivo de salida]
```

The input file must contain the topographic or mapping information used to calculate the digital model. It can be a TopCal point file, DIGI drawing, AutoCad DXF drawing, MicroStation drawing or ASCII file containing X, Y, Z coordinates.

The output file specifies where to save the triangulation and should have the MDT extension.

To configure triangulation, MDTop.INI must also contain the mandatory **\[Triangulación]** line followed by:

* **CodTri**: code used to store triangles.
* **CotaMaxima**: maximum elevation in meters for entities included in the digital model.
* **CotaMinima**: minimum elevation in meters for entities included in the digital model.
* **HayRupturas**: 1 to include breaklines, or 0 for no breaklines.
* **Código\[n]**: sequence of codes included in the model, where n is a consecutive number starting at 1.
* **Ruptura\[m]**: sequence of breakline codes, where m is a consecutive number starting at 1.
* **ExcluirCodigo\[p]**: sequence of codes to exclude from the model, numbered consecutively from 1.
* **ExcluirRuptura\[q]**: sequence of codes not to use as breaklines, numbered consecutively from 1.
* **NoUnirCurvas**: 1 to avoid joining contour lines during triangulation, or 0 to do nothing.
* **Equidistancia**: original contour interval in meters, used when avoiding contour line joining is enabled.

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
NoUnirCurvas = 0
Equidistancia = 1
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
