# Profiles
<!-- id: linea-de-comando-perfiles -->
<!-- origen: e59a1f0c6741979d80073c34631780aa500a6924 -->

[Profiles](/mdtopx/como/como-perfiles.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /PER [archivo de salida]
```

The input file must be the digital model onto which profiles will be projected.

The output file specifies where to save longitudinal profiles. Its extension determines the format: BIN (DIGI), DXF (AutoCad) or DGN (MicroStation).

If cross profiles are enabled, they are saved with the prefix "Transversales de " followed by the output file name, in the same format. The projected corridor is saved with "Proyección de " followed by the output file name, in the same format.

If corridor volume calculation is enabled, its triangulation is saved with "Traza de " followed by the output file name, in digital model format. Its volumes are saved with "Cubicación de " followed by the output file name, also in digital model format.

To configure profile projection, MDTopX.ini must also contain the mandatory **\[Perfiles]** line followed by:

* **Traza**: Drawing file containing the entities from which profiles will be calculated.
* **CodigoRasante**: Code of entities forming the grade line profile. Default: RASANT.
* **CodigoTerreno**: Code of entities forming the terrain profile. Default: TERREN.
* **CodigoCapaVegetal**: Code of entities forming the topsoil profile. Default: CV.
* **EscalaHorizontal**: Profile horizontal scale denominator. Default: 1000.
* **EscalaVertical**: Profile vertical scale denominator. Default: 500.
* **HayGuitarra**: 0 (no data band) or 1 (data band). Default: 1.
* **HayRasante**: 0 (no grade line profile) or 1 (grade line profile). Default: 1.
* **HayLongitudinal**: 0 (no longitudinal profiles) or 1 (longitudinal profiles). Default: 1.
* **HayTransversales**: 0 (no cross profiles) or 1 (cross profiles). Default: 1.

The following fields, with the **Guitarra\_** prefix, configure the data band of longitudinal and cross profiles:

* **Guitarra\_Alineaciones**: Option disabled.
* **Guitarra\_Kms**: Option disabled.
* **Guitarra\_Perfiles**: Option disabled.
* **Guitarra\_Puntos**: Option disabled.
* **Guitarra\_CotaRasante**: 0 (no grade line elevation) or 1 (grade line elevation). Default: 1.
* **Guitarra\_CotaTerreno**: 0 (no terrain elevation) or 1 (terrain elevation). Default: 1.
* **Guitarra\_CotaRojaDesmonte**: 0 (no cut depth) or 1 (cut depth). Default: 1.
* **Guitarra\_CotaRojaTerraplen**: 0 (no fill height) or 1 (fill height). Default: 1.
* **Guitarra\_Pendientes**: 0 (no slopes) or 1 (slopes). Default: 0.
* **Guitarra\_Galibo**: 0 (no clearance) or 1 (clearance). Default: 0.
* **Guitarra\_TipoPlanoComp**: 0 (absolute datum elevation), 1 (elevation relative to each profile) or 2 (elevation relative to all profiles). Default: 1.
* **Guitarra\_ValorPlanoComp**: Absolute or relative datum elevation in meters. Default: 1.
* **Guitarra\_CodGuitar**: Data band line code. Default: GUITAR.
* **Guitarra\_CodLineasInternas**: Data band internal line code. Default: INTERNAS.
* **Guitarra\_SoloIntervalo**: 0 (information at every profile point) or 1 (information only at a specified interval). Default: 0.
* **Guitarra\_Intervalo**: Distance in meters between points where information is recorded. Default: 10.
* **Guitarra\_IncluirLineasHor**: 0 (no horizontal lines inside the profile box) or 1 (horizontal lines). Default: 1.
* **Guitarra\_SeparaLineasHor**: Spacing in meters between the horizontal lines of the profile box. Default: 1.
* **Guitarra\_IncluirNombre**: 0 (no profile name text) or 1 (profile name text). Default: 1.
* **Guitarra\_PosNombre**: Position of the profile name text, as the sequence number in the "Position" list of the data band dialog box. Default: 5.
* **Guitarra\_CodNombre**: Code of the profile name text. Default: TITULO.
* **Guitarra\_AlturaNombre**: Profile name text height in meters. Default: 2.
* **Guitarra\_IncluirEscalas**: 0 (no scales text) or 1 (scales text). Default: 1.
* **Guitarra\_PosEscalas**: Position of the scales text, as the sequence number in the "Position" list. Default: 0.
* **Guitarra\_CodEscalas**: Code of the scales text. Default: ESCALA.
* **Guitarra\_AlturaEscalas**: Scales text height in meters. Default: 1.
* **Guitarra\_IncluirSuperf**: 0 (no surfaces text) or 1 (surfaces text). Default: 1.
* **Guitarra\_PosSuperf**: Position of the surfaces text, as the sequence number in the "Position" list. Default: 6.
* **Guitarra\_CodSuperf**: Code of the surfaces text. Default: SUPERF.
* **Guitarra\_AlturaSuperf**: Surfaces text height in meters. Default: 1.
* **Guitarra\_IncluirInfo**: 0 (no information text) or 1 (information text). Default: 1.
* **Guitarra\_CodInfo**: Code of the information text. Default: INFO.
* **Guitarra\_AlturaInfo**: Information text height in meters. Default: 0.75.

The following data band fields apply only to longitudinal profiles:

* **Guitarra\_Dist0**: Distance from the origin in meters. Default: 0.
* **Guitarra\_DistUltimoPunto**: Distance to the last point in meters. Default: 0.
* **Guitarra\_DistOrigen**: 0 (no distance from the origin) or 1 (distance from the origin). Default: 1.
* **Guitarra\_DistParcial**: 0 (no partial distance) or 1 (partial distance). Default: 1.

The following data band fields apply only to cross profiles:

* **Guitarra\_DistAlEje**: 0 (no distance to the axis) or 1 (distance to the axis). Default: 1.
* **Guitarra\_PrimerPerfil**: Value, in meters, of the "First profile" field of the cross profile data band dialog box. Default: 0.

The following fields, with the **Presenta\_** prefix, configure the graphic presentation of longitudinal and cross profiles:

* **Presenta\_NumeroPerfiles**: Number of profiles per row or column. Default: 4.
* **Presenta\_OrdenaFilas**: 0 (order by rows) or 1 (order by columns). Default: 1.
* **Presenta\_SeparaPerfilX**: Horizontal spacing between profiles, in meters. Default: 10.
* **Presenta\_SeparaPerfilY**: Vertical spacing between profiles, in meters. Default: 10.

The following fields, with the **Tipo\_** prefix, configure how longitudinal and cross profiles are projected onto the digital model:

* **Tipo\_Cortes**: 0 (do not use triangle intersections), 1 (use only breakline intersections) or 2 (use all triangle intersections). Default: 2.
* **Tipo\_Interpola**: 0 (interpolate point elevations using intersections) or 1 (project individually). Default: 1.

The following fields, with the **Transversal\_** prefix, configure cross profiles:

* **Transversal\_AnchoIzq**: Width in meters to the left of the cross profile axis. Default: 5.
* **Transversal\_AnchoDer**: Width in meters to the right of the cross profile axis. Default: 5.
* **Transversal\_TipoPlataforma**: 0 (widths on both sides of the axis, defined by **Transversal\_AnchoIzq** and **Transversal\_AnchoDer**) or 1 (platform defined in the **Transversal\_FicPlataforma** file). Default: 0.
* **Transversal\_FicPlataforma**: Platform file name, when **Transversal\_TipoPlataforma** is 1.
* **Transversal\_Distancia**: Cross profile spacing in meters. Default: 10.
* **Transversal\_CalcularEnVertices**: 0 (no) or 1 (also generate cross profiles at the vertices of the corridor). Default: 0.
* **Transversal\_PeralteDer**: Superelevation percentage to the right of the cross profile axis. Default: -2.
* **Transversal\_PeralteIzq**: Superelevation percentage to the left of the cross profile axis. Default: -2.
* **Transversal\_TaludDesX**: Cut slope offset in meters along the horizontal axis. Default: 1.
* **Transversal\_TaludDesY**: Cut slope offset in meters along the vertical axis. Default: 1.
* **Transversal\_TaludTerX**: Fill slope offset in meters along the horizontal axis. Default: 1.
* **Transversal\_TaludTerY**: Fill slope offset in meters along the vertical axis. Default: 1.
* **Transversal\_CubicaTraza**: 0 (do not calculate volumes) or 1 (calculate volumes). Default: 1.
* **Transversal\_HayAlzado**: 0 (no ASCII file with the cross profiles) or 1 (ASCII file). Default: 1.
* **Transversal\_FicAlzado**: Generated ASCII file name. Default: Transver.asc.
* **Transversal\_TipoFicAlzado**: Cross profile ASCII output format: 0 (TopCal), 1 (Clip), 2 (Genius) or 3 (TCP MDT). Default: 0.
* **Transversal\_HayInforme**: 0 (no report) or 1 (report). Default: 1.
* **Transversal\_FicInforme**: Generated report name. Default: Informe.asc.
* **Transversal\_RotularPks**: 0 (no labels) or 1 (labels). Default: 1.
* **Transversal\_AlturaTextosPks**: Label text height in meters. Default: 1.
* **Transversal\_CodTextosPks**: Label text code. Default: PERFIL.
* **Transversal\_CodigoRasante**: Code of entities forming the grade line cross profile. Default: RASANT.
* **Transversal\_CodigoTerreno**: Code of entities forming the terrain cross profile. Default: TERREN.
* **Transversal\_CodigoCapaVegetal**: Code of entities forming the topsoil cross profile. Default: CV.
* **Transversal\_EscalaHorizontal**: Cross profile horizontal scale denominator. Default: 1000.
* **Transversal\_EscalaVertical**: Cross profile vertical scale denominator. Default: 500.

MDTopX reads the data band, presentation and projection type of cross profiles from the **Guitarra\_**, **Presenta\_** and **Tipo\_** fields, the same ones that longitudinal profiles use. MDTopX does not read fields with the **Transversal\_Guitarra\_**, **Transversal\_Presenta\_** or **Transversal\_Tipo\_** prefix.

If the file omits a field, MDTopX uses the value stored in its preferences. On an installation with no stored preferences, that value is the default shown for each field.

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
