# Constructores

Espacio de nombres: [Digi21.DigiNG.Entities](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Inicializa una nueva instancia de [Point](./).

## Sobrecargas

|  |  |
| :--- | :--- |
| [Point\(Code\)](constructores.md#point-code) | Inicializa una nueva instancia de [Line](../line/)[ ](../complex/)con un código. |
| [Point\(IEnumerable&lt;Code&gt;\)](constructores.md#point-ienumerable-less-than-code-greater-than) | Inicializa una nueva instancia de [Line](../line/)[ ](../complex/)con múltiples códigos. |

## Point\(Code\)

Inicializa una nueva instancia de [Point](./)[ ](../complex/)con un código.

```csharp
public Point(Code code);
```

### Parámetros

`code` [Code](../code/)  
Código a asignar al nuevo [Point](./).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Point](./) y le asigna el código _020400_.

```csharp
var punto = new Point(new Code("020400"));
```

## Point\(IEnumerable&lt;Code&gt;\)

Inicializa una nueva instancia de [Point](./) con múltiples códigos.

```csharp
public Point(IEnumerable<Code> codigos);
```

### Parámetros

`codes` [IEnumerable&lt;Code&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)  
Códigos a asignar al nuevo [Point](./).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Point](./)[ ](../complex/)y le asigna los códigos _020400_ y _ABCDE_.

```csharp
var punto = new Point(new[]
{
    new Code("020400"),
    new Code("ABCDE")
};
```

## 



