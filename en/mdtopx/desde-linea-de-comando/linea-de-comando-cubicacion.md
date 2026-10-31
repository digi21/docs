# Volume calculation
<!-- id: linea-de-comando-cubicacion -->
<!-- origen: b8c12f00845f96184d2ed830b3d91eefdaaadf56 -->

[Volume calculation](/mdtopx/como/como-cubicacion.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /CUB [archivo de salida]
```

The input file must be the digital model used to calculate volumes.

The output file specifies where to save the volume calculation in digital model format.

If profiles are enabled, they are saved with the prefix " Perfiles de " followed by the output file name. Its extension determines their format: BIN (DIGI), DXF (AutoCad) or DGN (MicroStation).

To configure volume calculation, MDTop.INI must also contain the mandatory **\[Cubicacion]** line followed by:

* **FicMDT**: Second digital model used to calculate volumes.
* **Límite**: Drawing file containing the volume calculation boundary.
* **TipoCalculo**: 0 (triangle intersection) or 1 (grid).
* **Paso**: Grid spacing in meters, when using this calculation method.
* **Tolerancia**: Projection tolerance in meters.
* **Perfiles**: 0 (no volume profiles) or 1 (volume profiles).
* **HayInforme**: 0 (no volume report) or 1 (volume profiles).
* **Desbroce**: Vertical thickness in meters of the vegetation layer deducted from the volume calculation.
* **FicInforme**: ASCII volume report file name.
* **Perfiles\_Traza**: Drawing file containing entities from which volume profiles will be calculated.
* **Perfiles\_CodigoRasante**: Code of entities forming the first DTM profile.
* **Perfiles\_CodigoTerreno**: Code of entities forming the second DTM profile.
* **Perfiles\_EscalaHorizontal**: Profile horizontal scale denominator.
* **Perfiles\_EscalaVertical**: Profile vertical scale denominator.
* **Perfiles\_HayGuitarra**: 0 (no data band) or 1 (data band).
* **Perfiles\_Guitarra\_Alineaciones**: Option disabled.
* **Perfiles\_Guitarra\_Altura**: Data band text height in meters.
* **Perfiles\_Guitarra\_AlturaTitulo**: Profile title height in meters.
* **Perfiles\_Guitarra\_CotaRasante**: 0 or 1.
* **Perfiles\_Guitarra\_CotaTerreno**: 0 or 1.
* **Perfiles\_Guitarra\_CotaRojaDesmonte**: 0 or 1.
* **Perfiles\_Guitarra\_CotaRojaTerraplen**: 0 or 1.
* **Perfiles\_Guitarra\_Dist0**: Distance from the origin in meters.
* **Perfiles\_Guitarra\_DistOrigen**: 0 or 1.
* **Perfiles\_Guitarra\_DistParcial**: 0 or 1.
* **Perfiles\_Guitarra\_Kms**: Option disabled.
* **Perfiles\_Guitarra\_Perfiles**: Option disabled.
* **Perfiles\_Guitarra\_TipoPlanoComp**: 0 (absolute datum elevation), 1 (elevation relative to each profile) or 2 (elevation relative to all profiles).
* **Perfiles\_Guitarra\_ValorPlanoComp**: Absolute or relative datum elevation in meters.
* **Perfiles\_Guitarra\_Puntos**: Option disabled.
* **Perfiles\_Guitarra\_CodGuitar**: Data band line codes.
* **Perfiles\_Guitarra\_CodLineasInternas**: Data band internal line codes.
* **Perfiles\_Guitarra\_SoloIntervalo**: 0 (information at every profile point) or 1 (information only at a specified interval).
* **Perfiles\_Guitarra\_Intervalo**: Distance in meters between points where information is recorded.
* **Perfiles\_Presenta\_NumeroPerfiles**: Number of longitudinal profiles per row/column.
* **Perfiles\_Presenta\_OrdenaFilas**: 0 (order by rows) or 1 (order by columns).
* **Perfiles\_Presenta\_SeparaPerfilX**: Horizontal spacing between profiles, in meters.
* **Perfiles\_Presenta\_SeparaPerfilY**: Vertical spacing between profiles, in meters.
* **Perfiles\_Tipo\_Cortes**: 0 (do not use triangle intersections), 1 (use only breakline intersections) or 2 (use all triangle intersections).
* **Perfiles\_Tipo\_Interpola**: 0 (interpolate point elevations using intersections) or 1 (project individually).

```ini
 [Cubicacion]
 FicMDT = radia2.mdt
 Limite = limite.bin
 Perfiles = 1
 HayInforme = 1
 Desbroce = 0.20
 Tolerancia = 0.0
 FicInforme = informe.asc
 Perfiles_Traza = linea.bin
 Perfiles_CodigoRasante = RASANT
 Perfiles_CodigoTerreno = TERREN
 Perfiles_EscalaHorizontal = 1000
 Perfiles_EscalaVertical = 500
 Perfiles_HayGuitarra = 1
 Perfiles_Guitarra_Alineaciones = 0
 Perfiles_Guitarra_Altura = 2
 Perfiles_Guitarra_AlturaTitulo = 5
 Perfiles_Guitarra_CotaRasante = 1
 Perfiles_Guitarra_CotaTerreno = 1
 Perfiles_Guitarra_CotaRojaDesmonte = 1
 Perfiles_Guitarra_CotaRojaTerraplen = 1
 Perfiles_Guitarra_Dist0 = 0
 Perfiles_Guitarra_DistOrigen = 1
 Perfiles_Guitarra_DistParcial = 1
 Perfiles_Guitarra_Kms = 0
 Perfiles_Guitarra_Perfiles = 0
 Perfiles_Guitarra_TipoPlanoComp = 0
 Perfiles_Guitarra_ValorPlanoComp = 900
 Perfiles_Guitarra_Puntos = 0
 Perfiles_Guitarra_CodGuitar = GUITAR
 Perfiles_Guitarra_CodLineasInternas = N0
 Perfiles_Guitarra_SoloIntervalo = 1
 Perfiles_Guitarra_Intervalo = 10
 Perfiles_Presenta_NumeroPerfiles = 4
 Perfiles_Presenta_OrdenaFilas = 1
 Perfiles_Presenta_SeparaPerfilX = 2
 Perfiles_Presenta_SeparaPerfilY = 2
 Perfiles_Tipo_Cortes = 2
 Perfiles_Tipo_Interpola = 0
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
