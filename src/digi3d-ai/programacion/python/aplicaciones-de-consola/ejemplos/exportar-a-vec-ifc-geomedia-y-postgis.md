# Exportar a VEC, IFC, GeoMedia y PostGIS
<!-- id: exportar-a-vec-ifc-geomedia-y-postgis -->

Los módulos VEC e IFC crean archivos nuevos, mientras que GeoMedia y
PostGIS **añaden** geometrías a una base de datos que ya existe y ya tiene las capas.

## VEC e IFC

```python
import digi21.io.ifc as ifc
import digi21.io.vec as vec
from digi21.base import Line, Polygon

with vec.create("parcelas.vec") as writer:
    writer.add(Line(["LINDE"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
for geometry in vec.open("parcelas.vec"):
    print(type(geometry).__name__, [c.code for c in geometry.codes], len(geometry), "vértices")

# Una cara de muro (normal horizontal) y una de forjado (normal vertical). Los códigos de una geometría no se
# repiten, así que las componentes iguales de la normal se escriben distintas: "0" y "0.0".
muro = Polygon(["LIMEXT", "1", "0", "0.0"], [(10, 0, 0), (10, 5, 0), (10, 5, 3), (10, 0, 3), (10, 0, 0)])
forjado = Polygon(["LIMEXT", "0", "0.0", "1"], [(0, 0, 0), (10, 0, 0), (10, 5, 0), (0, 5, 0), (0, 0, 0)])

with ifc.create("edificio.ifc") as writer:
    writer.add(muro)
    writer.add(forjado)
    print(writer.add(Line(["LINDE"], [(0, 0, 0), (10, 0, 0)])), writer.warnings)

for geometry in ifc.open("edificio.ifc"):
    print(type(geometry).__name__, [c.code for c in geometry.codes], len(geometry), "líneas")
```

```
Line ['0'] 3 vértices
False ['IFC only stores faces whose codes are LIMEXT followed by the x, y and z components of their normal.']
messageCallback not set. Lost message: Detected IFC version: IFC4X1
Complex ['IfcWall'] 2 líneas
Complex ['IfcSlab'] 2 líneas
```

- **VEC**: sin un elemento `iovec:transform` en la tabla de códigos, el exportador asigna una capa a
  cada código, y al releer el archivo, el código es el número de esa capa (`'0'`). El exportador escribe en un
  archivo temporal y sustituye el archivo de destino al cerrar el escritor; si no puede sustituir el archivo de destino, `close` lanza `RuntimeError`.
- **IFC**: solo se escriben caras con el código `LIMEXT` seguido de las componentes de su normal.
  Con la componente Z de la normal por debajo de 0,1, la cara es un muro (`IfcWall`); si no, un forjado
  (`IfcSlab`). Las caras de ambos tipos se extruyen 0,3 m. Al releer el archivo, cada cara es un complejo con las aristas del
  sólido. La línea `messageCallback not set…` la escribe la biblioteca de IFC al leer el archivo.

## GeoMedia

`digi21.io.geomedia` abre un almacén GeoMedia en Access (`.mdb`) que ya tiene sus clases de entidad
en la tabla `GFeatures`, y le añade las geometrías. El exportador no puede crear el almacén ni las
capas: los archivos semilla de GeoMedia no tienen capas y no sirven como destino.

```python
import digi21.base as base
import digi21.io.geomedia as geomedia

digitab = base.DigiTab.load("modelo.tab.xml")
with geomedia.create("almacen.mdb", digitab) as writer:
    writer.add(base.Line(["LAP030"], [(-6.97, 38.88, 200.0), (-6.96, 38.88, 201.0), (-6.96, 38.89, 202.0)]))
print(writer.written, writer.warnings)
```

```
1 []
```

Cada código necesita un elemento `ioGeomedia:transform` con su clase de entidad, y la geometría
tiene que ser del tipo de esa clase: `LAP030` es una clase de líneas del modelo MGCP. El sistema de
coordenadas es el de la tabla `GCoordSystem` del almacén. Hace falta el proveedor Microsoft Access
Database Engine. El ejemplo se ha ejecutado contra una copia de un almacén real que no se puede
publicar (11.514 geometrías; al releer hay 11.515). La página de
[digi21.io.geomedia](../../referencia/digi21.io/geomedia.md) tiene más ejemplos con ese almacén.

## PostGIS

En `digi21.io.postgis` la ruta es el **archivo de conexión** `.pg`. Si se pasa `database`, `create`
lo escribe con los datos de la conexión:

```python
import digi21.base as base
import digi21.io.postgis as postgis

digitab = base.DigiTab.load("modelo.tab.xml")
with postgis.create("conexion.pg", digitab, server="servidor", port=5432,
                    user="usuario", password="contraseña", database="cartografia") as writer:
    writer.add(base.Line(["LINDE"], [(500000, 4400000, 650), (500100, 4400000, 652)]))
print(writer.written, writer.warnings)

for geometry in postgis.open("conexion.pg", digitab):
    ...
```

El exportador no crea tablas: cada código necesita un elemento `ioPostGis:transform` cuya tabla
exista en la base de datos con una columna de geometría. El archivo de conexión guarda la contraseña
en texto, igual que la aplicación. Este ejemplo no se ha ejecutado: no había un servidor PostGIS
disponible.

## Véase también

- Referencia: [digi21.io.vec](../../referencia/digi21.io/vec.md),
  [digi21.io.ifc](../../referencia/digi21.io/ifc.md),
  [digi21.io.geomedia](../../referencia/digi21.io/geomedia.md) y
  [digi21.io.postgis](../../referencia/digi21.io/postgis.md)
- [Formato VEC](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/vec.md)
- [Formato IFC](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ifc.md)
- [Formato GeoMedia](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geomedia.md)
- [Formato PostGIS](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/postgis.md)
