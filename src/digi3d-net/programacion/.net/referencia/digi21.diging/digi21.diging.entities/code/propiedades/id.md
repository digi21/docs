# Id

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Devuelve el valor del _PrimaryKey_ del registro de base de datos al que apunta la geometría que tiene asignado este [Code](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/).

```csharp
public int? Id { get; }
```

## Valor de la propiedad

[Nullable&lt;int&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.nullable-1?view=net-5.0)

Valor del PrimaryKey que tiene la información de base de datos de la [Entity](../../entity/)poseedora de este [Code](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/) o `null` en caso de que el código no tenga enlace a base de datos.



