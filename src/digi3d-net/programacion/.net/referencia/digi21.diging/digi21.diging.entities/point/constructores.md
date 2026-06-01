# Constructores

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Inicializa una nueva instancia de [Point](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/).

## Sobrecargas

|  |  |
| :--- | :--- |
| [Point\(Code\)](constructores.md#point-code) | Inicializa una nueva instancia de [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md)con un código. |
| [Point\(IEnumerable&lt;Code&gt;\)](constructores.md#point-ienumerable-less-than-code-greater-than) | Inicializa una nueva instancia de [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md)con múltiples códigos. |

## Point\(Code\)

Inicializa una nueva instancia de [Point](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/)con un código.

```csharp
public Point(Code code);
```

### Parámetros

`code` [Code](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/)  
Código a asignar al nuevo [Point](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Point](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) y le asigna el código _020400_.

```csharp
var punto = new Point(new Code("020400"));
```

## Point\(IEnumerable&lt;Code&gt;\)

Inicializa una nueva instancia de [Point](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) con múltiples códigos.

```csharp
public Point(IEnumerable<Code> codigos);
```

### Parámetros

`codes` [IEnumerable&lt;Code&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)  
Códigos a asignar al nuevo [Point](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/).

#### Ejemplos

El siguiente ejemplo instancia un nuevo [Point](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/)y le asigna los códigos _020400_ y _ABCDE_.

```csharp
var punto = new Point(new[]
{
    new Code("020400"),
    new Code("ABCDE")
};
```

## 



