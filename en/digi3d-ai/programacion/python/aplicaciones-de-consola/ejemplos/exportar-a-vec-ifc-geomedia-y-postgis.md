# Exporting to VEC, IFC, GeoMedia and PostGIS
<!-- id: exportar-a-vec-ifc-geomedia-y-postgis -->
<!-- origen: 4bc21463c4e8ee836c32ff436c87aafdb9998f3a -->

VEC and IFC create new files; GeoMedia and PostGIS **add** geometries to an existing database with existing layers.

## VEC and IFC

```python
import digi21.io.ifc as ifc
import digi21.io.vec as vec
from digi21.base import Line, Polygon

with vec.create("parcelas.vec") as writer:
    writer.add(Line(["LINDE"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
for geometry in vec.open("parcelas.vec"):
    print(type(geometry).__name__, [c.code for c in geometry.codes], len(geometry), "vértices")

# A wall face (horizontal normal) and a slab face (vertical normal). Geometry codes cannot be
# repeated, so equal normal components are written differently: "0" and "0.0".
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

- **VEC**: without `iovec:transform` in the codes table, assigns one layer per code. Reading back returns the layer number (`'0'`) as code. Writes a temporary file, replacing the destination when the writer closes; if replacement fails, `close` raises `RuntimeError`.
- **IFC**: writes only faces with code `LIMEXT` followed by normal components. Normal Z below 0.1 means wall (`IfcWall`); otherwise slab (`IfcSlab`). Both types are extruded 0.3 m. Reading back returns each face as a complex containing solid edges. The IFC library prints `messageCallback not set…` when reading.

## GeoMedia

`digi21.io.geomedia` opens an Access (`.mdb`) GeoMedia warehouse with existing feature classes in `GFeatures` and adds geometries. Cannot create the warehouse or layers: GeoMedia seed files have no layers and cannot be destinations.

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

Each code requires `ioGeomedia:transform` with its feature class, and matching geometry type: `LAP030` is an MGCP line class. The coordinate system comes from the warehouse's `GCoordSystem`. Requires Microsoft Access Database Engine. This example ran on a copy of a real warehouse that cannot be published (11,514 geometries; 11,515 after reading back). [digi21.io.geomedia](../../referencia/digi21.io/geomedia.md) has more examples using that warehouse.

## PostGIS

For `digi21.io.postgis`, the path is the `.pg` **connection file**. With `database`, `create` writes connection details to it:

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

Does not create tables: each code requires `ioPostGis:transform` naming an existing database table with a geometry column. The connection file stores the password as text, like the application. This example has not been run: no PostGIS server was available.

## See also

- Reference: [digi21.io.vec](../../referencia/digi21.io/vec.md), [digi21.io.ifc](../../referencia/digi21.io/ifc.md), [digi21.io.geomedia](../../referencia/digi21.io/geomedia.md) and [digi21.io.postgis](../../referencia/digi21.io/postgis.md)
- [VEC format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/vec.md)
- [IFC format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ifc.md)
- [GeoMedia format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geomedia.md)
- [PostGIS format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/postgis.md)
