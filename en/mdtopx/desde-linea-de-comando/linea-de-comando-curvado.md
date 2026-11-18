# Contouring
<!-- id: linea-de-comando-curvado -->
<!-- origen: e35c0dc4fe250773d1c7388c358cd750f600335f -->

[Contouring](/mdtopx/como/como-curvado.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /CUR [archivo de salida]
```

The input file must be a digital model from which contours will be calculated.

The output file specifies where to save contours. Its extension determines the format: BIN (DIGI), DXF (AutoCad) or DGN (MicroStation).

To configure contouring, MDTopX.ini must also contain the mandatory **\[Curvado]** line followed by:

* **Escala**: contour map scale denominator. Default: 1000.
* **Finas**: intermediate contour interval in meters. Default: 1.
* **Maestras**: index contour interval in meters. Default: 5.
* **TipoSuavizado**: 0 (no smoothing), 1 (B-spline smoothing) or 2 (cubic spline smoothing). Default: 2.
* **FactorSuavizado**: smoothing factor, an integer from 1 to 10, used when **TipoSuavizado** is 1 or 2. Default: 10.
* **ComprobarCortes**: 0 (do not check) or 1 (check intersections between contours when smoothing them). Used when **TipoSuavizado** is not 0. Default: 1.
* **SuavizaRupturas**: 0 (do not smooth or generalize contours where they cross breaklines) or 1 (smooth and generalize). Default: 1.
* **TolLineal**: linear generalization tolerance of the contours, in meters. Default: 0.04. The contouring dialog box recalculates this value from **Escala**; reading MDTopX.ini does not recalculate it.
* **TolSuperficial**: surface generalization tolerance of the contours, in meters. Default: 0.2. The contouring dialog box recalculates this value from **Escala**; reading MDTopX.ini does not recalculate it.
* **CodigoFinas**: code used to store intermediate contour lines. Default: FINAS.
* **CodigoMaestras**: code used to store index contour lines. Default: MAESTR.
* **CodigoFinasDep**: code used to store intermediate depression contour lines. Default: FINASD.
* **CodigoMaestrasDep**: code used to store index depression contour lines. Default: MAESTD.
* **CodigoTextos**: code used to store labels. Default: TEXTOS.
* **TextoCurvas**: 0 (no labels) or 1 (labels on index contours). Default: 1.
* **AlturaTexto**: text height in meters. Used when **TextoCurvas** is 1. Default: 2.
* **SeparaTextos**: label spacing along contour lines, in meters. Used when **TextoCurvas** is 1. Default: 100.
* **Decimales**: number of decimal digits in labels. Used when **TextoCurvas** is 1. Default: 2.
* **CortarCurvas**: 0 (do not cut) or 1 (cut contour lines at the labels). Used when **TextoCurvas** is 1. Default: 1.
* **HayLimite**: 0 (no boundary) or 1 (boundary). Default: 0.
* **Limite**: boundary file name. The file must contain at least one closed line.
* **UsarRangoCota**: 0 (contour the whole elevation range) or 1 (contour only between **CotaMin** and **CotaMax**). Default: 0.
* **CotaMin**: minimum contour elevation in meters, when **UsarRangoCota** is 1. Default: 0.
* **CotaMax**: maximum contour elevation in meters, when **UsarRangoCota** is 1. Default: 0.
* **UsarCurvasRegistradas**: 0 (do not preserve) or 1 (preserve the contours that the digital model has registered as breaklines with the codes **CodigoFinasRegistradas** and **CodigoMaestrasRegistras**). Default: 1.
* **CodigoFinasRegistradas**: code of the intermediate contours registered in the digital model. Default: FINAS.
* **CodigoMaestrasRegistras**: code of the index contours registered in the digital model. The field name is spelled this way, without the syllable "da" of "Registradas". Default: MAESTR.

If the file omits a field, MDTopX uses the value stored in its preferences. On an installation with no stored preferences, that value is the default shown for each field.

```ini
[Curvado]
Escala = 500
TipoSuavizado = 2
FactorSuavizado = 10
Finas = 0.5
Maestras = 2
CodigoFinas = 020123
CodigoMaestras = 020124
HayLimite = 1
Limite = Limite.bin
TextoCurvas = 1
AlturaTexto = 1.5
CodigoTextos = TXC
SeparaTextos = 50
Decimales = 0
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
