# Points
<!-- id: points-3 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Vértices de la línea.

```csharp
public IReadOnlyList<Point3D> Points { get; }
```

## Valor de la propiedad

Una colección de solo lectura con las coordenadas de los vértices, en orden.

La primera lectura de la propiedad copia los vértices, y las lecturas siguientes devuelven esa misma copia. En una línea leída de un archivo los vértices no cambian. En una [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), `Line.Points` oculta esta propiedad y devuelve una colección de lectura y escritura que siempre refleja los vértices actuales; si se lee `ReadOnlyLine.Points` de una `Line` (por ejemplo, con una variable de tipo `ReadOnlyLine`), los cambios posteriores en los vértices no se ven en la copia.
