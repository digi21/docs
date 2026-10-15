# InteriorPoint
<!-- id: interiorpoint-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve una coordenada en el interior del recinto que forma la entidad. Es una propiedad de [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/).

```csharp
Point3D InteriorPoint { get; }
```

## Valor de la propiedad

Un [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) dentro del recinto en el plano XY. Sirve, por ejemplo, para colocar el rótulo de una parcela. A diferencia de `Center` (el centro de las coordenadas mínimas y máximas), este punto está dentro del recinto también en recintos cóncavos.

| Tipo | Cálculo |
| :--- | :--- |
| `ReadOnlyLine`, `Line` | Si el centro de las coordenadas mínimas y máximas está dentro de la línea, devuelve ese centro. Si no, busca el punto sobre una recta horizontal que no pasa por ningún vértice. |
| `ReadOnlyPolygon`, `Polygon` | Busca el punto teniendo en cuenta el contorno exterior y los huecos: el punto devuelto no está dentro de ningún hueco. |

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La entidad es una línea que no está cerrada en X, Y (`Closed` es `false`) o que tiene menos de 2 vértices. |
