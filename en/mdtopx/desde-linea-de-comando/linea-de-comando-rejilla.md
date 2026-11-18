# Grid
<!-- id: linea-de-comando-rejilla -->
<!-- origen: 2420b45491b1df9c201f64c2df92ecd091484f84 -->

[Grid](../como/como-rejilla.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /REJ [archivo de salida]
```

The input file must be the digital model onto which the grid will be projected. The grid covers the full extent of the digital model.

The output file specifies where to save the grid. Its extension determines the format: BIN (DIGI), DXF (AutoCad), DGN (MicroStation) or Shape (ARC-GIS).

To configure grid generation, MDTopX.ini must also contain the mandatory **\[Rejilla]** line followed by:

* **IncrementoX**: horizontal grid spacing in meters. Default: 1.
* **IncrementoY**: vertical grid spacing in meters. Default: 1.
* **TipoGrid**: 0 (points only) or 1 (lines). Default: 0.
* **PuntosEnLineas**: 0 (the grid points are stored in a point set) or 1 (the points are stored in lines that join the points of each column and each row). Used only when **TipoGrid** is 0. Default: 0.
* **Codigo**: point or line code. Default: PUNTOS.
* **ConfLineas\_HayDatum**: 0 (no datum) or 1 (datum). Default: 1.
* **ConfLineas\_HayHorizontales**: 0 (no horizontal lines) or 1 (horizontal lines). Default: 1.
* **ConfLineas\_HayVerticales**: 0 (no vertical lines) or 1 (vertical lines). Default: 1.
* **ConfLineas\_HaySuaviza**: 0 (no line smoothing) or 1 (smoothing). Default: 1.
* **ConfLineas\_Datum**: datum elevation in meters. Default: 1.
* **ConfLineas\_Escala**: grid scale denominator. Default: 1000.
* **ConfLineas\_Orientacion**: horizontal line azimuth in degrees. Default: 0.
* **ConfLineas\_Exageracion**: Elevation exaggeration factor, without units. Default: 1.

The fields with the **ConfLineas\_** prefix are used only when **TipoGrid** is 1.

If the file omits a field, MDTopX uses the value stored in its preferences. On an installation with no stored preferences, that value is the default shown for each field.

```ini
[Rejilla]
IncrementoX = 1.5
IncrementoY = 1.5
TipoGrid = 1
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
