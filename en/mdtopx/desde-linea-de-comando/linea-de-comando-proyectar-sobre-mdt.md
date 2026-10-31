# Project onto a DTM
<!-- id: linea-de-comando-proyectar-sobre-mdt -->
<!-- origen: 2ddc59286ddf9eb148f34e4342dfb1178ab06e3f -->

[Project onto a DTM](/mdtopx/como/como-proyeccion-sobre-mdt.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /PRO [archivo de salida]
```

The input file must be the digital model onto which the file will be projected.

The output file specifies where to save the projection. Its extension determines the format: BIN (DIGI), DXF (AutoCad) or DGN (MicroStation).

To configure projection, MDTop.INI must also contain the mandatory **\[Proyecta]** line followed by:

* **Entrada**: drawing file to project onto the digital model.
* **CodError**: error marker code.
* **ComprobarCota**: 0 (do not check) or 1 (check the difference between original and projected elevations).
* **ComprobarFuera**: 0 (do not check) or 1 (check whether any entity exceeds the digital model boundaries).
* **SizeErrores**: error marker size in meters.
* **Errores**: error marker file name.
* **Tolerancia**: tolerance in meters for marking an error.
* **Tipo\_Cortes**: 0 (do not use triangle intersections), 1 (use only breakline intersections) or 2 (use all triangle intersections).
* **Tipo\_Interpola**: 0 (interpolate point elevations using intersections) or 1 (project individually).

```ini
[Proyecta]
Entrada = linea.bin
CodError = ERR
ComprobarCota = 1
ComprobarFuera = 1
SizeErrores = 2.5
Errores = ERR.bin
Tolerancia = 1
Tipo_Cortes = 2
Tipo_Interpola = 1
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
