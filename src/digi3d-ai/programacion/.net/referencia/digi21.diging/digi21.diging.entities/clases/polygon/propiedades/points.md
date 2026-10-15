# Points
<!-- id: points-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Vértices del contorno exterior del polígono, de lectura y escritura.

```csharp
public new Point3DCollection Points { get; }
```

## Valor de la propiedad

Una [Point3DCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3dcollection.md), siempre la misma instancia para cada polígono. La colección trabaja directamente sobre los vértices del contorno exterior: cada cambio se aplica al polígono y actualiza sus coordenadas mínimas y máximas. El último vértice tiene que repetir el primero; la colección no lo añade.

Si el polígono es de solo lectura, los métodos que modifican la colección lanzan `InvalidOperationException`.

Esta propiedad oculta [ReadOnlyPolygon.Points](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/points.md), que devuelve una copia de los vértices hecha en la primera lectura.

## Ejemplo

```csharp
var polígono = new Polygon(new Code("080100"));
polígono.Points.Add(new[]
{
    new Point3D(0, 0, 0),
    new Point3D(0, 100, 0),
    new Point3D(100, 100, 0),
    new Point3D(0, 0, 0),
});
```
