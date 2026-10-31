# digi21.io.pdf
<!-- id: digi21.io.pdf -->
<!-- origen: 53ad2e29b99b8f9db7061a2c30989f58e8704715 -->

Module: [digi21.io](README.md)

Writes single-page [PDF](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/pdf.md) files (`.pdf`) containing the drawing. The exporter cannot read PDF, so this module **has no `open`**.

```python
import digi21.io.pdf as pdf
```

## create

```python
create(path, digitab=None, crs="", *, page_size="auto", scale=1000.0, explode_symbology=True,
       title="") -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.pdf` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. Assigns each code its color, weight and printability. Without `digitab`, an empty code table is used. |
| `crs` | `str` | `""` | Optional. PDF does not save the coordinate system. |
| `page_size` | `str` | `"auto"` | Page size: `"auto"` (drawing extents at `scale`) or `"A0"`…`"A5"`, `"RA0"`…`"RA5"`, `"B0"`…`"B5"`, `"Quarto"`, `"Foolscap"`, `"Executive"`, `"GovernmentLetter"`, `"Letter"`, `"Legal"`, `"Ledger"`, `"Tabloid"`, `"Post"`, `"Crown"`, `"LargePost"`, `"Demy"`, `"Medium"`, `"Royal"`, `"Elephant"`, `"DoubleDemy"`, `"QuadDemy"`, `"STMT"`, `"Folio"`, `"Statement"`, `"Size10x14"`. `create` compares `page_size` case-insensitively. Other values raise `ValueError`. |
| `scale` | `float` | `1000.0` | Scale denominator (1000 means 1:1000), greater than 0. Determines page size with `page_size="auto"`. |
| `explode_symbology` | `bool` | `True` | Draws each code's symbology (line types, symbols). |
| `title` | `str` | `""` | Title in document information. An empty `title` leaves the PDF untitled. |

Parameters from `page_size` onwards are PDF's [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters and are keyword-only.

Exporter behavior:

- Draws the page when the writer closes.
- Omits geometries whose codes are marked non-printable in the code table.
- Does not draw symbols: a table loaded with `DigiTab.load` lacks symbol fonts.

With `page_size="auto"`, page size follows rendered geometry extents. If width and height are not both greater than 0 (for example, no geometry was drawn because there was no code table, or only a point was drawn), closing the writer raises `RuntimeError` requesting a page size.

`create` exceptions: `ValueError` for invalid `page_size`, `scale` not greater than 0 or invalid `crs`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output. Because the module cannot read PDF, the reading example searches the file for page dimensions and title.

### Create an A4 PDF from scratch

```python
import digi21.io.pdf as pdf
from digi21.base import DigiTab, Line, Point, Polygon, Text

digitab = DigiTab.load("Digi.tab.xml")

with pdf.create("parcelas.pdf", digitab, page_size="A4", title="Parcelas") as writer:
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

### Read page size and title

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

595 × 842 PDF points is A4.

### Convert BinDouble to A3 PDF

```python
import digi21.io.bindouble as bind
import digi21.io.pdf as pdf
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
with pdf.create("parcelas-convertido.pdf", digitab, page_size="A3") as writer:
    for geometry in bind.open("parcelas.bind", digitab):
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`parcelas.bind` is created by the first [digi21.io.bindouble](bindouble.md) example.

### Automatic page size at two scales

```python
import re

import digi21.io.pdf as pdf
from digi21.base import DigiTab, Line

digitab = DigiTab.load("Digi.tab.xml")
for escala in (1000.0, 500.0):
    nombre = f"escala-{int(escala)}.pdf"
    with pdf.create(nombre, digitab, scale=escala) as writer:
        writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    with open(nombre, "rb") as archivo:
        print(escala, re.search(rb"/MediaBox\s*\[[^\]]*\]", archivo.read()).group().decode())
```

```
1000.0 /MediaBox[0 0 283.465 226.772]
500.0 /MediaBox[0 0 566.929 453.543]
```

The line spans 100 × 80 m. At 1:1000, this is 10 × 8 cm (283.465 × 226.772 PDF points); at 1:500, twice that.

### Invalid page size

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

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [DrawingWriter](../digi21.base/drawingwriter.md)
- [PDF format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/pdf.md)
