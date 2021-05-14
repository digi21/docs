# Attributes

Espacio de nombres: [Digi21.DigiNG.Entities](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities)   
Ensamblado: [Digi21.DigiNG](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging)​‌

Devuelve un diccionario con los atributos de base de datos asociados con el código.

```csharp
public IDictionary<string, object> Attributes { get;  }‌
```

## Valor de la propiedad <a id="valor-de-la-propiedad"></a>

[IDictionary&lt;&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2?view=net-5.0)

Un diccionario cuyo índice son los campos de base de datos de la tabla asociada al código y cuyo valor es el valor de dicho campo.

## Ejemplo

Para crear un código que tenga atributos de base de datos asociados:

```csharp
var código = new Code("020400")
{
    Attributes = new Dictionary<string, object>
    {
        {"Propietario", "Dylan"},
        {"Alturas", 3},
        {"Superficie", 200.0}
    }
};
```





