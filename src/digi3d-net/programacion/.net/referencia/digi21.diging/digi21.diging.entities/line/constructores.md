# Constructores

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Inicializa una nueva instancia de [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md).

## Sobrecargas

|  |  |
| :--- | :--- |
| [Line\(Code\)](constructores.md#line-code) | Inicializa una nueva instancia de [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md)con un código. |
| [Line\(IEnumerable&lt;Code&gt;\)](constructores.md#line-ienumerable-less-than-code-greater-than) | Inicializa una nueva instancia de [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md)con múltiples códigos. |

## Line\(Code\)

Inicializa una nueva instancia de [Complex](../complex/)con un código.

```csharp
public Complex(Code code);
```

### Parámetros

`code` [Code](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/)  
Código a asignar al nuevo [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md)  y le asigna el código _020400_.

```csharp
var línea = new Line(new Code("020400"));
```

## Line\(IEnumerable&lt;Code&gt;\)

Inicializa una nueva instancia de [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md) con múltiples códigos.

```csharp
public Line(IEnumerable<Code> codigos);
```

### Parámetros

`codes` [IEnumerable&lt;Code&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)  
Códigos a asignar al nuevo [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md)y le asigna los códigos _020400_ y _ABCDE_.

```csharp
var línea = new Line(new[]
{
    new Code("020400"),
    new Code("ABCDE")
};
```

## 



