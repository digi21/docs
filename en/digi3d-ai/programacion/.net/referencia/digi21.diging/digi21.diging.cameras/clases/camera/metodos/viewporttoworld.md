# ViewportToWorld
<!-- id: viewporttoworld -->
<!-- origen: c8e4c11474764e2bcb4084f6eebb8503521c7aec -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Converts a point in OpenGL window coordinates to drawing file coordinates.

```csharp
public Point3D ViewportToWorld(Point3D viewport)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `viewport` | [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) with `X` and `Y` in OpenGL window pixels (origin at the bottom-left corner) and `Z` as depth between 0 and 1. |

## Returns

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) in drawing file coordinates. If the point cannot be converted, returns `Position`.

## Notes

The method converts the point using `gluUnProject` and the view, projection and viewport matrices of the OpenGL context active on the calling thread, then adds `Position` to the result. Of the camera properties, it uses only `Position`. The result corresponds to the drawing window only if the method is called on the thread with that window's OpenGL context active.

The inverse method is [WorldToViewport](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/metodos/worldtoviewport.md).
