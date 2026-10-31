# Geometry relationships
<!-- id: relaciones-entre-geometrias -->
<!-- origen: 93cef3f62fde4a2534f526ef4f9cd93f27e302fe -->

Every [geometry](../../referencia/digi21.base/geometry.md) has methods for querying spatial relationships with another geometry, similar to libraries such as Shapely:

```python
if linea.crosses(otra_linea):
    print("se cruzan")

if punto.within(parcela):
    print("el punto está dentro de la parcela")
```

> **Important:** these relationships use **shared vertices and nodes**, rather than geometrically calculated intersections. For example, two lines “touch” (`touches`) only if they share a vertex; crossing without a shared vertex is insufficient.

> An undefined relationship for the given type combination raises `TypeError`. See the full table in [Reference: Geometry](../../referencia/digi21.base/geometry.md#spatial-relations).

## Examples

Detect points lying on no line:

```python
sueltos = [p for p in puntos if all(p.disjoint(l) for l in lineas)]
```

Check whether a line ends inside a parcel:

```python
if linea.terminates_within(parcela):
    print("la línea acaba dentro de la parcela")
```

Find adjacent parcels:

```python
for a in parcelas:
    for b in parcelas:
        if a is not b and a.adjacent(b):
            print("parcelas vecinas")
```

Get the vertices where two lines cross:

```python
vertices = linea.cross_vertices(otra_linea)
if vertices:
    print("se cruzan en", len(vertices), "puntos")
    primer_corte = linea[vertices[0]]
```

## See also

- [Reference: Geometry](../../referencia/digi21.base/geometry.md): all relationships and supported type combinations.
