# digi21.io.dgn
<!-- id: digi21.io.dgn -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos [DGN](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md)
(`.dgn`) de MicroStation V8.

```python
import digi21.io.dgn as dgn
```

> [!IMPORTANT]
> Importa `digi21.io.dgn` **antes** de cargar la tabla de códigos con `DigiTab.load`. La primera
> tabla que se carga en el proceso solo recibe los elementos `iodgn:transform` si el módulo ya está
> importado. Si cargas la tabla de códigos antes de importar `digi21.io.dgn`, todos los códigos se escriben con los parámetros por defecto, en un
> nivel con el nombre del código (último ejemplo).

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.dgn`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). Cada elemento tiene un solo código: el de su
nivel. El sistema de coordenadas se obtiene del archivo `.prj` con el mismo nombre que el dibujo. Si `path`
no existe, lanza `FileNotFoundError`.

## create

```python
create(path, digitab=None, crs="", *, template="", code_criteria=0, use_cell_file=False,
       cell_file="", transform_cell_levels=False, import_palette=True, use_dgn_colors=True,
       import_cells_as_point=True, spline_increment=1.0, unknown_code_format="$(Level)",
       resource_files="") -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.dgn`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Da a cada código su nivel, color, estilo y grosor (elemento `iodgn:transform`). Si no se indica, se usa una vacía. |
| `crs` | `str` | `""` | Sistema de coordenadas: un WKT o `"EPSG:<código>"`. **Obligatorio**. Se escribe en un archivo `.prj` junto al dibujo. |
| `template` | `str` | `""` | Archivo `.dgn` que se usa como semilla. Si está vacío, se crea un dibujo nuevo. |
| `code_criteria` | `int` | `0` | Criterio para códigos, de 0 a 18, ambos incluidos (0 es **Nivel**): posición en la lista **Criterio para códigos** del cuadro de diálogo del formato. Si el valor está fuera de rango, se lanza `ValueError`. |
| `use_cell_file` | `bool` | `False` | Toma las células de un archivo de células de MicroStation. |
| `cell_file` | `str` | `""` | Archivo `.cel`. Solo se usa si `use_cell_file` es `True`. |
| `transform_cell_levels` | `bool` | `False` | Asigna a cada elemento de la célula el nivel, el color, el estilo y el grosor del código. Solo se usa si `use_cell_file` es `True`. |
| `import_palette` | `bool` | `True` | Al abrir un archivo existente, importa su paleta. |
| `use_dgn_colors` | `bool` | `True` | Al leer, las entidades toman el color del archivo DGN. |
| `import_cells_as_point` | `bool` | `True` | Al leer, las células se convierten en puntos. |
| `spline_increment` | `float` | `1.0` | Distancia entre vértices al convertir las splines en polilíneas al leer. |
| `unknown_code_format` | `str` | `"$(Level)"` | Nombre del código que se crea para los elementos sin traducción en la tabla de códigos. |
| `resource_files` | `str` | `""` | Rutas de archivos de recursos de MicroStation separadas por punto y coma. |

Los parámetros a partir de `template` son los de la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md)
para DGN, en el mismo orden, y se pasan solo por nombre. Su significado detallado está en la
[página del formato](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md).

Qué hace el exportador:

- Escribe cada código en el nivel, con el color, el estilo y el grosor de su `iodgn:transform`:

  ```xml
  <code name="040645" description="Árbol puntual" type="0" …>
    <io>
      <iodgn:transform export="1" level="040645" colorEntity="-1" styleEntity="-1" weightEntity="-1"
                       fillColor="-1" color="1" style="0" weight="1" … />
  ```

- Una geometría cuyo código no tiene `iodgn:transform` se escribe en un nivel con el nombre del
  código y con los parámetros por defecto, y `warnings` lo indica.
- Si `iodgn:transform` dice que el código no se exporta (`export="0"`), `add` devuelve `False`.
- Si junto al destino ya hay un `.prj` con el mismo nombre, lo **conserva** en lugar de escribir
  `crs`, y `warnings` lo avisa.

Excepciones de `create`: `ValueError` si falta `crs`, no es válido o `code_criteria` está fuera de
rango; `FileNotFoundError` si la carpeta de `path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.
`Digi.tab.xml` es una tabla de códigos con el `iodgn:transform` de los códigos `010123`, `040645` y
`020402`.

### Crear un archivo desde cero

```python
import digi21.io.dgn as dgn
from digi21.base import DigiTab, Line, Point, Polygon, Text

# La tabla se carga después de importar el módulo: así recibe la traducción a DGN de cada código.
digitab = DigiTab.load("Digi.tab.xml")

with dgn.create("parcelas.dgn", digitab, crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"], text_height=2.5))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

### Leer y contar por nivel y por tipo

```python
import collections

import digi21.io.dgn as dgn
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
conteo = collections.Counter()
for geometry in dgn.open("parcelas.dgn", digitab):
    conteo[(geometry.codes[0].code, type(geometry).__name__)] += 1

for (codigo, tipo), n in sorted(conteo.items()):
    print(codigo, tipo, n)
```

```
010123 Point 1
020402 Polygon 1
020402 Text 1
040645 Line 1
```

### Convertir un archivo BinDouble a DGN

```python
import digi21.io.bindouble as bind
import digi21.io.dgn as dgn
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
origen = bind.open("parcelas.bind", digitab)
with dgn.create("parcelas-convertido.dgn", digitab, crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md).

### Un código sin traducción a DGN

```python
import digi21.io.dgn as dgn
from digi21.base import DigiTab, Line

digitab = DigiTab.load("Digi.tab.xml")
with dgn.create("sin-traduccion.dgn", digitab, crs="EPSG:25830") as writer:
    print(writer.add(Line(["LINDE"], [(500000, 4400000, 650), (500100, 4400000, 652)])))

for aviso in writer.warnings:
    print(aviso)
print([c.code for g in dgn.open("sin-traduccion.dgn") for c in g.codes])
```

```
True
Se ha almacenado en el archivo DGN una entidad con código desconocido: "LINDE". Se ha conservado dicho código en el archivo de dibujo.
Se ha creado el nivel: LINDE
['LINDE']
```

Los avisos del exportador se muestran en el idioma de la instalación.

### La tabla cargada antes de importar el módulo

```python
from digi21.base import DigiTab, Line

digitab = DigiTab.load("Digi.tab.xml")   # antes de importar el módulo de DGN
import digi21.io.dgn as dgn

with dgn.create("orden.dgn", digitab, crs="EPSG:25830") as writer:
    print(writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652)])))
print(writer.written, writer.rejected, writer.warnings)
```

```
True
1 0 ['No se han localizado parámetros para traducir a DGNv8 entidades con el código: "010123". Las entidades con este código se almacenarán en el nivel: "010123".', 'No se han localizado parámetros para traducir a DGNv8 entidades con el código: "040645". Las entidades con este código se almacenarán en el nivel: "040645".', 'No se han localizado parámetros para traducir a DGNv8 entidades con el código: "020402". Las entidades con este código se almacenarán en el nivel: "020402".', 'Se ha creado el nivel: 040645']
```

La geometría se escribe, pero sin el color, el estilo ni el grosor de la tabla.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato DGN](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md)
