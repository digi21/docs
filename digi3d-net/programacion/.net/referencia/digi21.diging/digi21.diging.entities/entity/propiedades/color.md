# Color

Espacio de nombres: [Digi21.DigiNG.Entities](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Devuelve o asigna el color de la geometría en caso de tener asignado uno que no sea el de la tabla de códigos.

```csharp
public int? Color  { get; }
```

## Valor de la propiedad

[Nullable&lt;Int32&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.nullable-1?view=net-5.0)

Color de la geometría en caso de tener uno asignado que no sea el de la tabla de códigos.  
`null` en caso de que no tenga asignado un color.

## Observaciones

Las geometrías se dibujan habitualmente con el color que tengan asignada en la tabla de códigos.

Digi3D.NET no dispone de ninguna orden que permita sobrescribir este valor, de manera que un usuario no puede asignar un color específico a una geometría, sin embargo, algunos importadores como el de DGNs puede asignar este color si la geometría en el DGN tiene asignado un color por entidad en vez de por capa.

En caso de que el valor no sea `null` el valor será un índice a la [paleta de color ](../../../../../../../referencia/editor-de-tablas-de-codigos/pestanas/colores.md#paleta-de-colores)de la tabla de códigos cargada.



