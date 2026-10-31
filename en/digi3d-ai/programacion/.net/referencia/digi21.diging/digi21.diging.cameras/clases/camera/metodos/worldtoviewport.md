# WorldToViewport
<!-- id: worldtoviewport -->
<!-- origen: d680d7eac1d5b884e257b4b477632c9bdfdf8b3c -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Projects a point in drawing file coordinates to OpenGL window coordinates.

```csharp
public Point3D WorldToViewport(Point3D world)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `world` | [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) in drawing file coordinates. |

## Returns

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) with `X` and `Y` in OpenGL window pixels (origin at the bottom-left corner) and `Z` as depth between 0 and 1. Returns `(0, 0, 0)` if the point cannot be projected.

## Notes

The method subtracts `Position` from the point and projects it using `gluProject` and the view, projection and viewport matrices of the OpenGL context active on the calling thread. Of the camera properties, it uses only `Position`: this object's rotations and clipping planes are not involved. The result corresponds to the drawing window only if the method is called on the thread with that window's OpenGL context active.

The inverse method is [ViewportToWorld](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/metodos/viewporttoworld.md).
