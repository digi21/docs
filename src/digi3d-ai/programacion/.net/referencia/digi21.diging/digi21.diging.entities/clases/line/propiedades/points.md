# Points
<!-- id: points -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Vértices de la línea, de lectura y escritura.

```csharp
public new Point3DCollection Points { get; }
```

## Valor de la propiedad

Una [Point3DCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3dcollection.md), siempre la misma instancia para cada línea. La colección trabaja directamente sobre los vértices de la línea: cada cambio se aplica a la línea y actualiza sus coordenadas mínimas y máximas.

Si la línea es de solo lectura (pertenece a un archivo de dibujo), los métodos que modifican la colección (`Add`, `Insert`, `Remove`, `RemoveAt`, `Clear` y el descriptor `set` del indexador) lanzan `InvalidOperationException`.

Esta propiedad oculta [ReadOnlyLine.Points](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/points.md). Con una variable de tipo `ReadOnlyLine` se lee la propiedad de la clase base, que devuelve una copia de los vértices hecha en la primera lectura.

## Ejemplo

```csharp
var línea = new Line(new Code("020400"));
línea.Points.Add(new Point3D(0, 0, 100));
línea.Points.Add(new[] { new Point3D(10, 0, 100), new Point3D(20, 5, 101) });
línea.Points[0] = new Point3D(0, 1, 100);
línea.Points.RemoveAt(2);
```
