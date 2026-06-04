# DrawingFile

Módulo: [digi21.base](README.md)

Representa un archivo de dibujo abierto. No se construye directamente: lo devuelve la
función `open` de los módulos de [digi21.io](../digi21.io/README.md). Se **itera** para
obtener sus [geometrías](geometry.md) una a una.

## Propiedades

| Propiedad | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo de dibujo. |

## Iteración

| Operación | Descripción |
|---|---|
| `for geometry in drawing:` | Recorre las geometrías del archivo, leyéndolas una a una. |

> El recorrido es **perezoso**: las geometrías se leen del archivo según se itera. Son
> propiedad del archivo de dibujo; trátalas como de solo lectura durante el recorrido.

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
- [Curso: leer un archivo de dibujo](../../aplicaciones-de-consola/ejemplos/leer-un-archivo-de-dibujo.md)
