# Code

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase representa un código de la tabla de códigos.

```csharp
public struct Code
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [ValueType](https://docs.microsoft.com/en-us/dotnet/api/system.valuetype?view=net-5.0) → Code

## Constructores

|  |  |
| :--- | :--- |
| [Code\(string\)](constructores.md#code-string) | Inicializa una nueva instancia de [Code](./)asignándole un nombre. |
| [Code\(string, int?, int?\)](constructores.md#code-string-int-int) | Inicializa una nueva instancia de [Code](./)asignándole un nombre, identificador de tabla de base de datos e identificador de registro. |
| [Code\(string, int, int\)](constructores.md#code-string-int-int-1) | Inicializa una nueva instancia de [Code](./)asignándole un nombre, identificador de tabla de base de datos e identificador de registro. |

## Propiedades

|  |  |
| :--- | :--- |
| [Name](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/name.md). |
| [Table](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/table.md). |
| [Id](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/id.md). |
| [Visible](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/visible.md) en la ventana de dibujo. |
| [VisiblePhotogrammetricWindow](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/visiblephotogrammetricwindow.md) en la ventana fotogramétrica. |

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Compare\(string, string\)](metodos-estaticos/compare.md) | Comprara utilizando la lógica de comodines de Digi3D.NET dos nombres de códigos. |
| [Compose\(string, string\)](metodos-estaticos/compose.md) | Compone el nombre de un código a partir de un nombre de código existente y de una cadena a sustituir con comodines. |

## Métodos

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">ToString()</td>
      <td style="text-align:left">
        <p>Convierte este <a href="./">Code</a> en una cadena legible para los humanos.</p>
        <p>(Heredado de <a href="https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0">Object</a>)</p>
      </td>
    </tr>
  </tbody>
</table>

## Operadores

|  |  |
| :--- | :--- |
| == |  |
| != |  |

