# Table

Espacio de nombres: [Digi21.DigiNG.Entities](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Devuelve el valor del número de tabla en la que existen los datos de base de datos asociados con este [Code](../).

```csharp
public int? Table { get; }
```

## Valor de la propiedad

[Nullable&lt;int&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.nullable-1?view=net-5.0)

Número de tabla si el código tiene datos de base de datos o `null` en caso contrario.

## Observaciones

Una geometría puede tener tantos códigos como desee, y los códigos opcionalmente pueden apuntar a un determinado registro de una determinada tabla de base de datos.

Al conectar con una base de datos habitualmente existe una tabla denominada CATDBS o MSCATALOG que es un índice que relaciona número de tabla con nombre de tabla.

El número que se almacena en esta propiedad es el número de tabla que tiene una tabla en particular en la tabla CATDBS o MSCATALOG.



