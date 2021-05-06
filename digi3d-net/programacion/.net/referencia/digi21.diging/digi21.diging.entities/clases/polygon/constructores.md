# Constructores

Espacio de nombres: [Digi21.DigiNG.Entities](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Inicializa una nueva instancia de [Polygon](./).

## Sobrecargas

|  |  |
| :--- | :--- |
| [Polygon\(Code\)](constructores.md#polygon-code) | Inicializa una nueva instancia de [Line](../line/)[ ](../complex/)con un código. |
| [Polygon\(IEnumerable&lt;Code&gt;\)](constructores.md#polygon-ienumerable-less-than-code-greater-than) | Inicializa una nueva instancia de [Line](../line/)[ ](../complex/)con múltiples códigos. |

## Polygon\(Code\)

Inicializa una nueva instancia de [Polygon](./)[ ](../complex/)con un código.

```csharp
public Polygon(Code code);
```

### Parámetros

`code` [Code](../code/)  
Código a asignar al nuevo [Polygon](./).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Polygon](./) y le asigna el código _020400_.

```csharp
var polígono = new Polygon(new Code("020400"));
```

## Polygon\(IEnumerable&lt;Code&gt;\)

Inicializa una nueva instancia de [Polygon](./) con múltiples códigos.

```csharp
public Polygon(IEnumerable<Code> codigos);
```

### Parámetros

`codes` [IEnumerable&lt;Code&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)  
Códigos a asignar al nuevo [Polygon](./).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Polygon](./)[ ](../complex/)y le asigna los códigos _020400_ y _ABCDE_.

```csharp
var polígono = new Polygon(new[]
{
    new Code("020400"),
    new Code("ABCDE")
};
```

## 

