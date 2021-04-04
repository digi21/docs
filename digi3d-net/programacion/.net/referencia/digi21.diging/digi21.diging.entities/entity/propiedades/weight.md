# Weight

Espacio de nombres: [Digi21.DigiNG.Entities](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Devuelve o asigna el grosor de la geometría en caso de tener asignado uno que no sea el de la tabla de códigos.

```csharp
public int? Weight { get; }
```

## Valor de la propiedad

[Nullable&lt;Int32&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.nullable-1?view=net-5.0)

Grosor de la geometría en caso de tener uno asignado que no sea el de la tabla de códigos.  
`null` en caso de que no tenga asignado un grosor.

## Observaciones

Las geometrías se dibujan habitualmente con el grosor que tengan asignado en la tabla de códigos.

Digi3D.NET no dispone de ninguna orden que permita sobrescribir este valor, de manera que un usuario no puede asignar un grosor específico a una geometría, sin embargo, algunos importadores como el de DGNs puede asignar este grosor si la geometría en el DGN tiene asignado un grosor por entidad en vez de por capa.



