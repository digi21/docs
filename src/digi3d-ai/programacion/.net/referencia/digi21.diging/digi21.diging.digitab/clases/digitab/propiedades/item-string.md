# Item[string]
<!-- id: digi21.diging.digitab.digitab.item -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Código de la tabla cuyo nombre o alias es el indicado.

```csharp
public NodeDigiTab this[string name] { get; }
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `name` | Nombre o alias del código. Se usan los 255 primeros caracteres. |

## Valor de la propiedad

[NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) del primer código, en el orden de la tabla, cuyo nombre o alguno de cuyos alias es igual a `name`. La comparación distingue mayúsculas de minúsculas y no admite comodines: `*` y `?` se comparan como caracteres. El `NodeDigiTab` no es una copia: asignar una de sus propiedades cambia el código en la tabla.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentOutOfRangeException` | Ningún código tiene ese nombre ni ese alias. Para comprobarlo antes, usa [HasCode](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/hascode.md). |

## Ejemplo

```csharp
using var tabla = DigiTab.Load(@"C:\Tablas\tabla.tab.xml");

if (tabla.HasCode("020100"))
    Console.WriteLine(tabla["020100"].Description);
```
