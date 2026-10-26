# DrawingFile
<!-- id: drawingfile-3 -->

Módulo: [digi21.base](README.md)

Representa un archivo de dibujo abierto. No se construye directamente: lo devuelve la
función `open` de los módulos de [digi21.io](../digi21.io/README.md). Se **itera** para
obtener sus [geometrías](geometry.md) una a una.

## Propiedades

| Propiedad | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo de dibujo. Los módulos de GeoJSON, KML, SVG, WKT, GeoPackage, SHP, Geomedia, PostGIS, IFC y VEC la devuelven absoluta; en SHP es la carpeta de las capas. |
| `crs` | `str` | WKT del sistema de coordenadas del archivo, o cadena vacía si el archivo no lo tiene. Sirve para pasarlo a `create` al convertir de un formato a otro. |

## Iteración

| Operación | Descripción |
|---|---|
| `for geometry in drawing:` | Recorre las geometrías del archivo, leyéndolas una a una. |

> El recorrido es **perezoso**: las geometrías se leen del archivo según se itera. Cada
> geometría mantiene abierto el archivo del que procede, así que sigue siendo válida aunque dejes de conservar una referencia
> al `DrawingFile` (por ejemplo, en `list(modulo.open(ruta))`). Trata las geometrías del archivo como de solo lectura.

### Archivos cargados en Digi3D.AI

Los archivos de [`view.files`](../digi3d/drawing-view.md#geometrías-de-cada-archivo) y de
`view.drawing_file` también son `DrawingFile`. Estos archivos se recorren en memoria y admiten,
además, longitud e índice:

| Operación | Descripción |
|---|---|
| `for geometry in drawing:` | Recorre las geometrías que Digi3D.AI tiene cargadas, incluidas las borradas. |
| `len(drawing)` | Número de geometrías cargadas. |
| `drawing[i]` | Geometría en la posición `i`. |

Las geometrías de un archivo cargado son las de la aplicación: las que se añaden con `view.add`
aparecen en el recorrido. Un `DrawingFile` abierto con `open` no admite `len` ni índice y lanza
`TypeError`.

## Ejemplo

```python
import digi21.io.dwg as dwg

drawing = dwg.open("parcela.dwg")
print(drawing.path)
for geometry in drawing:
    print(type(geometry).__name__)
```

## Véase también

- [digi21.io](../digi21.io/README.md)
- [DrawingWriter](drawingwriter.md) — escribe un archivo de dibujo nuevo.
- [Curso: leer un archivo de dibujo](../../aplicaciones-de-consola/ejemplos/leer-un-archivo-de-dibujo.md)
