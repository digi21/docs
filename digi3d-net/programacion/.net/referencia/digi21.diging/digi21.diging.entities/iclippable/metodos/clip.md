# Clip

Espacio de nombres: [Digi21.DigiNG.Entities](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities)   
Ensamblado: [Digi21.DigiNG](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging)​‌

Devuelve un conjunto de geometrías que son el resultado de recortar la geometría por el límite especificado.

```csharp
IEnumerable<Entity> Clip(ReadOnlyLine limit);‌
```

## Parámetros

`limit`[ReadOnlyLine](../../readonlyline.md)  
Línea límite por la que se recortará la geometría.

## Devuelve

[IEnumerable&lt;&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)  
Enumeración con las geometrías resultantes de recortar la geometría por el límite.



