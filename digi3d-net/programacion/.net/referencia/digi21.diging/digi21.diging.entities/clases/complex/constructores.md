# Constructores

Espacio de nombres: [Digi21.DigiNG.Entities](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Inicializa una nueva instancia de [Complex](./).

## Sobrecargas

|  |  |
| :--- | :--- |
| [Complex\(Code\)](constructores.md#complex-code) | Inicializa una nueva instancia de [Complex ](./)con un código. |
| [Complex\(IEnumerable&lt;Code&gt;\)](constructores.md#complex-ienumerable-less-than-code-greater-than) | Inicializa una nueva instancia de [Complex ](./)con múltiples códigos. |

## Complex\(Code\)

Inicializa una nueva instancia de [Complex ](./)con un código.

```csharp
public Complex(Code code);
```

### Parámetros

`code` [Code](../code/)  
Código a asignar al nuevo [Complex](./).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Complex ](./)y le asigna el código _020400_.

```csharp
var complejo = new Complex(new Code("020400"));
```

## Complex\(IEnumerable&lt;Code&gt;\)

Inicializa una nueva instancia de [Complex ](./)con múltiples códigos.

```csharp
public Complex(IEnumerable<Code> codigos);
```

### Parámetros

`codes` [IEnumerable&lt;Code&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)  
Códigos a asignar al nuevo [Complex](./).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Complex ](./)y le asigna los códigos _020400_ y _ABCDE_.

```csharp
var complejo = new Complex(new[]
{
    new Code("020400"),
    new Code("ABCDE")
};
```

## 



