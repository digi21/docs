# LastVertex
<!-- id: lastvertex -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Coordenadas del último vértice de la línea.

```csharp
public Point3D LastVertex { get; }
```

## Valor de la propiedad

El [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) del vértice de índice `Points.Count - 1`.

La propiedad no comprueba el número de vértices: no la uses en una línea sin vértices.
