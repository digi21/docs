# Ejemplos de programación con crskit
<!-- id: crskit-python-ejemplos -->

Módulo: [crskit](README.md)

Los programas de ejemplo usan el paquete `crskit` con la base de datos del catálogo de parámetros geodésicos EPSG y las rejillas que
instala Digi3D.AI en `C:\ProgramData\Digi3D.NET\OpenGis\`. La salida de cada ejemplo se ha obtenido
ejecutando el programa con `crskit` 0.6.0 y la base de datos de EPSG 12.057.

Antes de ejecutar los ejemplos, instala el paquete:

```
pip install crskit
```

En un equipo sin Digi3D.AI, ejecuta `pip install crskit[epsg]`, cambia la llamada a `crskit.init` por
`crskit.init(data_directory=...)` con la carpeta de las rejillas y consulta
[Inicialización](inicializacion.md).

El [tutorial de crskit en español](https://github.com/digi21/crskit/blob/main/python/TUTORIAL.es.md)
tiene más ejemplos: elección entre varias operaciones, alturas sobre EGM2008 y transformación de muchos
puntos con NumPy.

## Convertir un punto de ETRS89 / UTM 30N a geográficas

El programa convierte las coordenadas UTM de la Puerta del Sol de Madrid (EPSG:25830) a coordenadas geográficas
ETRS89 (EPSG:4258).

```python
import crskit

crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite")

utm30n = crskit.crs_from_epsg(25830)    # ETRS89 / UTM zone 30N: este, norte
etrs89 = crskit.crs_from_epsg(4258)     # ETRS89 geográficas 2D: latitud, longitud
print(utm30n.axes)
print(etrs89.axes)

transformacion = crskit.transformation(utm30n, etrs89)

latitud, longitud = transformacion.transform([440291.284, 4474254.600])
print(f"Latitud:  {latitud:.8f}")
print(f"Longitud: {longitud:.8f}")
```

Salida:

```
[('E', 'East'), ('N', 'North')]
[('Lat', 'North'), ('Lon', 'East')]
Latitud:  40.41677500
Longitud: -3.70379000
```

EPSG:4258 declara primero la latitud, así que `transform` devuelve `[latitud, longitud]`.

## Convertir de ETRS89 / UTM 30N + altura de Alicante a ETRS89 geográficas 3D

El programa convierte un punto con coordenadas UTM y altura ortométrica (altura sobre el nivel medio del mar en
Alicante, EPSG:5782) a coordenadas geográficas ETRS89 con altura elipsoidal (EPSG:4937). EPSG no tiene
código para el SRC compuesto UTM 30N + altura de Alicante, así que el programa lo crea con
`compound_crs`.

La transformación usa la operación EPSG:9410, que necesita la rejilla del geoide `EGM08_REDNAP.txt`.
Digi3D.AI instala esa rejilla en la misma carpeta que la base de datos.

```python
import crskit

crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite")

# EPSG no tiene código para UTM 30N + altura de Alicante: se compone a partir de los dos códigos.
origen = crskit.compound_crs(25830, 5782)
destino = crskit.crs_from_epsg(4937)    # ETRS89 geográficas 3D: latitud, longitud, altura elipsoidal
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

Salida:

```
<Crs no code "ETRS89 / UTM zone 30N + Alicante height" (3D)>
[('E', 'East'), ('N', 'North'), ('H', 'Up')]
[('Lat', 'North'), ('Lon', 'East'), ('h', 'Up')]
Latitud:          40.41677500
Longitud:         -3.70379000
Altura elipsoidal: 700.000 m
```

La altura ortométrica de 648,888 m corresponde a una altura elipsoidal de 700,000 m: en ese punto, el
geoide EGM08-REDNAP está 51,112 m por encima del elipsoide.

## Leer el WKT de un sistema

El programa escribe la representación textual WKT (*Well-Known Text*) de ETRS89 / UTM 30N en tres dialectos, guarda un archivo `.prj` con el dialecto de ESRI
y crea un SRC a partir de ese archivo.

```python
from pathlib import Path

import crskit

crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite")

utm30n = crskit.crs_from_epsg(25830)

print(utm30n.to_wkt())                                  # WKT 1 de OGC
print(utm30n.to_wkt(crskit.WktVersion.WKT2_2019))       # ISO 19162:2019

# Archivo .prj con el dialecto de ESRI.
prj = Path("capa.prj")
prj.write_text(utm30n.to_wkt(crskit.WktVersion.WKT1_ESRI), encoding="utf-8")

leido = crskit.crs_from_wkt(prj.read_text(encoding="utf-8"))
print(leido)
print(leido.name, leido.authority_code, leido.dimension, leido.axes)

# El WKT 1 de OGC conserva el código EPSG y la definición completa.
copia = crskit.crs_from_wkt(utm30n.to_wkt())
print(copia == utm30n, copia.compare(utm30n))
```

Salida (cada WKT ocupa una sola línea):

