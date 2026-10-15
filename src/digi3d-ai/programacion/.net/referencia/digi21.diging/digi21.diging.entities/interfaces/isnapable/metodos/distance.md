# Distance
<!-- id: distance -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve el vector desde una coordenada hasta el punto más cercano de la entidad. Es un método de [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/).

```csharp
Point3D Distance(Point3D coordinate)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `coordinate` | Coordenada de origen del vector. |

## Valor devuelto

Un [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) con la diferencia `punto más cercano - coordinate` en X, Y y Z. `Module` es la distancia en el espacio y `Point2D.Module` la distancia en el plano XY.

| Tipo | Punto más cercano |
| :--- | :--- |
| `ReadOnlyLine`, `Line`, `ReadOnlyPolygon`, `Polygon` | El método calcula el vértice más cercano y la proyección sobre el segmento más cercano, como [NearestVertex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) y [NearestSegment](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md), y usa la proyección si existe y está más cerca en el plano XY que el vértice; si no, usa el vértice. En un polígono solo se analiza el contorno exterior. A diferencia de `NearestSegment`, no lanza una excepción si ninguna proyección cae dentro de un segmento. |
| `ReadOnlyPoint`, `Point` | `Coordinate` del punto. |
| `ReadOnlyText`, `Text` | `Coordinate` (punto de inserción) del texto. |

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La entidad es una línea o un polígono sin vértices. |
