# Topología

Módulo: `digi3d`

Tipos para trabajar con las **topologías** cargadas en memoria. Se obtienen de
[`DrawingView.topologies`](drawing-view.md#propiedades-de-información), un diccionario
`{nombre: [Topology]}`.

## Topology

Representa una topología.

| Propiedad | Tipo | L/E | Descripción |
|---|---|---|---|
| `polygons` | `list[TopologyPolygon]` | L | Polígonos de la topología. |
| `drawing_file` | `DrawingFile` | L | Archivo de dibujo asociado. |
| `visible` | `bool` | L/E | Visibilidad de la topología. |
| `show_polygons_without_centroid` | `bool` | L/E | Muestra los polígonos sin centroide. |

## TopologyPolygon

Un polígono topológico (con huecos).

| Miembro | Tipo | Descripción |
|---|---|---|
| `holes` | propiedad (`list`) | Huecos del polígono. |
| `within(x, y)` | método (`bool`) | Indica si el punto `(x, y)` está dentro del polígono (parcela). |

## TopologyRing

Un arco cerrado topológico.

| Propiedad | Tipo | Descripción |
|---|---|---|
| `ring` | (polilínea) | La polilínea del arco. |

## Ejemplo

```python
import digi3d

for nombre, topologias in digi3d.current_view().topologies.items():
    for topologia in topologias:
        print(nombre, len(topologia.polygons), "polígonos")
        for poligono in topologia.polygons:
            if poligono.within(430000, 4480000):
                print("punto dentro de un polígono")
```

## Véase también

- [DrawingView](drawing-view.md) — propiedad `topologies`.
