# GetDatabaseAttributes

Espacio de nombres: [Digi21.DigiNG.IO](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Extrae de la base de datos asociada al archivo de dibujo los atributos almacenados para la [Entity](../../../digi21.diging.entities/entity/) pasada por parámetros.

```csharp
IDictionary<string, IDictionary<string, object>> GetDatabaseAttributes(Entity entity);
```

### Parámetros

`entity` [Entity](../../../digi21.diging.entities/entity/)  
Geometría para la cual obtener atributos de base de datos.

## Devuelve

[IDictionary&lt;string, IDictionary&lt;string, object&gt;&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2?view=net-5.0)  
Diccionario cuya clave es cada uno de los códigos de la entidad solicitada y cuyo valor es un diccionario cuya clave es cada uno de los campos de base de datos y cuyo valor es el valor almacenado en la base de datos para dicho campo.



