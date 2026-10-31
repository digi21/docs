# Exporting to SVG, WKT and PDF
<!-- id: exportar-a-svg-wkt-y-pdf -->
<!-- origen: 8c93921933c210f930c461f59ea4b4430c96d2ea -->

These formats do not store coordinate systems, so `crs` is optional in all three:

- `digi21.io.svg` draws geometries on an SVG canvas using each code's color, width and fill.
- `digi21.io.wkt` writes one WKT geometry per line, without codes.
- `digi21.io.pdf` draws geometries on a PDF page. Its exporter cannot read PDFs, so the module has no `open`.

## Example

```python
import digi21.io.pdf as pdf
import digi21.io.svg as svg
import digi21.io.wkt as wkt
from digi21.base import DigiTab, Line, Point, Polygon

digitab = DigiTab.load("Digi.tab.xml")
geometrias = [
    Point((500010.0, 4400010.0, 650.0), ["010123"]),
    Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]),
    Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655), (500000, 4400000, 650)]),
]

with svg.create("parcelas.svg", digitab, width=800) as writer:
    for geometry in geometrias:
        writer.add(geometry)
print("SVG:", writer.written, "escritas,", writer.rejected, "rechazadas")
for aviso in writer.warnings:
    print("  ", aviso)

with wkt.create("parcelas.wkt", digitab) as writer:
    for geometry in geometrias:
        writer.add(geometry)
with open("parcelas.wkt", encoding="utf-8") as archivo:
    print(archivo.read())

with pdf.create("parcelas.pdf", digitab, page_size="A4", title="Parcelas", explode_symbology=False) as writer:
    for geometry in geometrias[1:]:
        writer.add(geometry)
print("PDF:", writer.written, "escritas")
with open("parcelas.pdf", "rb") as archivo:
    print(archivo.read(8))
```

```
SVG: 2 escritas, 1 rechazadas
   The code 040645 has no iosvg:transform element in the digitab: its geometries are not written.
POINT Z (500010.0000 4400010.0000 650.0000)
LINESTRING Z (500000.0000 4400000.0000 650.0000, 500100.0000 4400000.0000 652.0000, 500100.0000 4400080.0000 655.0000)
POLYGON Z ((500000.0000 4400000.0000 650.0000, 500100.0000 4400000.0000 652.0000, 500100.0000 4400080.0000 655.0000, 500000.0000 4400000.0000 650.0000))

PDF: 2 escritas
b'%PDF-1.7'
```

## SVG

- Each code requires `iosvg:transform` in the codes table:

  ```xml
  <iosvg:transform stroke-width="1.000000" stroke="#ad159d" stroke-linejoin="miter" stroke-linecap="butt" fill="0" fill-color="#ad159d" point-size="1.000000" />
  ```

  Code `040645` in this example lacks `iosvg:transform`, so its line is rejected.
- `width` is canvas width in pixels; height preserves the drawing's aspect ratio.
- SVG is 2D: rereading with `svg.open` returns Z = 0 and polygons as closed lines.

## WKT

- Codes are not stored: when read with `wkt.open`, geometry codes differ from those written.
- Texts are written as points.

## PDF

- `page_size` is a paper size (`"A4"`, `"A3"`, `"Letter"`…) or `"auto"`, which sizes the page to drawing extents at `scale` (default 1000, or 1:1000).
- `explode_symbology=True`, the default, draws each code's line types; `False` draws solid lines. Always pass `False`: with `True`, a codes table and a line, Python terminates when closing the writer (see [digi21.io.pdf](../../referencia/digi21.io/pdf.md)).
- `title` is the document title.
- The page is drawn when closing the writer. Codes marked nonprintable in the table are not drawn.

## See also

- [Reference: digi21.io.svg](../../referencia/digi21.io/svg.md)
- [Reference: digi21.io.wkt](../../referencia/digi21.io/wkt.md)
- [Reference: digi21.io.pdf](../../referencia/digi21.io/pdf.md)
