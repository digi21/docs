# Contouring
<!-- id: linea-de-comando-curvado -->
<!-- origen: 0c0ce1d68acb0f56dca15924c71815b1eba8161b -->

[Contouring](/mdtopx/como/como-curvado.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /CUR [archivo de salida]
```

The input file must be a digital model from which contours will be calculated.

The output file specifies where to save contours. Its extension determines the format: BIN (DIGI), DXF (AutoCad) or DGN (MicroStation).

To configure contouring, MDTop.INI must also contain the mandatory **\[Curvado]** line followed by:

* **AlturaTexto**: text height in meters.
* **Suavizado**: 0 (no smoothing), 1 (light smoothing) or 2 (heavy smoothing).
* **TextoCurvas**: 0 (no labels) or 1 (labels).
* **CodigoFinas**: code for intermediate contour lines.
* **CodigoMaestras**: code for index contour lines.
* **CodigoTextos**: code used to store labels.
* **Escala**: contour map scale denominator.
* **Finas**: intermediate contour interval.
* **Maestras**: index contour interval.
* **SeparaTextos**: label spacing along contour lines, in meters.
* **HayLimite**: 0 (no boundary) or 1 (boundary).
* **Decimales**: number of decimal digits in labels.
* **Límite**: boundary file name.

```ini
[Curvado]
Escala = 500
Suavizado = 2
Finas = 0.5
Maestras = 2
CodigoFinas = 020123
CodigoMaestras = 020124
HayLimite = 1
Limite = Limite.bin
TextosCurvas = 1
AlturaTexto = 1.5
CodigoTextos = TXC
SeparaTextos = 50
Decimales = 0
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
