# Relaciones entre geometrías

Toda [geometría](../referencia/digi21.base/geometry.md) dispone de métodos para consultar
su relación espacial con otra, al estilo de bibliotecas como Shapely:

```python
if linea.crosses(otra_linea):
    print("se cruzan")

if punto.within(parcela):
    print("el punto está dentro de la parcela")
```

> **Importante:** estas relaciones se basan en los **vértices y nodos compartidos** entre
> las geometrías, no en intersecciones calculadas geométricamente. Por ejemplo, dos líneas
> solo "se tocan" (`touches`) si comparten un vértice común, no si se cruzan por el aire.

> Si una relación no está definida para la combinación de tipos dada, se lanza un
> `TypeError`. Consulta la tabla completa en
> [Referencia: Geometry](../referencia/digi21.base/geometry.md#relaciones-espaciales).

## Ejemplos

Detectar puntos que no caen sobre ninguna línea:

```python
sueltos = [p for p in puntos if all(p.disjoint(l) for l in lineas)]
```

Comprobar que una línea termina dentro de una parcela:

```python
if linea.terminates_within(parcela):
    print("la línea acaba dentro de la parcela")
```

Encontrar parcelas adyacentes:

```python
for a in parcelas:
    for b in parcelas:
        if a is not b and a.adjacent(b):
            print("parcelas vecinas")
```

Obtener los vértices en los que dos líneas se cruzan:

```python
vertices = linea.cross_vertices(otra_linea)
if vertices:
    print("se cruzan en", len(vertices), "puntos")
    primer_corte = linea[vertices[0]]
```

## Véase también

- [Referencia: Geometry](../referencia/digi21.base/geometry.md) — la lista completa de
  relaciones y sus combinaciones de tipos.
