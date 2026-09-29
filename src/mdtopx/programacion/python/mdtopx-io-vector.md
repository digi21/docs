# Paquete `mdtopx.io.vector`

Formatos de **dibujo**. Leen a `scene.polylines`, `scene.texts`, `scene.points` y, en los formatos que
las admiten, `scene.clouds`. Cada entidad lleva su código en `layer_code` y, si el formato los tiene,
sus atributos de base de datos en `digi_attributes`. Todos siguen la
[interfaz común](mdtopx-io.md#interfaz-común-de-los-formatos) (`info`, `read`, `write`).

| Módulo | Formato | Lee | Escribe | Opciones |
|---|---|:-:|:-:|---|
| `bin` | DIGI binario (`.bin`) | ✔ | ✔ | `decimals` (2), `origin` ((0, 0, 0)); `write`: `wkt` |
| `bind` | DIGI de doble precisión (`.bind`) | ✔ | ✔ | `write`: `wkt` |
| `asc` | ASCII DIGI (`.asc`) | ✔ | ✔ | `write`: `decimals` (3) |
| `dgn` | MicroStation DGN V8 (`.dgn`) | ✔ | ✔ | — |
| `dwg` | AutoCAD DWG (`.dwg`) | ✔ | ✔ | — |
| `dxf` | AutoCAD DXF (`.dxf`) | ✔ | ✔ | — |
| `shp` | ESRI Shapefile (`.shp`) | ✔ | ✔ | Ver más abajo |
| `geopackage` | OGC GeoPackage (`.gpkg`) | ✔ | ✔ | — |
| `kml` | Google KML (`.kml`) | ✔ | ✔ | `utm_zone` (30), `northern_hemisphere` (True) |
| `geomedia` | Intergraph GeoMedia (`.mdb`, `.accdb`) | ✔ | — | — |

Detalles por formato:

- **BIN**: las coordenadas se guardan como enteros, multiplicadas por `10**decimals` (2 = centímetro,
  3 = milímetro) tras restarles `origin`. El sistema de referencia se guarda aparte, en un archivo
  `<nombre>.prj` junto al `.bin`, que se lee a `scene.srs`. Los archivos escritos por MDTopX guardan
  en ese `.prj` la precisión y el origen, que tienen prioridad sobre los argumentos `decimals` y
  `origin` de `read`; estos solo se usan con archivos cuyo `.prj` no los incluye.
- **BIND**: las coordenadas se guardan en `double`, sin precisión ni origen, y el sistema de
  referencia va dentro del archivo.
- **BIN y BIND**: `wkt` fija el sistema de referencia que se escribe. Si no se indica, se usa
  `scene.srs` y, si está vacío, un sistema local.
- **DGN, DWG y DXF**: el nivel o la capa de cada elemento pasa a ser su `layer_code`. Los arcos y
  elipses se convierten en polilíneas y las celdas o bloques se descomponen. DWG y DXF usan el mismo
  plugin: la extensión decide el formato.
- **Shapefile y GeoPackage**: los puntos se leen como polilíneas de un solo vértice, los polígonos
  como polilíneas cerradas y los multipuntos como nubes. No se leen las columnas de atributos.
- **KML**: las coordenadas geográficas se pasan a UTM en el huso `utm_zone` del hemisferio indicado.
- **GeoMedia**: solo en Windows y con el proveedor de datos *Microsoft ACE OLEDB 12.0* instalado.

## Shapefile

Al escribir, la escena se reparte en hasta cuatro archivos, uno por tipo de geometría, cada uno con su
`.shp`, `.shx` y `.dbf`:

| Opción | Por defecto | Significado |
|---|---|---|
| `points`, `lines`, `texts`, `polygons` | True | Tipos de geometría que se escriben. |
| `suffix_points`, `suffix_lines`, `suffix_texts`, `suffix_polygons` | `_P`, `_L`, `_T`, `_A` | Sufijo del nombre de cada archivo. Solo se añade si hay más de un tipo. |
| `write_3d` | True | Escribe geometrías con Z. |
| `ldid` | 255 | Codificación del `.dbf` (255 = ANSI Latin I). |

Desde Python el `.dbf` lleva solo una columna `Id`.

## Ejemplos

Contar las polilíneas de cada código de un DGN:

```python
from collections import Counter
from mdtopx.io.vector import dgn

escena = dgn.read(r"C:\datos\hoja.dgn")
print(Counter(linea.layer_code for linea in escena.polylines).most_common(10))
```

Pasar un BIN en milímetros a BIND:

```python
from mdtopx.io.vector import bin, bind

escena = bin.read(r"C:\datos\hoja.bin", decimals=3, origin=(400000, 4000000, 0))
bind.write(r"C:\datos\hoja.bind", escena)
```
