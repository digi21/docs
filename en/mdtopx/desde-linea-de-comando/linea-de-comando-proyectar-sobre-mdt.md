# Project onto a DTM
<!-- id: linea-de-comando-proyectar-sobre-mdt -->
<!-- origen: c9166cd6e11dce1f1d9e096a73891a6b4e17996f -->

[Project onto a DTM](/mdtopx/como/como-proyeccion-sobre-mdt.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /PRO [archivo de salida] [archivo a proyectar]
```

The input file must be the digital model onto which the file will be projected.

The output file specifies where to save the projection. Its extension determines the format: BIN (DIGI), DXF (AutoCad) or DGN (MicroStation). If **DocResultados** is 0, MDTopX does not generate the output file.

The file to project is optional. If you enter it, MDTopX projects it instead of the file specified in the **Entrada** field of MDTopX.ini.

To configure projection, MDTopX.ini must also contain the mandatory **\[Proyecta]** line followed by:

* **Entrada**: drawing file to project onto the digital model.
* **CodError**: error marker code. Default: ERROR.
* **ComprobarCota**: 0 (do not check) or 1 (check the difference between original and projected elevations). Default: 0.
* **ComprobarFuera**: 0 (do not check) or 1 (check whether any entity exceeds the digital model boundaries). Default: 0.
* **SizeErrores**: error marker size in meters. Default: 1.
* **Errores**: error marker file name. MDTopX saves it in the format that its extension indicates: BIN (DIGI), DXF (AutoCad) or DGN (MicroStation). Default: ERR.BIN.
* **Tolerancia**: tolerance in meters for marking an error. Default: 1.
* **DocResultados**: 0 (do not generate the output file) or 1 (generate the output file with the projected entities). Default: 1.
* **CotaResultados**: 0 (the elevation of the projected entities is the digital model elevation) or 1 (the elevation of the projected entities is the difference between the original elevation and the digital model elevation). Default: 0.
* **CodigoResultados**: 0 (projected entities keep their original code) or 1 (MDTopX assigns the projected entities a code according to their resulting elevation, using the **Intervalo\[n]** fields). Default: 0.
* **Intervalo\[n]**: sequence of pairs, each made of an elevation value in meters and a code separated by a comma, where n is a consecutive number starting at 1. MDTopX sorts the pairs by elevation value and assigns each entity the code of the first pair whose value is greater than the entity's resulting elevation; if no value is greater, it assigns the code of the last pair. MDTopX stops reading the sequence at the first value of n missing from the file. Used when **CodigoResultados** is 1.
* **Tipo\_Cortes**: 0 (do not use triangle intersections), 1 (use only breakline intersections) or 2 (use all triangle intersections). Default: 2.
* **Tipo\_Interpola**: 0 (interpolate point elevations using intersections) or 1 (project individually). Default: 1.

If the file omits a field, MDTopX uses the value stored in its preferences. On an installation with no stored preferences, that value is the default shown for each field.

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
