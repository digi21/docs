# Tables

Espacio de nombres: [Digi21.DigiNG.DigiTab](../../../)  
Ensamblado: [Digi21.DigiNG](../../../../)

Devuelve un diccionario de esquemas de base de datos.

```csharp
public IDictionary<string, IList<Tuple<string, Type>>> Tables { get; }
```

## Valor de la propiedad

[IDictionary&lt;string, IList&lt;Tuple&lt;string, Type&gt;&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2?view=net-5.0)

Devuelve un diccionario cuya clave es el nombre de cada una de las tablas cuyo esquema tenga definida la tabla de códigos y cuyo valor es una lista de cada uno de sus campos. La lista es de tipo tupla y el primer valor es el nombre de cada uno de los campos de la tabla, y el segundo valor es el tipo de campo.



