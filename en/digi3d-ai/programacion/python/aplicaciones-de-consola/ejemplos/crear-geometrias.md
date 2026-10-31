# Creating geometries
<!-- id: crear-geometrias -->
<!-- origen: 1e3888e8034e56f7931bc833959329d45b37f2d7 -->

Geometries are in `digi21.base`. Construct each with its [codes](../../referencia/digi21.base/featurecode.md) (`FeatureCode` objects or plain strings) and coordinates.

```python
from digi21.base import Point, Text, Line, Polygon, Complex, TextJustification
```

## A point

```python
punto = Point((100.0, 200.0, 50.0), codes=["EDIF"])
```

## A line

```python
linea = Line(["CARR"], [(0, 0, 0), (10, 0, 0), (10, 10, 0)])

# You can also add vertices later:
linea.add_point((20, 10, 0))
print(linea.perimeter_2d)
```

## A text

```python
rotulo = Text("Calle Mayor", (50, 60, 0), codes=["ROT"],
              text_height=2.5, text_justification=TextJustification.C)
```

## A polygon with a hole

```python
parcela = Polygon(["PARC"], [(0, 0, 0), (100, 0, 0), (100, 100, 0), (0, 100, 0)])

patio = Line(["PARC"], [(40, 40, 0), (60, 40, 0), (60, 60, 0), (40, 60, 0)])
patio.close()
parcela.add_hole(patio)          # ownership of the hole transfers to the polygon

print(parcela.area)
```

## A complex element

```python
bloque = Complex(["BLOQUE"])
bloque.add(Line(["MURO"], [(0, 0, 0), (10, 0, 0)]))
bloque.add(Point((5, 5, 0), codes=["POSTE"]))

for hija in bloque:
    print(type(hija).__name__)
```

## Transforming and displacing

Displace or transform any geometry by applying a function to its coordinates:

```python
linea.displace((10.0, 0.0, 0.0))                       # moves 10 m in X
linea.transform(lambda p: (p[0] * 2, p[1] * 2, p[2]))  # scales XY x2
```

> **Memory ownership:** Python releases geometries created from Python that do not belong to a container. Adding a geometry to a container (`add_hole`, `add`, `insert`) transfers ownership to the container.

## See also

- [Reference: Geometries](../../referencia/digi21.base/geometry.md)
- [Geometry relationships](relaciones-entre-geometrias.md)
