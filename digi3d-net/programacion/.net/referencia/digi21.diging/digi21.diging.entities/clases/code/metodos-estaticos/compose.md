# Compose

Espacio de nombres: [Digi21.DigiNG.Entities](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities)   
Ensamblado: [Digi21.DigiNG](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging)​‌

Compone el nombre de un código a partir de un nombre de código existente y de una cadena a sustituir con comodines.

```csharp
public static string Compose(string stringToCompose, string wildCard);‌
```

### Parámetros

`stringToCompose` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre del código a componer.

`wildCard` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Cadena con comodines a sustituir en formato Digi3D.NET.

## Devuelve

[String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre del código compuesto.

#### Ejemplos

El siguiente ejemplo asume que los códigos que comienzan por 06 son temporales y los que comienzan por 07 son permanentes, de manera que por ejemplo si el código 060101 es Edificio temporal, el código 070101 será Edificio permanente.

El ejemplo imprimirá en la consola el código permanente correspondiente con un código temporal.

```csharp
var códigoTemporal = "060400";
var códigoPermanente = Codes.Compose(códigoTemporal, "03*");
Console.WriteLine(códigoPermanente);
```

