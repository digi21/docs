# InteriorPoint
<!-- id: interiorpoint -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Coordenadas de un punto del recinto del polígono que no está dentro de ningún hueco.

```csharp
public Point3D InteriorPoint { get; }
```

## Valor de la propiedad

Un punto calculado sobre la recta horizontal que pasa por la Y media de las coordenadas mínimas y máximas del polígono, en el interior del contorno exterior y fuera de los huecos. A diferencia de [Entity.Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md), el punto está dentro del recinto también en polígonos cóncavos o con huecos.

La propiedad no comprueba si el polígono tiene vértices. La implementación de esta propiedad en las líneas se describe en [ICloseable.InteriorPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/interiorpoint.md).
