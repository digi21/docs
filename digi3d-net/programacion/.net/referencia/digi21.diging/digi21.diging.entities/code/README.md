# Code

Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase representa un código de la tabla de códigos.

```csharp
public struct Code
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [ValueType](https://docs.microsoft.com/en-us/dotnet/api/system.valuetype?view=net-5.0) → Code

## Constructores

|  |  |
| :--- | :--- |
| [Code\(string\)](constructores.md#code-string) | Inicializa una nueva instancia de [Code ](./)asignándole un nombre. |
| [Code\(string, int?, int?\)](constructores.md#code-string-int-int) | Inicializa una nueva instancia de [Code ](./)asignándole un nombre, identificador de tabla de base de datos e identificador de registro. |
| [Code\(string, int, int\)](constructores.md#code-string-int-int-1) | Inicializa una nueva instancia de [Code ](./)asignándole un nombre, identificador de tabla de base de datos e identificador de registro. |

## Propiedades

|  |  |
| :--- | :--- |
| [Name](propiedades/name.md) | Devuelve el nombre del [Code](./). |
| [Table](propiedades/table.md) | Devuelve el identificador de tabla de base de datos asociado con el [Code](./). |
| [Id](propiedades/id.md) | Devuelve el valor del _PrimaryKey_ del registro de base de datos al que apunta la geometría que tiene asignado este [Code](./). |
| [Visible](propiedades/visible.md) | Indica si está habilitada la visualización de este [Code](./) en la ventana de dibujo. |
| [VisiblePhotogrammetricWindow](propiedades/visiblephotogrammetricwindow.md) | Indica si está habilitada la visualización de este [Code](./) en la ventana fotogramétrica. |

## Métodos estáticos

|  |  |
| :--- | :--- |
| Compose\(string, string\) | Compone el nombre de un código con comodines de Digi3D.NET. |
| Compare\(string, string\) | Comprara utilizando la lógica de comodines de Digi3D.NET dos nombres de códigos. |

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

