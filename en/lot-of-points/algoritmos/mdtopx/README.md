# MDTopX
<!-- id: lot-of-points-pestana-mdtopx -->
<!-- origen: 8b9ba42491adaa007843a3bc1ef49eb0b8fd6a84 -->

The dynamic-link library (DLL) `lop_magic_surface.dll` adds two commands through `lop_register_commands`. Buttons appear in **MDTopX** on **Point classification** (`lop.tab.classification`). The DLL supplies Spanish text for language `es` and English for other languages.

| Button | Operation | Button requirement |
|---|---|---|
| [Aerial cloud](nube-aerea.md) | Classifies flight clouds into ground, vegetation and buildings using the Magic Surface of [MDTopX](../../../mdtopx/README.md). | A cloud with an edit log and original-file indices. |
| Urban classification | Traverses open clouds and requests loading a reference GeoPackage. | An open cloud. |

The [Aerial cloud](nube-aerea.md) page details additional classification attributes, the 17 parameters and command messages.

## Urban classification

**Urban classification** (`mdtopx.urban_classification`) can run, but its current implementation neither extracts urban elements nor modifies points. It has no parameters.

1. Open a cloud.
2. Click **Urban classification** in **MDTopX** on **Point classification**.

The command traverses all open clouds, including hidden ones, using `process_tiles` in read-only mode. Traversal requires neither an edit log, original-file indices nor additional attributes. Tile cores have a side length of 1000 cloud units and no overlap. The calculation updates progress and checks cancellation during waits intended to last 8 seconds; this does not guarantee total command duration.

If `process_tiles` returns `LOP_OK`, the command requests loading this preexisting file as reference layers through `load_geopackage`:

```text
E:\Desktop\jj\Berruguete\Clasificacion2\Clasificación urbana de MOCHILA_Berrugete_pequeña_2_clas.gpkg
```

The path is hardcoded in `lop_urban_classification.cpp`; no other file can be chosen. The command does not generate that GeoPackage or write its own summary to **Output**.
