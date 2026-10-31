# Wkt
<!-- id: wkt-2 -->
<!-- origen: eee6fecdb8132234ea924d2aba02b7bfe04491da -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

WKT (*Well-Known Text*) of the [coordinate reference system](/digi3d-ai/sistemas-referencia-coordenadas/) used by the drawing file's entity coordinates.

```csharp
string Wkt { get; }
```

## Property value

`string`: WKT definition of the coordinate reference system, for example:

```text
COMPD_CS["WGS 84 / UTM zone 30N + EGM2008 geoid height",PROJCS["WGS 84 / UTM zone 30N",GEOGCS["WGS 84",DATUM["World Geodetic System 1984",SPHEROID["WGS 84",6378137,298.257223563,AUTHORITY["EPSG","7030"]],AUTHORITY["EPSG","6326"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["grados",0.01745329251994328,AUTHORITY["EPSG","9122"]],AXIS["Lat",North],AXIS["Long",East],AUTHORITY["EPSG","4326"]],PROJECTION["Transverse_Mercator"],PARAMETER["latitude_of_origin",0],PARAMETER["central_meridian",-2.999999999999997],PARAMETER["scale_factor",0.9996],PARAMETER["false_easting",500000],PARAMETER["false_northing",0],PARAMETER["semi_major",6378137],PARAMETER["semi_minor",6356752.314245179],UNIT["metros",1,AUTHORITY["EPSG","9001"]],AXIS["E",East],AXIS["N",North],AUTHORITY["EPSG","32630"]],VERT_CS["EGM2008 geoid height",VERT_DATUM["EGM2008 geoid",2005,AUTHORITY["EPSG","1027"]],UNIT["metros",1,AUTHORITY["EPSG","9001"]],AXIS["H",Up],AUTHORITY["EPSG","3855"]]]
```

The WKT source depends on the format: the `.prj` file in [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), the header in [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), and the first layer in [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md) and [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md). For a new file, constructors obtain the WKT from a [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md). In `Shp`, if the folder has no layers and the constructor did not receive a `DelegateGetWkt`, the property throws an exception.

The [CoordinateSystem](/digi3d-ai/programacion/.net/referencia/digi21.coordinatesystems/coordinatesystem.md) class creates the coordinate reference system from this text using `CoordinateSystem.FromWkt`.
