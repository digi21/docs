# Profiles
<!-- id: linea-de-comando-perfiles -->
<!-- origen: 95c99945f1aa89e8083148a18fdc2f2985ca2b0d -->

[Profiles](/mdtopx/como/como-perfiles.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /PER [archivo de salida]
```

The input file must be the digital model onto which profiles will be projected.

The output file specifies where to save longitudinal profiles. Its extension determines the format: BIN (DIGI), DXF (AutoCad) or DGN (MicroStation).

If longitudinal profiles are enabled, they are saved with the prefix "Transversales de " followed by the output file name, in the same format. The projected corridor is saved with "Proyección de " followed by the output file name, in the same format.

If corridor volume calculation is enabled, its triangulation is saved with "Traza de " followed by the output file name, in digital model format. Its volumes are saved with "Cubicación de " followed by the output file name, also in digital model format.

To configure profile projection, MDTop.INI must also contain the mandatory **\[Perfiles]** line followed by:

* **Traza**: Drawing file containing the entities from which profiles will be calculated.
* **CodigoRasante**: Code of entities forming the grade line profile.
* **CodigoTerreno**: Code of entities forming the terrain profile.
* **EscalaHorizontal**: Profile horizontal scale denominator.
* **EscalaVertical**: Profile vertical scale denominator.
* **HayGuitarra**: 0 (no data band) or 1 (data band).
* **HayRasante**: 0 (no grade line profile) or 1 (grade line profile).
* **HayLongitudinal**: 0 (no longitudinal profiles) or 1 (longitudinal profiles).
* **HayTransversales**: 0 (no cross profiles) or 1 (cross profiles).
* **Guitarra\_Alineaciones**: Option disabled.
* **Guitarra\_Altura**: Data band text height in meters.
* **Guitarra\_AlturaTitulo**: Longitudinal profile title height in meters.
* **Guitarra\_CotaRasante**: 0 or 1.
* **Guitarra\_CotaTerreno**: 0 or 1.
* **Guitarra\_CotaRojaDesmonte**: 0 or 1.
* **Guitarra\_CotaRojaTerraplen**: 0 or 1.
* **Guitarra\_Dist0**: Distance from the origin in meters.
* **Guitarra\_DistOrigen**: 0 or 1.
* **Guitarra\_DistParcial**: 0 or 1.
* **Guitarra\_Kms**: Option disabled.
* **Guitarra\_Perfiles**: Option disabled.
* **Guitarra\_TipoPlanoComp**: 0 (absolute datum elevation), 1 (elevation relative to each profile) or 2 (elevation relative to all profiles).
* **Guitarra\_ValorPlanoComp**: Absolute or relative datum elevation in meters.
* **Guitarra\_Puntos**: Option disabled.
* **Guitarra\_CodGuitar**: Data band line codes.
* **Guitarra\_CodLineasInternas**: Data band internal line codes.
* **Guitarra\_SoloIntervalo**: 0 (information at every profile point) or 1 (information only at a specified interval).
* **Guitarra\_Intervalo**: Distance in meters between points where information is recorded.
* **Presenta\_NumeroPerfiles**: Number of longitudinal profiles per row/column.
* **Presenta\_OrdenaFilas**: 0 (order by rows) or 1 (order by columns).
* **Presenta\_SeparaPerfilX**: Horizontal spacing between profiles, in meters.
* **Presenta\_SeparaPerfilY**: Vertical spacing between profiles, in meters.
* **Tipo\_Cortes**: 0 (do not use triangle intersections), 1 (use only breakline intersections) or 2 (use all triangle intersections).
* **Tipo\_Interpola**: 0 (interpolate point elevations using intersections) or 1 (project individually).
* **Transversal\_AnchoIzq**: Width in meters to the left of the cross profile axis.
* **Transversal\_AnchoDer**: Width in meters to the right of the cross profile axis.
* **Transversal\_CubicaTraza**: 0 (do not calculate volumes) or 1 (calculate volumes).
* **Transversal\_Distancia**: Cross profile spacing in meters.
* **Transversal\_EscalaHor**: Cross profile horizontal scale denominator.
* **Transversal\_EscalaVer**: Cross profile vertical scale denominator.
* **Transversal\_HayAscii**: 0 (no ASCII file) or 1 (ASCII file).
* **Transversal\_HayInforme**: 0 (no report) or 1 (report).
* **Transversal\_PeralteDer**: Superelevation percentage to the right of the cross profile axis.
* **Transversal\_PeralteIzq**: Superelevation percentage to the left of the cross profile axis.
* **Transversal\_TaludX**: Slope offset along the horizontal axis.
* **Transversal\_TaludY**: Slope offset along the vertical axis.
* **Transversal\_CodRasante**: Code of entities forming the grade line cross profile.
* **Transversal\_CodTerreno**: Code of entities forming the terrain cross profile.
* **Transversal\_FicAscii**: Generated ASCII file name.
* **Transversal\_TipoFicAscii**: Cross profile ASCII output format: 0 (TopCal), 1 (Clip) or 2 (Genius).
* **Transversal\_FicInforme**: Generated report name.
* **Transversal\_Presenta\_NumeroPerfiles**: Number of cross profiles per row/column.
* **Transversal\_Presenta\_OrdenaFilas**: 0 (order by rows) or 1 (order by columns).
* **Transversal\_Presenta\_SeparaPerfilX**: Horizontal spacing between cross profiles, in meters.
* **Transversal\_Presenta\_SeparaPerfilY**: Vertical spacing between cross profiles, in meters.
* **Transversal\_Tipo\_Cortes**: 0 (do not use triangle intersections), 1 (use only breakline intersections) or 2 (use all triangle intersections).
* **Transversal\_Tipo\_Interpola**: 0 (interpolate point elevations using intersections) or 1 (project individually).
* **Transversal\_Guitarra\_CodGuitar**: Code of cross profile data band entities.
* **Transversal\_Guitarra\_CodTextos**: Cross profile text code.
* **Transversal\_Guitarra\_Altura**: Cross profile data band text height in meters.
* **Transversal\_Guitarra\_AlturaTitulo**: Cross profile title height in meters.
* **Transversal\_Guitarra\_PrimerPerfil**: First cross profile sequence number.
* **Transversal\_Guitarra\_TipoPlanoComp**: 0 (absolute datum elevation), 1 (elevation relative to each profile) or 2 (elevation relative to all profiles).
* **Transversal\_Guitarra\_ValorPlanoComp**: Absolute or relative datum elevation in meters.

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
