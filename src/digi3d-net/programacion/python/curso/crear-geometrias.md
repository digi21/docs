# Crear geometrías

Las geometrías están en el paquete `digi21.base`. Todas se construyen indicando sus
[códigos](../referencia/digi21.base/featurecode.md) (como objetos `FeatureCode` o como
simples cadenas) y sus coordenadas.

```python
from digi21.base import Point, Text, Line, Polygon, Complex, TextJustification
```

## Un punto

```python
punto = Point((100.0, 200.0, 50.0), codes=["EDIF"])
```

## Una línea

```python
linea = Line(["CARR"], [(0, 0, 0), (10, 0, 0), (10, 10, 0)])

# También se pueden añadir vértices después:
linea.add_point((20, 10, 0))
print(linea.perimeter_2d)
```

## Un texto

```python
rotulo = Text("Calle Mayor", (50, 60, 0), codes=["ROT"],
              text_height=2.5, text_justification=TextJustification.C)
```

## Un polígono con un hueco

```python
parcela = Polygon(["PARC"], [(0, 0, 0), (100, 0, 0), (100, 100, 0), (0, 100, 0)])

patio = Line(["PARC"], [(40, 40, 0), (60, 40, 0), (60, 60, 0), (40, 60, 0)])
patio.close()
parcela.add_hole(patio)          # la propiedad del hueco pasa al polígono

print(parcela.area)
```

## Un elemento complejo

```python
bloque = Complex(["BLOQUE"])
bloque.add(Line(["MURO"], [(0, 0, 0), (10, 0, 0)]))
bloque.add(Point((5, 5, 0), codes=["POSTE"]))

for hija in bloque:
    print(type(hija).__name__)
```

## Transformar y desplazar

Cualquier geometría se puede desplazar o transformar aplicando una función a sus
coordenadas:

```python
linea.displace((10.0, 0.0, 0.0))                       # mueve 10 m en X
linea.transform(lambda p: (p[0] * 2, p[1] * 2, p[2]))  # escala XY x2
```

> **Propiedad de la memoria:** una geometría creada desde Python la libera Python. Al
> añadirla a un contenedor (`add_hole`, `add`, `insert`), la propiedad pasa al contenedor.

## Véase también

- [Referencia: Geometrías](../referencia/digi21.base/geometry.md)
- [Relaciones entre geometrías](relaciones-entre-geometrias.md)
