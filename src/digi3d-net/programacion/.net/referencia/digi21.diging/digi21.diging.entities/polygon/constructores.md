# Constructores

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Inicializa una nueva instancia de [Polygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/).

## Sobrecargas

|  |  |
| :--- | :--- |
| [Polygon\(Code\)](constructores.md#polygon-code) | Inicializa una nueva instancia de [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md)con un código. |
| [Polygon\(IEnumerable&lt;Code&gt;\)](constructores.md#polygon-ienumerable-less-than-code-greater-than) | Inicializa una nueva instancia de [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md)con múltiples códigos. |

## Polygon\(Code\)

Inicializa una nueva instancia de [Polygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)con un código.

```csharp
public Polygon(Code code);
```

### Parámetros

`code` [Code](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/)  
Código a asignar al nuevo [Polygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Polygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) y le asigna el código _020400_.

```csharp
var polígono = new Polygon(new Code("020400"));
```

## Polygon\(IEnumerable&lt;Code&gt;\)

Inicializa una nueva instancia de [Polygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) con múltiples códigos.

```csharp
public Polygon(IEnumerable<Code> codigos);
```

### Parámetros

`codes` [IEnumerable&lt;Code&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)  
Códigos a asignar al nuevo [Polygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Polygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)y le asigna los códigos _020400_ y _ABCDE_.

```csharp
var polígono = new Polygon(new[]
{
    new Code("020400"),
    new Code("ABCDE")
};
```

## 

