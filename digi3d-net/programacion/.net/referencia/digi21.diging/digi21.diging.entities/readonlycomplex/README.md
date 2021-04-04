# ReadOnlyComplex



Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase implementa una geometría de tipo Complejo \(que es una geometría compuesta por una colección de geometrías\) de solo lectura.

```csharp
public class ReadOnlyComplex : Entity
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](../entity/) → ReadOnlyComplex

Tipos derivados: [Complex](../complex/)

## Propiedades

|  |  |
| :--- | :--- |
| [Entities](propiedades/entities.md) | Devuelve un [IEnumerable ](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)con todas las geometrías que forman parte del [ReadOnlyComplex](./). |

## Métodos

|  |  |
| :--- | :--- |
| [Clone\(\)](metodos/clone.md) | Devuelve una nueva instancia de [Complex](../complex/) idéntica a la actual pero que no está asignada a ningún [IDrawingFile](../../digi21.diging.io/idrawingfile/) de manera que no es de solo lectura. |
| ToString | Convierte este [ReadOnlyComplex](./) en una cadena legible para los humanos. |



