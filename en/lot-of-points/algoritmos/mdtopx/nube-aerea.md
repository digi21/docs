# Aerial cloud
<!-- id: lot-of-points-nube-aerea -->
<!-- origen: 9fbc32e74e6cd8a64bc84dc521b16ee9a9cbbb77 -->

**Aerial cloud**, in **MDTopX** on **Point classification**, classifies LiDAR flight points into ground, vegetation and buildings using MDTopX's Magic Surface. The command applies the `/MAGIC` sequence to each tile and returns the resulting classes to Lot Of Points through `process_tiles`.

## Cloud requirements

The button requires a cloud with an edit log and original-file indices. The command chooses open clouds meeting both conditions and retaining Global Positioning System (GPS) time and the flight line identifier (`point_source_id`). Hidden clouds meeting the requirements are included; each skipped cloud's name is written to **Output**.

The calculation groups points by flight line identifier and receives each flight line's points ordered by GPS time. Coordinates are represented in centimeters using 32-bit integers. If any tile coordinate fails the range check, the calculation fails and writes the reason to **Output**.

## Parameters

Open **Settings** and select **MDTopX**. Settings are grouped under **Aerial cloud: General**, **Aerial cloud: Heights**, **Aerial cloud: Buildings**, **Aerial cloud: Points** and **Aerial cloud: LiDAR codes**.

**Maximum distance between points** is the largest gap between ground points and is the basis for other calculation distances. With **Unclassify first** enabled, calculation starts from class 1; otherwise it starts from existing classes. This option is added in Lot Of Points. Table units are those declared by the DLL for parameters.

| Group | Parameter | Unit | Default | Declared range, both endpoints included | Type |
|---|---|---|---|---|---|
| General | Maximum distance between points | m | 3 | 0.5 – 50 | Real |
| General | Unclassify first | | No | Yes / No | Boolean |
| Heights | Minimum height for aerial points | m | 50 | 0 – 1000 | Real |
| Heights | Minimum building height | m | 4 | 0 – 100 | Real |
| Heights | Maximum vegetation height | m | 15 | 0 – 1000 | Real |
| Heights | Minimum high vegetation height | m | 3 | 0 – 100 | Real |
| Heights | Minimum medium vegetation height | m | 2 | 0 – 100 | Real |
| Heights | Minimum low vegetation height | m | 1 | 0.01 – 100 | Real |
| Buildings | Minimum building area | m² | 30 | 0 – 1,000,000 | Real |
| Buildings | Maximum building slope | ° | 30 | 0 – 90 | Real |
| Points | Point elevation accuracy | m | 0.2 | 0.01 – 10 | Real |
| Points | Point search level | % | 1 | 1 – 10 | Integer |
| LiDAR codes | Low points | | 7 | 0 – 255 | Integer |
| LiDAR codes | Walls | | 12 | 0 – 255 | Integer |
| LiDAR codes | Aerial points | | 13 | 0 – 255 | Integer |
| LiDAR codes | Others | | 90 | 0 – 255 | Integer |
| LiDAR codes | Bridges | | 17 | 0 – 255 | Integer |

**LiDAR codes** configure the classes for those point types. `SoloSuelo` uses the bridge code and assigns class 2 to ground.

## Processing characteristics

| Feature | Value |
|---|---|
| Core side | 1000 cloud units. |
| Overlap width | 100 cloud units. |
| Concurrent tiles | Yes. |
| Estimated maximum memory per point | 600 bytes. |
| Required additional attributes | GPS time and flight line identifier. |
| Point order | By flight line identifier, then GPS time within each flight line. |

The command identifier is `mdtopx.magic_surface`. Calculation runs `SoloSuelo` and `SuperficieMagica`. `SoloSuelo` can perform a second pass with a 25 m search distance. If `SuperficieMagica` returns `Ok`, `SinPuntos` or `ErrorDatos`, calculation runs `BuscaPicosIterado` unless cancellation was requested.

If `SuperficieMagica` returns `Incompleto`, calculation retains the classes from preceding steps and skips `BuscaPicosIterado`. This result corresponds to `SuperficiesPlanas`, an MDTopX function not included in this DLL.

## Messages

The command writes these cloud selection and summary messages to **Output** when the language is `es`. The DLL uses equivalent English text for other languages.

| Message | Meaning |
|---|---|
| `Nube aérea: se omite la nube a la que le falta al menos uno de estos datos: registro de ediciones, índices de punto, tiempo GPS o fuente de punto: nombre` | The cloud lacks at least one command requirement. |
| `Nube aérea: no hay ninguna nube que se pueda clasificar.` | No open cloud meets all requirements; the command ends without calling `process_tiles`. |
| `Nube aérea: n puntos cambian de clase en k nubes.` | `process_tiles` returned `LOP_OK`; the summary gives reclassified points and modified clouds. |

Tile calculation messages are written in English for every language. In these messages, *N* is the tile number, starting at 1.

| Message | Meaning |
|---|---|
| `magic_surface: tile N: SuperficieMagica stopped at SuperficiesPlanas, which the port does not have (Incompleto); the tile keeps the classes of the steps before it, without E4` | The tile retains classes from preceding steps and does not run `BuscaPicosIterado`. |
| `magic_surface: tile N: a coordinate does not fit in centimetres as a 32-bit integer` | A coordinate fails the range check. Calculation returns `LOP_FAILED`. |
| `magic_surface: tile N: K points have no matching classification result and keep their original class` | No classification result is found for *K* points, which retain their original class. |
| `magic_surface: tile N: SuperficieMagica answered R` | `SuperficieMagica` returns numeric code *R*, other than `Incompleto`, `Ok`, `SinPuntos` and `ErrorDatos`. |
| `magic_surface: texto del error` | Calculation catches a standard exception, writes its text and returns `LOP_FAILED`. |
| `magic_surface: unknown error` | Calculation catches another exception and returns `LOP_FAILED`. |
