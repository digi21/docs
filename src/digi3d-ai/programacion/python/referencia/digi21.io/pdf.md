# digi21.io.pdf
<!-- id: digi21.io.pdf -->

Módulo: [digi21.io](README.md)

Escribe archivos [PDF](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/pdf.md)
(`.pdf`) de una página con el dibujo. El exportador no lee PDF, así que el módulo **no tiene `open`**.

```python
import digi21.io.pdf as pdf
```

## create

```python
create(path, digitab=None, crs="", *, page_size="auto", scale=1000.0, explode_symbology=True,
       title="") -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.pdf`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Da a cada código su color y su grosor, y dice si es imprimible. Si no se indica, se usa una vacía. |
| `crs` | `str` | `""` | Opcional. El PDF no guarda el sistema de coordenadas. |
| `page_size` | `str` | `"auto"` | Tamaño de la página: `"auto"` (la extensión del dibujo a la escala `scale`) o uno de `"A0"`…`"A5"`, `"RA0"`…`"RA5"`, `"B0"`…`"B5"`, `"Quarto"`, `"Foolscap"`, `"Executive"`, `"GovernmentLetter"`, `"Letter"`, `"Legal"`, `"Ledger"`, `"Tabloid"`, `"Post"`, `"Crown"`, `"LargePost"`, `"Demy"`, `"Medium"`, `"Royal"`, `"Elephant"`, `"DoubleDemy"`, `"QuadDemy"`, `"STMT"`, `"Folio"`, `"Statement"`, `"Size10x14"`. No distingue mayúsculas. Otro valor, `ValueError`. |
| `scale` | `float` | `1000.0` | Denominador de la escala (1000 es 1:1000), mayor que 0. Con `page_size="auto"` determina el tamaño de la página. |
| `explode_symbology` | `bool` | `True` | Dibuja la simbología de cada código (tipos de línea, símbolos). |
| `title` | `str` | `""` | Título en la información del documento. Vacío, el exportador conserva el último título usado en la aplicación. |

Los parámetros a partir de `page_size` son los de la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md)
para PDF, y se pasan solo por nombre.

Qué hace el exportador:

- Dibuja la página al cerrar el escritor.
- No dibuja las geometrías de los códigos que la tabla de códigos marca como no imprimibles.
- No dibuja símbolos: una tabla de códigos cargada con `DigiTab.load` no tiene las fuentes de
  símbolos.

> [!WARNING]
> Dos combinaciones de parámetros **terminan el proceso de Python** al cerrar el escritor, sin
> excepción que se pueda capturar:
>
> - `explode_symbology=True` (el valor por defecto) con una tabla de códigos y alguna línea o
>   polígono: violación de acceso en `EstiloOldDigiTab::DibujaLineaCallback`.
> - `page_size="auto"` (el valor por defecto) sin tabla de códigos: `System.ArgumentException:
>   WidthAndHeightCannotBeNegative` en `PdfInOut::AlmacenaFinal`.
>
> Pasa siempre `explode_symbology=False` y una tabla de códigos, como en los ejemplos.

Excepciones de `create`: `ValueError` si `page_size` no es un tamaño válido, `scale` no es mayor que 0
o `crs` no es válido; `FileNotFoundError` si la carpeta de `path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.
Como el módulo no lee PDF, el ejemplo de lectura busca en el archivo el tamaño de la página y el título.

### Crear un PDF A4 desde cero

```python
import digi21.io.pdf as pdf
from digi21.base import DigiTab, Line, Point, Polygon, Text

digitab = DigiTab.load("Digi.tab.xml")

with pdf.create("parcelas.pdf", digitab, page_size="A4", title="Parcelas",
                explode_symbology=False) as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"], text_height=2.5))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
with open("parcelas.pdf", "rb") as archivo:
    print(archivo.read(8))
```

```
4 escritas, 0 rechazadas
b'%PDF-1.7'
```

### Leer el tamaño de la página y el título

```python
import re

with open("parcelas.pdf", "rb") as archivo:
    contenido = archivo.read()

print(re.search(rb"/MediaBox\s*\[[^\]]*\]", contenido).group().decode())
print(re.search(rb"/Title\s*\([^)]*\)", contenido).group().decode())
```

```
/MediaBox[0 0 595 842]
/Title(Parcelas)
```

595 × 842 puntos PDF es el tamaño A4.

### Convertir un archivo BinDouble a PDF A3

```python
import digi21.io.bindouble as bind
import digi21.io.pdf as pdf
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
with pdf.create("parcelas-convertido.pdf", digitab, page_size="A3", explode_symbology=False) as writer:
    for geometry in bind.open("parcelas.bind", digitab):
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md).

### Página automática a dos escalas

```python
import re

import digi21.io.pdf as pdf
from digi21.base import DigiTab, Line

digitab = DigiTab.load("Digi.tab.xml")
for escala in (1000.0, 500.0):
    nombre = f"escala-{int(escala)}.pdf"
    with pdf.create(nombre, digitab, scale=escala, explode_symbology=False) as writer:
        writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    with open(nombre, "rb") as archivo:
        print(escala, re.search(rb"/MediaBox\s*\[[^\]]*\]", archivo.read()).group().decode())
```

```
1000.0 /MediaBox[0 0 283.465 226.772]
500.0 /MediaBox[0 0 566.929 453.543]
```

La línea ocupa 100 × 80 m. A 1:1000 son 10 × 8 cm (283,465 × 226,772 puntos PDF); a 1:500, el doble.

### Tamaño de página no válido

```python
import digi21.io.pdf as pdf

try:
    pdf.create("x.pdf", page_size="A7")
except ValueError as error:
    print(error)
print(hasattr(pdf, "open"))
```

```
Unknown page_size 'A7'. Valid values: auto, A0, A1, A2, A3, A4, A5, RA0, RA1, RA2, RA3, RA4, RA5, B0, B1, B2, B3, B4, B5, Quarto, Foolscap, Executive, GovernmentLetter, Letter, Legal, Ledger, Tabloid, Post, Crown, LargePost, Demy, Medium, Royal, Elephant, DoubleDemy, QuadDemy, STMT, Folio, Statement, Size10x14.
False
```

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato PDF](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/pdf.md)
