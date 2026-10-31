# Grid
<!-- id: linea-de-comando-rejilla -->
<!-- origen: 5260e2d80abcf5ff8762a2293c68be3e6ce2cac6 -->

[Grid](../como/como-rejilla.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /REJ [archivo de salida]
```

The input file must be the digital model onto which the grid will be projected.

The output file specifies where to save the grid. Its extension determines the format: BIN (DIGI), DXF (AutoCad), DGN (MicroStation) or Shape (ARC-GIS).

To configure grid generation, MDTop.INI must also contain the mandatory **\[Rejilla]** line followed by:

* **IncrementoX**: horizontal grid spacing in meters.
* **IncrementoY**: vertical grid spacing in meters.
* **SoloPuntos**: 0 (points) or 1 (lines).
* **Código**: point or line code.
* **ConfLineas\_HayDatum**: 0 (no datum) or 1 (datum).
* **ConfLineas\_HayHorizontales**: 0 (no horizontal lines) or 1 (horizontal lines).
* **ConfLineas\_HayVerticales**: 0 (no vertical lines) or 1 (vertical lines).
* **ConfLineas\_HaySuaviza**: 0 (no line smoothing) or 1 (smoothing).
* **ConfLineas\_Datum**: datum elevation in meters.
* **ConfLineas\_Escala**: grid scale denominator.
* **ConfLineas\_Orientación**: horizontal line azimuth in degrees.
* **ConfLineas\_Exageración**: elevation exaggeration factor.

```ini
[Rejilla]
IncrementoX = 1.5
IncrementoY = 1.5
SoloPuntos = 1
Codigo = N1
ConfLineas_HayDatum = 1
ConfLineas_HayHorizontales = 1
ConfLineas_HayVerticales = 1
ConfLineas_HaySuaviza = 1
ConfLineas_Datum = 900
ConfLineas_Escala = 1000
ConfLineas_Orientacion = 0
ConfLineas_Exageracion = 3
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
