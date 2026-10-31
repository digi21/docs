# Topology
<!-- id: topology -->
<!-- origen: 0f6def4b7d1bdbaead5eb51282209277231742af -->

Module: `digi3d`

These types work with **topologies** loaded in memory. Obtain topologies from
[`DrawingView.topologies`](drawing-view.md#information-properties), a
`{nombre: [Topology]}` dictionary.

## Topology

Represents a topology.

| Property | Type | R/W | Description |
|---|---|---|---|
| `polygons` | `list[TopologyPolygon]` | R | Topology polygons. |
| `drawing_file` | `DrawingFile` | R | Associated drawing file. |
| `visible` | `bool` | R/W | Topology visibility. |
| `show_polygons_without_centroid` | `bool` | R/W | Shows polygons without a centroid. |

## TopologyPolygon

A topological polygon (with holes).

| Member | Type | Description |
|---|---|---|
| `holes` | property (`list`) | Polygon holes. |
| `within(x, y)` | method (`bool`) | Indicates whether the point `(x, y)` is inside the polygon (parcel). |

## TopologyRing

A closed topological arc.

| Property | Type | Description |
|---|---|---|
| `ring` | (polyline) | The arc polyline. |

## Example

```python
import digi3d

for nombre, topologias in digi3d.current_view().topologies.items():
    for topologia in topologias:
        print(nombre, len(topologia.polygons), "polígonos")
        for poligono in topologia.polygons:
            if poligono.within(430000, 4480000):
                print("punto dentro de un polígono")
```

## See also

- [DrawingView](drawing-view.md) — `topologies` property.
