# crskit programming examples
<!-- id: crskit-python-ejemplos -->
<!-- origen: a349879dd76f6dc61fc181b0f1669af36f159012 -->

Module: [crskit](README.md)

These programs use `crskit` with Digi3D.AI's EPSG database and grids under `C:\ProgramData\Digi3D.NET\OpenGis\`. Outputs were obtained with `crskit` 0.6.0 and EPSG 12.057.

Install the package first:

```
pip install crskit
```

Without Digi3D.AI, run `pip install crskit[epsg]`, replace `crskit.init` with `crskit.init(data_directory=...)` specifying the grid folder, and see [Initialization](inicializacion.md).

The [Spanish crskit tutorial](https://github.com/digi21/crskit/blob/main/python/TUTORIAL.es.md) adds examples of operation selection, EGM2008 heights and NumPy batch transformations.

## Converting ETRS89 / UTM 30N to geographic coordinates

Converts Madrid's Puerta del Sol UTM coordinates (EPSG:25830) to ETRS89 geographic coordinates (EPSG:4258).

```python
import crskit

crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite")

utm30n = crskit.crs_from_epsg(25830)    # ETRS89 / UTM zone 30N: easting, northing
etrs89 = crskit.crs_from_epsg(4258)     # ETRS89 geographic 2D: latitude, longitude
print(utm30n.axes)
print(etrs89.axes)

transformacion = crskit.transformation(utm30n, etrs89)

latitud, longitud = transformacion.transform([440291.284, 4474254.600])
print(f"Latitud:  {latitud:.8f}")
print(f"Longitud: {longitud:.8f}")
```

Output:

```
[('E', 'East'), ('N', 'North')]
[('Lat', 'North'), ('Lon', 'East')]
Latitud:  40.41677500
Longitud: -3.70379000
```

EPSG:4258 declares latitude first, so `transform` returns `[latitud, longitud]`.

## Converting ETRS89 / UTM 30N + Alicante height to ETRS89 geographic 3D

Converts UTM coordinates and orthometric height (above mean sea level at Alicante, EPSG:5782) to ETRS89 geographic coordinates with ellipsoidal height (EPSG:4937). EPSG has no code for UTM 30N + Alicante height, so creates it using `compound_crs`.

Uses EPSG:9410, requiring `EGM08_REDNAP.txt`. Digi3D.AI installs that grid beside the database.

```python
import crskit

crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite")

# EPSG has no code for UTM 30N + Alicante height: combine both codes.
origen = crskit.compound_crs(25830, 5782)
destino = crskit.crs_from_epsg(4937)    # ETRS89 geographic 3D: latitude, longitude, ellipsoidal height
print(origen)
print(origen.axes)
print(destino.axes)

try:
    transformacion = crskit.transformation(origen, destino)
except crskit.GridFileNotFoundError as error:
    print(f"Falta la rejilla {error.grid_file}; se ha buscado en {error.searched_path}")
    raise

latitud, longitud, altura = transformacion.transform([440291.284, 4474254.600, 648.888])
print(f"Latitud:          {latitud:.8f}")
print(f"Longitud:         {longitud:.8f}")
print(f"Altura elipsoidal: {altura:.3f} m")
```

Output:

```
<Crs no code "ETRS89 / UTM zone 30N + Alicante height" (3D)>
[('E', 'East'), ('N', 'North'), ('H', 'Up')]
[('Lat', 'North'), ('Lon', 'East'), ('h', 'Up')]
Latitud:          40.41677500
Longitud:         -3.70379000
Altura elipsoidal: 700.000 m
```

Orthometric height 648.888 m corresponds to ellipsoidal height 700.000 m: EGM08-REDNAP is 51.112 m above the ellipsoid there.

## Reading a system's WKT

Writes ETRS89 / UTM 30N WKT (*Well-Known Text*) in three dialects, saves an ESRI `.prj` and creates a CRS from it.

```python
from pathlib import Path

import crskit

crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite")

utm30n = crskit.crs_from_epsg(25830)

print(utm30n.to_wkt())                                  # OGC WKT 1
print(utm30n.to_wkt(crskit.WktVersion.WKT2_2019))       # ISO 19162:2019

# .prj file using the ESRI dialect.
prj = Path("capa.prj")
prj.write_text(utm30n.to_wkt(crskit.WktVersion.WKT1_ESRI), encoding="utf-8")

leido = crskit.crs_from_wkt(prj.read_text(encoding="utf-8"))
print(leido)
print(leido.name, leido.authority_code, leido.dimension, leido.axes)

# OGC WKT 1 retains the EPSG code and full definition.
copia = crskit.crs_from_wkt(utm30n.to_wkt())
print(copia == utm30n, copia.compare(utm30n))
```

Output (each WKT occupies one line):

```
PROJCS["ETRS89 / UTM zone 30N",GEOGCS["ETRS89",DATUM["European Terrestrial Reference System 1989 ensemble",SPHEROID["GRS 1980",6378137,298.257222101,AUTHORITY["EPSG","7019"]],TOWGS84[0,0,0,0,0,0,0],AUTHORITY["EPSG","6258"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["degree (supplier to define representation)",0.01745329251994328,AUTHORITY["EPSG","9122"]],AXIS["Lat",North],AXIS["Lon",East],AUTHORITY["EPSG","4258"]],PROJECTION["Transverse_Mercator"],PARAMETER["latitude_of_origin",0],PARAMETER["central_meridian",-2.999999999999997],PARAMETER["scale_factor",0.9996],PARAMETER["false_easting",500000],PARAMETER["false_northing",0],PARAMETER["semi_major",6378137],PARAMETER["semi_minor",6356752.314140356],UNIT["metre",1,AUTHORITY["EPSG","9001"]],AXIS["E",East],AXIS["N",North],AUTHORITY["EPSG","25830"]]
PROJCRS["ETRS89 / UTM zone 30N",BASEGEOGCRS["ETRS89",DATUM["European Terrestrial Reference System 1989 ensemble",ELLIPSOID["GRS 1980",6378137,298.257222101,LENGTHUNIT["metre",1,ID["EPSG",9001]],ID["EPSG",7019]],ID["EPSG",6258]],PRIMEM["Greenwich",0,ANGLEUNIT["degree",0.01745329251994328,ID["EPSG",9102]],ID["EPSG",8901]],ID["EPSG",4258]],CONVERSION["unnamed",METHOD["Transverse Mercator",ID["EPSG",9807]],PARAMETER["Latitude of natural origin",0,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8801]],PARAMETER["Longitude of natural origin",-2.999999999999997,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8802]],PARAMETER["Scale factor at natural origin",0.9996,SCALEUNIT["unity",1],ID["EPSG",8805]],PARAMETER["False easting",500000,LENGTHUNIT["metre",1,ID["EPSG",9001]],ID["EPSG",8806]],PARAMETER["False northing",0,LENGTHUNIT["metre",1,ID["EPSG",9001]],ID["EPSG",8807]]],CS[Cartesian,2],AXIS["E",east,ORDER[1]],AXIS["N",north,ORDER[2]],LENGTHUNIT["metre",1,ID["EPSG",9001]],ID["EPSG",25830]]
<Crs no code "ETRS_1989_UTM_Zone_30N" (2D)>
ETRS_1989_UTM_Zone_30N None 2 [('X', 'East'), ('Y', 'North')]
True 100
```

ESRI WKT omits EPSG codes: the `.prj` CRS has `authority_code` set to `None`. Use `WktVersion.WKT1_ESRI_WITH_EPSG_CODE` to retain the code in `.prj`.

## Using Digi3D.AI-specific codes

Digi3D.AI stores EGM08-REDNAP geoid heights using codes 69036406 (mainland Spain) and 69036407 (Canary Islands), outside EPSG. It registers aliases to equivalent EPSG codes; `crskit` does not (see [Digi3D.AI-specific codes](inicializacion.md#digi3dai-specific-codes)).

This program applies the equivalence through a dictionary before calling crskit:

```python
import crskit

# Digi3D.AI-specific codes outside the EPSG database and their EPSG equivalents.
ALIAS_DIGI3D = {
    69036406: 5782,     # EGM08_REDNAP mainland Spain -> Alicante height
    69036407: 9398,     # EGM08_REDNAP Canary Islands -> Tenerife height
}


def resuelve(codigo: int) -> int:
    """Código EPSG que corresponde a un código de Digi3D.AI."""
    return ALIAS_DIGI3D.get(codigo, codigo)


crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite")

codigo_vertical = 69036406      # vertical system stored by a Digi3D.AI file

try:
    crskit.crs_from_epsg(codigo_vertical)
except crskit.AuthorityCodeNotFoundError as error:
    print(f"Sin alias: {error}")

origen = crskit.compound_crs(25830, resuelve(codigo_vertical))
print(origen)

transformacion = crskit.transformation(origen, crskit.crs_from_epsg(4937))
print(transformacion.transform([440291.284, 4474254.600, 648.888]))
```

Output:

```
Sin alias: Could not locate the coordinate system with code: 69036406
<Crs no code "ETRS89 / UTM zone 30N + Alicante height" (3D)>
[40.41677499862431, -3.70379000408711, 699.9996790771485]
```

`crs_from_epsg(69036406)` raises `AuthorityCodeNotFoundError`. With 5782 returned by `resuelve`, uses `EGM08_REDNAP.txt`, as above.
