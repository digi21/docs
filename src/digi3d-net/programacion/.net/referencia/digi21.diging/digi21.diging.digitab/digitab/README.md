# DigiTab

Espacio de nombres: [Digi21.DigiNG.DigiTab](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase implementa métodos para interactuar con tablas de códigos de Digi3D.NET.

```csharp
public sealed class DigiTab : IDisposable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → DigiTab

Implementa: [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0)

## Propiedades

|  |  |
| :--- | :--- |
| [Codes](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/codes.md)con las características de cada código perteneciente a la tabla de códigos. |
| [Path](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/path.md) | Devuelve la ruta de la tabla de códigos. |
| [Tables](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/tables.md) | Devuelve un diccionario de esquemas de base de datos. |
| [Item\[string\]](propiedades/item-string.md) | Devuelve el [NodeDigiTab](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) con las características del código cuyo nombre coincide con el parámetro. |

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Load](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos-estaticos/load.md). |

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



