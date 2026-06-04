# digi21.io

Lectura de archivos de dibujo de Digi3D.NET. Hay un **módulo independiente por formato**,
y todos comparten la misma interfaz: una función `open` que devuelve un
[DrawingFile](../digi21.base/drawingfile.md) iterable.

Se apoya en [digi21.base](../digi21.base/README.md): las geometrías que se obtienen al
iterar son instancias de sus tipos.

## Módulos por formato

| Módulo | Formato | Extensión habitual |
|---|---|---|
| `digi21.io.bindouble` | BinDouble | `.bind` |
| `digi21.io.bin` | Bin | `.bin` |
| `digi21.io.asciidigi` | ASCII Digi | `.asc` |
| `digi21.io.dgn` | MicroStation DGN | `.dgn` |
| `digi21.io.dwg` | AutoCAD DWG | `.dwg` |
| `digi21.io.dxf` | AutoCAD DXF | `.dxf` |

## `open`

Cada módulo expone una única función:

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo a leer. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md).

## Ejemplo

```python
import digi21.io.dwg as dwg

for geometry in dwg.open("parcela.dwg"):
    print(type(geometry).__name__, len(geometry), "vértices")
```

## Véase también

- [DrawingFile](../digi21.base/drawingfile.md)
- [Curso: leer un archivo de dibujo](../../aplicaciones-de-consola/ejemplos/leer-un-archivo-de-dibujo.md)
