# Wkt

Espacio de nombres: [Digi21.DigiNG.IO](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Devuelve una cadena [WKT](https://es.wikipedia.org/wiki/Well_Known_Text#Sistemas_de_referencia_espacial) especificando el Sistema de Referencia en el que están las coordenadas de las geometrías del archivo de dibujo.

```csharp
string Path { get; }
```

## Valor de la propiedad

[String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)

Cadena [WKT](https://es.wikipedia.org/wiki/Well_Known_Text#Sistemas_de_referencia_espacial) como, por ejemplo:

```text
COMPD_CS["WGS 84 / UTM zone 30N + EGM2008 geoid height",PROJCS["WGS 84 / UTM zone 30N",GEOGCS["WGS 84",DATUM["World Geodetic System 1984",SPHEROID["WGS 84",6378137,298.257223563,AUTHORITY["EPSG","7030"]],AUTHORITY["EPSG","6326"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["grados",0.01745329251994328,AUTHORITY["EPSG","9122"]],AXIS["Lat",North],AXIS["Long",East],AUTHORITY["EPSG","4326"]],PROJECTION["Transverse_Mercator"],PARAMETER["latitude_of_origin",0],PARAMETER["central_meridian",-2.999999999999997],PARAMETER["scale_factor",0.9996],PARAMETER["false_easting",500000],PARAMETER["false_northing",0],PARAMETER["semi_major",6378137],PARAMETER["semi_minor",6356752.314245179],UNIT["metros",1,AUTHORITY["EPSG","9001"]],AXIS["E",East],AXIS["N",North],AUTHORITY["EPSG","32630"]],VERT_CS["EGM2008 geoid height",VERT_DATUM["EGM2008 geoid",2005,AUTHORITY["EPSG","1027"]],UNIT["metros",1,AUTHORITY["EPSG","9001"]],AXIS["H",Up],AUTHORITY["EPSG","3855"]]]
```



