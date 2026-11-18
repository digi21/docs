# Volume calculation
<!-- id: linea-de-comando-cubicacion -->
<!-- origen: 8108d233cbc02dcfb11df09122ee169051f51a71 -->

[Volume calculation](/mdtopx/como/como-cubicacion.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /CUB [archivo de salida]
```

The input file must be the digital model used to calculate volumes.

The output file specifies where to save the volume calculation in digital model format.

If profiles are enabled, they are saved with the prefix " Perfiles de " followed by the output file name. Its extension determines their format: BIN (DIGI), DXF (AutoCad) or DGN (MicroStation).

To configure volume calculation, MDTopX.ini must also contain the mandatory **\[Cubicacion]** line followed by:

* **FicMDT**: Second digital model used to calculate volumes.
* **Limite**: Drawing file containing the volume calculation boundary.
* **HayLimites**: 0 (no boundary file) or 1 (use the boundary file specified in **Limite**). Default: 1.
* **TipoCalculo**: 0 (triangle intersection) or 1 (grid). Default: 0.
* **Paso**: Grid spacing in meters, when using this calculation method. Default: 1.
* **Tolerancia**: Projection tolerance in meters. Default: 0.
* **Perfiles**: 0 (no volume profiles) or 1 (volume profiles). Default: 0.
* **HayInforme**: 0 (no volume report) or 1 (volume report). Default: 1.
* **SumarInfo**: 0 or 1. The value 1 indicates that the volume calculation is part of a report that covers several volume calculations. Default: 0.
* **Desbroce**: Vertical thickness in meters of the vegetation layer deducted from the volume calculation. Default: 0.
* **FicInforme**: ASCII volume report file name. Default: Informe.asc.

The following fields, with the **Perfiles\_** prefix, configure the volume profiles:

* **Perfiles\_Traza**: Drawing file containing entities from which volume profiles will be calculated.
* **Perfiles\_TipoPerfiles**: 0 (profiles along the entities of the **Perfiles\_Traza** file), 1 (horizontal profiles) or 2 (vertical profiles). Default: 0.
* **Perfiles\_Incremento**: Spacing in meters between horizontal or vertical profiles. Default: 1.
* **Perfiles\_CubicarPerfiles**: 0 (no volume calculation of the profiles) or 1 (volume calculation of the profiles). Default: 0.
* **Perfiles\_InfoCubicacion**: ASCII file name with the volume calculation of the profiles, when **Perfiles\_CubicarPerfiles** is 1. Default: Cubicacion Perfiles.asc.
* **Perfiles\_CodigoRasante**: Code of entities forming the first DTM profile. Default: RASANT.
* **Perfiles\_CodigoTerreno**: Code of entities forming the second DTM profile. Default: TERREN.
* **Perfiles\_CodigoCapaVegetal**: Code of entities forming the topsoil profile. Default: CV.
* **Perfiles\_EscalaHorizontal**: Profile horizontal scale denominator. Default: 1000.
* **Perfiles\_EscalaVertical**: Profile vertical scale denominator. Default: 500.
* **Perfiles\_HayGuitarra**: 0 (no data band) or 1 (data band). Default: 1.

MDTopX reads the data band, presentation and projection type fields of the volume profiles from this same section, without the **Perfiles\_** prefix. MDTopX does not read fields with the **Perfiles\_Guitarra\_**, **Perfiles\_Presenta\_** or **Perfiles\_Tipo\_** prefix. These fields are the ones described for longitudinal profiles on the [Profiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md) page:

* **Guitarra\_**: **Guitarra\_Alineaciones**, **Guitarra\_Kms**, **Guitarra\_Perfiles**, **Guitarra\_Puntos**, **Guitarra\_CotaRasante**, **Guitarra\_CotaTerreno**, **Guitarra\_CotaRojaDesmonte**, **Guitarra\_CotaRojaTerraplen**, **Guitarra\_Pendientes**, **Guitarra\_Galibo**, **Guitarra\_TipoPlanoComp**, **Guitarra\_ValorPlanoComp**, **Guitarra\_CodGuitar**, **Guitarra\_CodLineasInternas**, **Guitarra\_SoloIntervalo**, **Guitarra\_Intervalo**, **Guitarra\_IncluirLineasHor**, **Guitarra\_SeparaLineasHor**, **Guitarra\_IncluirNombre**, **Guitarra\_PosNombre**, **Guitarra\_CodNombre**, **Guitarra\_AlturaNombre**, **Guitarra\_IncluirEscalas**, **Guitarra\_PosEscalas**, **Guitarra\_CodEscalas**, **Guitarra\_AlturaEscalas**, **Guitarra\_IncluirSuperf**, **Guitarra\_PosSuperf**, **Guitarra\_CodSuperf**, **Guitarra\_AlturaSuperf**, **Guitarra\_IncluirInfo**, **Guitarra\_CodInfo**, **Guitarra\_AlturaInfo**, **Guitarra\_Dist0**, **Guitarra\_DistUltimoPunto**, **Guitarra\_DistOrigen** and **Guitarra\_DistParcial**.
* **Presenta\_**: **Presenta\_NumeroPerfiles**, **Presenta\_OrdenaFilas**, **Presenta\_SeparaPerfilX** and **Presenta\_SeparaPerfilY**.
* **Tipo\_**: **Tipo\_Cortes** and **Tipo\_Interpola**.

If the file omits a field, MDTopX uses the value stored in its preferences. On an installation with no stored preferences, that value is the default shown for each field.

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
Guitarra_Alineaciones = 0
Guitarra_AlturaNombre = 5
Guitarra_AlturaEscalas = 2
Guitarra_AlturaSuperf = 2
Guitarra_AlturaInfo = 2
Guitarra_CotaRasante = 1
Guitarra_CotaTerreno = 1
Guitarra_CotaRojaDesmonte = 1
Guitarra_CotaRojaTerraplen = 1
Guitarra_Dist0 = 0
Guitarra_DistOrigen = 1
Guitarra_DistParcial = 1
Guitarra_Kms = 0
Guitarra_Perfiles = 0
Guitarra_TipoPlanoComp = 0
Guitarra_ValorPlanoComp = 900
Guitarra_Puntos = 0
Guitarra_CodGuitar = GUITAR
Guitarra_CodLineasInternas = N0
Guitarra_SoloIntervalo = 1
Guitarra_Intervalo = 10
Presenta_NumeroPerfiles = 4
Presenta_OrdenaFilas = 1
Presenta_SeparaPerfilX = 2
Presenta_SeparaPerfilY = 2
Tipo_Cortes = 2
Tipo_Interpola = 0
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
