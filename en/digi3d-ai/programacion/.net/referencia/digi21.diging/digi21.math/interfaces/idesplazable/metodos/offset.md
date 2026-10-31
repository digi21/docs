# Offset
<!-- id: offset-2 -->
<!-- origen: 986b4b6062da8cf7dc85c1fabb2965cd01c3a72d -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Moves the object by adding an offset to its coordinates. Method of [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

```csharp
void Offset(Point2D offset);
void Offset(Point3D offset);
void Offset(double x, double y);
void Offset(double x, double y, double z);
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `offset` | Offset. With [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md), the Z offset is 0. |
| `x`, `y`, `z` | X, Y and Z offsets. The overload without `z` uses a Z offset of 0. |

All four overloads have the same effect for the same offset: `Offset(new Point2D(x, y))`, `Offset(x, y)` and `Offset(x, y, 0)` are equivalent.

`Point2D` and `Window2D` ignore the Z offset. In `Line`, `Point` and `Text`, `Offset` recalculates the entity's minimum and maximum coordinates and those of each containing entity (the complex it belongs to or the polygon of which it is a hole; a polygon's box depends only on its outer boundary).

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | In `Line`, `Point` and `Text`: the entity belongs to a drawing file (its `Owner` property is not `null`). In `Window2D` and `Window3D`: the window is uninitialized (its `Valid` property is `false`). |

## Example

The [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/) example moves a line, a text entity and a `Point3D`.
