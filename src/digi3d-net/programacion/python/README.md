# Python

Digi3D.NET incorpora una API de **Python** para trabajar con sus tipos del núcleo
(códigos, geometrías, tablas de códigos, cámara) y para **leer archivos de dibujo**
en distintos formatos.

La API está pensada para escribir guiones de forma cómoda y "pythonica": todos los
nombres están **en inglés**, las clases en `PascalCase` y los métodos, propiedades y
argumentos en `snake_case`.

> Versión de Python objetivo: **3.12 (x64)**.

## Los dos paquetes

| Paquete | Para qué sirve |
|---|---|
| **`digi21.base`** | Tipos del núcleo: códigos, geometrías, tablas de códigos y cámara. No abre archivos. |
| **`digi21.io.<formato>`** | Lectura de archivos de dibujo. Un módulo por formato (`bindouble`, `bin`, `asciidigi`, `dgn`, `dwg`, `dxf`). |

`digi21.io` se apoya en `digi21.base`: al abrir un archivo se obtienen geometrías que
son instancias de los tipos de `digi21.base`.

## Por dónde empezar

- **[Curso](curso/README.md)** — tutoriales con ejemplos para aprender haciendo: leer un
  archivo, crear geometrías, consultar relaciones espaciales.
- **[Referencia](referencia/README.md)** — descripción formal de cada módulo, clase,
  propiedad y método.

## Un vistazo rápido

```python
import digi21.io.bindouble as bind

drawing = bind.open("ciudad.bind")
for geometry in drawing:
    print(type(geometry).__name__, len(geometry), "vértices")
```

```python
from digi21.base import Line, Polygon

linea = Line(["CARR"], [(0, 0, 0), (10, 0, 0), (10, 10, 0)])
print(linea.perimeter_2d)

if linea.crosses(otra_linea):
    print("Las líneas se cruzan")
```

## Propiedad de la memoria

> Una geometría **creada desde Python** la libera Python. En cuanto se **añade a un
> contenedor** (como hueco de un `Polygon` o hijo de un `Complex`), la propiedad pasa al
> contenedor, que será quien la libere. Las geometrías **devueltas al iterar** un archivo
> son propiedad del archivo: trátalas como de solo lectura durante el recorrido.
