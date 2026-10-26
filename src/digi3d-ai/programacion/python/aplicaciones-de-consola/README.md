# Aplicaciones de consola
<!-- id: aplicaciones-de-consola -->

Las aplicaciones de consola son programas de Python que se ejecutan en un intérprete de Python **fuera de
Digi3D.AI** (el que **incluye el propio programa** o uno tuyo de 3.12). Sirven para **leer,
procesar y crear archivos de dibujo** (convertir de un formato a otro, extraer información,
generar informes, hacer controles por lotes…) sin necesidad de abrir el programa.

> Digi3D.AI **trae su propio intérprete de Python 3.12** en la carpeta de instalación, con
> `digi21` ya disponible. Consulta [Intérprete incluido, pip y entornos virtuales](pip-y-entornos-virtuales.md).

Las aplicaciones de consola usan dos paquetes:

| Paquete | Para qué sirve |
|---|---|
| `digi21.base` | Tipos del núcleo: códigos, geometrías, tablas de códigos y cámara. No abre ni crea archivos. |
| `digi21.io.<formato>` | Lectura (`open`) y escritura (`create`) de archivos de dibujo. Un módulo por formato (`bin`, `bindouble`, `asciidigi`, `dgn`, `dwg`, `dxf`, `geojson`, `kml`, `svg`, `wkt`, `geopackage`, `shp`, `pdf`, `geomedia`, `postgis`, `ifc`, `vec`), cada uno con su página y sus ejemplos en la [referencia de digi21.io](../referencia/digi21.io/README.md). |

`digi21.io` se apoya en `digi21.base`: al abrir un archivo se obtienen geometrías que son
instancias de los tipos de `digi21.base`, y al crear uno se escriben geometrías de esos tipos.

> En esta forma de programación **no** existe el objeto `digi3d`: ese solo está disponible dentro
> de Digi3D.AI, en el [panel de Python](../panel-de-python/README.md) y en los
> [controles de calidad](../controles-de-calidad/README.md). Aquí trabajas con **archivos**, no
> con el dibujo activo del programa.

## Un vistazo rápido

```python
import digi21.io.bindouble as bind

drawing = bind.open("ciudad.bind")
for geometry in drawing:
    print(type(geometry).__name__, len(geometry), "vértices")
```

```python
import digi21.io.bindouble as bind
import digi21.io.dxf as dxf

origen = bind.open("ciudad.bind")
with dxf.create("ciudad.dxf", crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)
```

```python
from digi21.base import Line, Polygon

linea = Line(["CARR"], [(0, 0, 0), (10, 0, 0), (10, 10, 0)])
print(linea.perimeter_2d)

if linea.crosses(otra_linea):
    print("Las líneas se cruzan")
```

## Propiedad de la memoria

> Python libera las geometrías **creadas desde Python** que no pertenecen a un contenedor. En cuanto una geometría se **añade a un contenedor**
> (como hueco de un `Polygon` o hijo de un `Complex`), el contenedor asume la propiedad de esa geometría y se encarga
> de liberar la geometría. Las geometrías **devueltas al iterar** un archivo son propiedad del archivo:
> trátalas como de solo lectura durante el recorrido.

## Enlaces

- [Intérprete incluido, pip y entornos virtuales](pip-y-entornos-virtuales.md) — usa el Python que
  trae Digi3D.AI e instala paquetes de terceros (numpy…) con un entorno virtual.
- [Ejemplos de programación](ejemplos/README.md) — aprende leyendo y creando archivos, creando
  geometrías y consultando relaciones espaciales.
- [Referencia de la API](../referencia/README.md) — `digi21.base` y `digi21.io`.
