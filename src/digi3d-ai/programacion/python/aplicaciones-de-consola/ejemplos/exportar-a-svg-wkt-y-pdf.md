# Exportar a SVG, WKT y PDF
<!-- id: exportar-a-svg-wkt-y-pdf -->

Tres formatos que no guardan el sistema de coordenadas, así que en los tres `crs` es opcional:

- `digi21.io.svg` dibuja las geometrías en un lienzo SVG con el color, el grosor y el relleno de
  cada código.
- `digi21.io.wkt` escribe una geometría WKT por línea, sin código.
- `digi21.io.pdf` dibuja las geometrías en una página PDF. Su exportador no lee PDF, así que el
  módulo no tiene `open`.

## El ejemplo

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

- Cada código necesita un elemento `iosvg:transform` en la tabla de códigos:

  ```xml
  <iosvg:transform stroke-width="1.000000" stroke="#ad159d" stroke-linejoin="miter" stroke-linecap="butt" fill="0" fill-color="#ad159d" point-size="1.000000" />
  ```

  En la tabla de este ejemplo el código `040645` no lo tiene, así que su línea se rechaza.
- `width` es el ancho del lienzo en píxeles; el alto mantiene la proporción del dibujo.
- SVG es 2D: al releer con `svg.open`, la Z es 0 y los polígonos son líneas cerradas.

## WKT

- El archivo no guarda códigos: al releerlo con `wkt.open`, el código de las geometrías no es el
  que se escribió.
- Los textos se escriben como puntos.

## PDF

- `page_size` es un tamaño de papel (`"A4"`, `"A3"`, `"Letter"`…) o `"auto"`, que da a la página
  la extensión del dibujo a la escala `scale` (por defecto 1000, es decir, 1:1000).
- `explode_symbology=True`, el valor por defecto, dibuja los tipos de línea de cada código;
  `False` dibuja cada geometría con una línea continua.
- `title` es el título del documento.
- La página se dibuja al cerrar el escritor. No se dibujan las geometrías de los códigos que la
  tabla marca como no imprimibles.

## Véase también

- [Referencia: digi21.io.svg](../../referencia/digi21.io/README.md#digi21iosvg)
- [Referencia: digi21.io.wkt](../../referencia/digi21.io/README.md#digi21iowkt)
- [Referencia: digi21.io.pdf](../../referencia/digi21.io/README.md#digi21iopdf)
