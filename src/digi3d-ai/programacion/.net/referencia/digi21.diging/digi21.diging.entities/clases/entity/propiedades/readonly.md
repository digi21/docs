# ReadOnly
<!-- id: readonly -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si la entidad es de solo lectura.

```csharp
public bool ReadOnly { get; }
```

## Valor de la propiedad

`true` si [Owner](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/owner.md) no es `null`, es decir, si la entidad pertenece a un archivo de dibujo.

En una entidad de solo lectura, los descriptores `set` de `Color`, `Weight` y `FillColor`, los métodos que modifican `Codes` y los miembros que modifican la geometría (`Points`, `Holes`, `Entities`, `Offset`, `Close`, `ChangeDirection`, `Coordinate`, `Rotation`…) lanzan `InvalidOperationException`. Una entidad de tipo `Line`, `Polygon` u otro tipo de lectura y escritura también es de solo lectura si pertenece a un archivo.
