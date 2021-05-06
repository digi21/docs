# Constructores

Espacio de nombres: [Digi21.DigiNG.Entities](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Inicializa una nueva instancia de [Text](./).

## Sobrecargas

|  |  |
| :--- | :--- |
| [Text\(Code\)](constructores.md#text-code) | Inicializa una nueva instancia de [Text](./)[ ](../complex/)con un código. |
| [Text\(IEnumerable&lt;Code&gt;\)](constructores.md#text-ienumerable-less-than-code-greater-than) | Inicializa una nueva instancia de [Text](./)[ ](../complex/)con múltiples códigos. |

## Text\(Code\)

Inicializa una nueva instancia de [Text](./)[ ](../complex/)con un código.

```csharp
public Text(Code code);
```

### Parámetros

`code` [Code](../code/)  
Código a asignar al nuevo [Text](./).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Text](./) y le asigna el código _020400_.

```csharp
var texto = new Text(new Code("020400"));
```

## Text\(IEnumerable&lt;Code&gt;\)

Inicializa una nueva instancia de [Text](./) con múltiples códigos.

```csharp
public Text(IEnumerable<Code> codigos);
```

### Parámetros

`codes` [IEnumerable&lt;Code&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)  
Códigos a asignar al nuevo [Text](./).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Text](./)[ ](../complex/)y le asigna los códigos _020400_ y _ABCDE_.

```csharp
var texto = new Polygon(new[]
{
    new Code("020400"),
    new Code("ABCDE")
};
```

## 

