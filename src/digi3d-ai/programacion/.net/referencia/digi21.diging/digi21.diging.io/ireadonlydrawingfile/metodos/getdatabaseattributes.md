# GetDatabaseAttributes

Espacio de nombres: [Digi21.DigiNG.IO](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.io/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Extrae de la base de datos asociada al archivo de dibujo los atributos almacenados para la [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) pasada por parámetros.

```csharp
IDictionary<string, IDictionary<string, object>> GetDatabaseAttributes(Entity entity);
```

### Parámetros

`entity` [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/)  
Geometría para la cual obtener atributos de base de datos.

## Devuelve

[IDictionary&lt;string, IDictionary&lt;string, object&gt;&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2?view=net-5.0)  
Diccionario cuya clave es cada uno de los códigos de la entidad solicitada y cuyo valor es un diccionario cuya clave es cada uno de los campos de base de datos y cuyo valor es el valor almacenado en la base de datos para dicho campo.

