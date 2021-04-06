# DigiTab

Espacio de nombres: [Digi21.DigiNG.DigiTab](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase implementa métodos para interactuar con tablas de códigos de Digi3D.NET.

```csharp
public sealed class DigiTab : IDisposable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → DigiTab

Implementa: [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0)

## Propiedades

|  |  |
| :--- | :--- |
| [Codes](propiedades/codes.md) | Devuelve una enumeración de [NodeDigiTab ](../nodedigitab/)con las características de cada código perteneciente a la tabla de códigos. |
| [Tables](propiedades/tables.md) | Devuelve un diccionario de esquemas de base de datos. |
| [Item\[string\]](propiedades/item-string.md) | Devuelve el [NodeDigiTab](../nodedigitab/) con las características del código cuyo nombre coincide con el parámetro. |

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Load](metodos-estaticos/load.md) | Carga una tabla de códigos devolviendo una instancia de [DigiTab](./). |

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
      <td style="text-align:left"><a href="metodos/addcode.md">AddCode</a>
      </td>
      <td style="text-align:left">A&#xF1;ade un nuevo c&#xF3;digo a la tabla de c&#xF3;digos.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="https://docs.microsoft.com/en-us/dotnet/api/system.idisposable.dispose?view=net-5.0">Dispose</a>
      </td>
      <td style="text-align:left">
        <p>Libera los recursos utilizados por la tabla de c&#xF3;digos.</p>
        <p>(Heredado de <a href="https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0">IDisposable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/hascode.md#hascode-string">HasCode(string)</a>
      </td>
      <td style="text-align:left">Indica si la tabla de c&#xF3;digos contiene un c&#xF3;digo cuyo nombre
        sea el pasado por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/hascode.md#hascode-string-bool">HasCode(string, bool)</a>
      </td>
      <td style="text-align:left">Indica si la tabla de c&#xF3;digos contiene un c&#xF3;digo cuyo nombre
        sea el pasado por par&#xE1;metros permitiendo indicar si aplicar l&#xF3;gica
        de comodines.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/write.md">Write(string)</a>
      </td>
      <td style="text-align:left">Almacena la tabla de c&#xF3;digos en un archivo.</td>
    </tr>
  </tbody>
</table>



