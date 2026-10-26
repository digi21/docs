# Tables
<!-- id: tables -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Tablas de base de datos que define el esquema de la tabla de códigos, con sus campos.

```csharp
public IDictionary<string, IList<Tuple<string, Type>>> Tables { get; }
```

## Valor de la propiedad

Cada lectura de `Tables` devuelve un diccionario nuevo. La clave de cada entrada del diccionario es el nombre de la tabla de base de datos y el valor es la lista de campos de esa tabla, en el orden del esquema. Cada campo es una tupla con el nombre del campo (`Item1`) y su tipo .NET (`Item2`):

| Tipo del campo en el esquema | `Item2` |
| :--- | :--- |
| Carácter | `typeof(string)` |
| Numérico | `typeof(int)` |
| Coma flotante | `typeof(float)` |
| Otro | `null` |

Modificar el diccionario o las listas no cambia la tabla de códigos.

La propiedad [NodeDigiTab.Table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/table.md) de cada código indica a cuál de estas tablas de base de datos está vinculado.
