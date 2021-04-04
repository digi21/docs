# Compare

Espacio de nombres: [Digi21.DigiNG.Entities](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities)   
Ensamblado: [Digi21.DigiNG](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging)​‌

Comprara los nombres de dos códigos utilizando la lógica de comodines de Digi3D.NET.

```csharp
public static bool Compare(string codeNameA, string codeNameB);‌
```

### Parámetros

`codenameA` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre del primer código a comparar.

`codenameB` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre del segundo código a comparar. Este código admite comodines de Digi3D.NET.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si los dos nombres de códigos son idénticos según la lógica de comodines de Digi3D.NET.

#### Ejemplos

El siguiente ejemplo imprimirá por la consola un mensaje si el primer código de la geometría pertenece al grupo de altimetría \(suponiendo que todos los códigos de altimetría en la tabla de códigos activa comienzan por 02\).

```csharp
if( Code.Compare(entidad.Codes[0].Name, "02*") )
    Console.WriteLine("El primer código de la geometría pertenece al grupo de altimetría");
```

## 