```
PROJCS["ETRS89 / UTM zone 30N",GEOGCS["ETRS89",DATUM["European Terrestrial Reference System 1989 ensemble",SPHEROID["GRS 1980",6378137,298.257222101,AUTHORITY["EPSG","7019"]],TOWGS84[0,0,0,0,0,0,0],AUTHORITY["EPSG","6258"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["degree (supplier to define representation)",0.01745329251994328,AUTHORITY["EPSG","9122"]],AXIS["Lat",North],AXIS["Lon",East],AUTHORITY["EPSG","4258"]],PROJECTION["Transverse_Mercator"],PARAMETER["latitude_of_origin",0],PARAMETER["central_meridian",-2.999999999999997],PARAMETER["scale_factor",0.9996],PARAMETER["false_easting",500000],PARAMETER["false_northing",0],PARAMETER["semi_major",6378137],PARAMETER["semi_minor",6356752.314140356],UNIT["metre",1,AUTHORITY["EPSG","9001"]],AXIS["E",East],AXIS["N",North],AUTHORITY["EPSG","25830"]]
PROJCRS["ETRS89 / UTM zone 30N",BASEGEOGCRS["ETRS89",DATUM["European Terrestrial Reference System 1989 ensemble",ELLIPSOID["GRS 1980",6378137,298.257222101,LENGTHUNIT["metre",1,ID["EPSG",9001]],ID["EPSG",7019]],ID["EPSG",6258]],PRIMEM["Greenwich",0,ANGLEUNIT["degree",0.01745329251994328,ID["EPSG",9102]],ID["EPSG",8901]],ID["EPSG",4258]],CONVERSION["unnamed",METHOD["Transverse Mercator",ID["EPSG",9807]],PARAMETER["Latitude of natural origin",0,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8801]],PARAMETER["Longitude of natural origin",-2.999999999999997,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8802]],PARAMETER["Scale factor at natural origin",0.9996,SCALEUNIT["unity",1],ID["EPSG",8805]],PARAMETER["False easting",500000,LENGTHUNIT["metre",1,ID["EPSG",9001]],ID["EPSG",8806]],PARAMETER["False northing",0,LENGTHUNIT["metre",1,ID["EPSG",9001]],ID["EPSG",8807]]],CS[Cartesian,2],AXIS["E",east,ORDER[1]],AXIS["N",north,ORDER[2]],LENGTHUNIT["metre",1,ID["EPSG",9001]],ID["EPSG",25830]]
<Crs no code "ETRS_1989_UTM_Zone_30N" (2D)>
ETRS_1989_UTM_Zone_30N None 2 [('X', 'East'), ('Y', 'North')]
True 100
```

El WKT de ESRI no lleva código EPSG: el SRC leído del archivo `.prj` tiene `authority_code` igual a
`None`. Para conservar el código en un `.prj`, escribe el dialecto `WktVersion.WKT1_ESRI_WITH_EPSG_CODE`.

## Usar los códigos propios de Digi3D.AI

Digi3D.AI guarda la altura sobre el geoide EGM08-REDNAP con los códigos propios 69036406 (península) y
69036407 (Canarias), que no están en la base de datos de EPSG. Digi3D.AI registra en crskit un alias
que resuelve cada código propio como su código de EPSG equivalente; el paquete `crskit` no registra esos
alias (consulta [Códigos propios de Digi3D.AI](inicializacion.md#códigos-propios-de-digi3dai)).

El programa aplica la misma equivalencia con un diccionario antes de llamar a crskit:

```python
import crskit

# Códigos propios de Digi3D.AI que no están en la base de datos de EPSG y su equivalente en EPSG.
ALIAS_DIGI3D = {
    69036406: 5782,     # EGM08_REDNAP Península -> Alicante height
    69036407: 9398,     # EGM08_REDNAP Canarias  -> Tenerife height
}


def resuelve(codigo: int) -> int:
    """Código EPSG que corresponde a un código de Digi3D.AI."""
    return ALIAS_DIGI3D.get(codigo, codigo)


crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite")

codigo_vertical = 69036406      # sistema vertical que guarda un archivo de Digi3D.AI

try:
    crskit.crs_from_epsg(codigo_vertical)
except crskit.AuthorityCodeNotFoundError as error:
    print(f"Sin alias: {error}")

origen = crskit.compound_crs(25830, resuelve(codigo_vertical))
print(origen)

transformacion = crskit.transformation(origen, crskit.crs_from_epsg(4937))
print(transformacion.transform([440291.284, 4474254.600, 648.888]))
```

Salida:

```
Sin alias: Could not locate the coordinate system with code: 69036406
<Crs no code "ETRS89 / UTM zone 30N + Alicante height" (3D)>
[40.41677499862431, -3.70379000408711, 699.9996790771485]
```

`crs_from_epsg(69036406)` lanza `AuthorityCodeNotFoundError`. Con el código 5782 que devuelve
`resuelve`, la transformación usa la rejilla `EGM08_REDNAP.txt`, igual que en el ejemplo anterior.
