# Package `mdtopx.io.vector`
<!-- id: mdtopx-io-vector -->
<!-- origen: 252fd8b9ffb751e21fb5fd0db0c950975ba52bc5 -->

**Drawing** formats. Read into `scene.polylines`, `scene.texts`, `scene.points` and, for supported formats, `scene.clouds`. Each entity stores its code in `layer_code` and any supported database attributes in `digi_attributes`. All follow the [common interface](mdtopx-io.md#common-format-interface): `info`, `read`, `write`.

| Module | Format | Reads | Writes | Options |
|---|---|:-:|:-:|---|
| `bin` | Binary DIGI (`.bin`) | ✔ | ✔ | `decimals` (2), `origin` ((0, 0, 0)); `write`: `wkt` |
| `bind` | Double-precision DIGI (`.bind`) | ✔ | ✔ | `write`: `wkt` |
| `asc` | ASCII DIGI (`.asc`) | ✔ | ✔ | `write`: `decimals` (3) |
| `dgn` | MicroStation DGN V8 (`.dgn`) | ✔ | ✔ | — |
| `dwg` | AutoCAD DWG (`.dwg`) | ✔ | ✔ | — |
| `dxf` | AutoCAD DXF (`.dxf`) | ✔ | ✔ | — |
| `shp` | ESRI Shapefile (`.shp`) | ✔ | ✔ | See below |
| `geopackage` | OGC GeoPackage (`.gpkg`) | ✔ | ✔ | — |
| `kml` | Google KML (`.kml`) | ✔ | ✔ | `utm_zone` (30), `northern_hemisphere` (True) |
| `geomedia` | Intergraph GeoMedia (`.mdb`, `.accdb`) | ✔ | — | — |

Format details:

- **BIN**: stores integer coordinates after subtracting `origin` and multiplying by `10**decimals` (2 = centimeter, 3 = millimeter). A separate `<nombre>.prj` beside the `.bin` stores the reference system, read into `scene.srs`. MDTopX-written `.prj` files also store precision and origin, taking precedence over `read` arguments `decimals` and `origin`; these arguments are used only when the `.prj` omits them.
- **BIND**: stores `double` coordinates without precision or origin settings, with the reference system inside the file.
- **BIN and BIND**: `wkt` sets the written reference system. If omitted, uses `scene.srs`, or a local system if empty.
- **DGN, DWG and DXF**: each element's level or layer becomes its `layer_code`. Arcs and ellipses become polylines; cells or blocks are exploded. DWG and DXF share a plugin; the extension selects the format.
- **Shapefile and GeoPackage**: points become single-vertex polylines, polygons become closed polylines, and multipoints become clouds. Attribute columns are not read.
- **KML**: geographic coordinates are converted to UTM in `utm_zone` and the specified hemisphere.
- **GeoMedia**: Windows only, with *Microsoft ACE OLEDB 12.0* installed.

## Shapefile

Writing splits the scene into up to four files, one per geometry type, each with its `.shp`, `.shx` and `.dbf`:

| Option | Default | Meaning |
|---|---|---|
| `points`, `lines`, `texts`, `polygons` | True | Geometry types to write. |
| `suffix_points`, `suffix_lines`, `suffix_texts`, `suffix_polygons` | `_P`, `_L`, `_T`, `_A` | File name suffix, added only if more than one type exists. |
| `write_3d` | True | Writes geometries with Z. |
| `ldid` | 255 | `.dbf` encoding (255 = ANSI Latin I). |

From Python, the `.dbf` contains only an `Id` column.

## Examples

Count polylines for each DGN code:

```python
from collections import Counter
from mdtopx.io.vector import dgn

escena = dgn.read(r"C:\datos\hoja.dgn")
print(Counter(linea.layer_code for linea in escena.polylines).most_common(10))
```

Convert a millimeter BIN to BIND:

```python
from mdtopx.io.vector import bin, bind

escena = bin.read(r"C:\datos\hoja.bin", decimals=3, origin=(400000, 4000000, 0))
bind.write(r"C:\datos\hoja.bind", escena)
```
