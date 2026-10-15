# Wkt
<!-- id: wkt-2 -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

WKT (*Well-Known Text*) del [sistema de referencia de coordenadas](/digi3d-ai/sistemas-referencia-coordenadas/) en el que están las coordenadas de las entidades del archivo de dibujo.

```csharp
string Wkt { get; }
```

## Valor de la propiedad

`string`: definición WKT del sistema de referencia de coordenadas, por ejemplo:

```text
COMPD_CS["WGS 84 / UTM zone 30N + EGM2008 geoid height",PROJCS["WGS 84 / UTM zone 30N",GEOGCS["WGS 84",DATUM["World Geodetic System 1984",SPHEROID["WGS 84",6378137,298.257223563,AUTHORITY["EPSG","7030"]],AUTHORITY["EPSG","6326"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["grados",0.01745329251994328,AUTHORITY["EPSG","9122"]],AXIS["Lat",North],AXIS["Long",East],AUTHORITY["EPSG","4326"]],PROJECTION["Transverse_Mercator"],PARAMETER["latitude_of_origin",0],PARAMETER["central_meridian",-2.999999999999997],PARAMETER["scale_factor",0.9996],PARAMETER["false_easting",500000],PARAMETER["false_northing",0],PARAMETER["semi_major",6378137],PARAMETER["semi_minor",6356752.314245179],UNIT["metros",1,AUTHORITY["EPSG","9001"]],AXIS["E",East],AXIS["N",North],AUTHORITY["EPSG","32630"]],VERT_CS["EGM2008 geoid height",VERT_DATUM["EGM2008 geoid",2005,AUTHORITY["EPSG","1027"]],UNIT["metros",1,AUTHORITY["EPSG","9001"]],AXIS["H",Up],AUTHORITY["EPSG","3855"]]]
```

De dónde sale el WKT depende del formato: del archivo `.prj` en [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), de la cabecera en [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), de la primera capa en [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md) y [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md). Para un archivo nuevo, los constructores toman el WKT de un [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md). En `Shp`, si la carpeta no tiene capas y el constructor no recibió un `DelegateGetWkt`, la propiedad lanza una excepción.

La clase [CoordinateSystem](/digi3d-ai/programacion/.net/referencia/digi21.coordinatesystems/coordinatesystem.md) crea el sistema de referencia de coordenadas a partir de este texto con `CoordinateSystem.FromWkt`.
