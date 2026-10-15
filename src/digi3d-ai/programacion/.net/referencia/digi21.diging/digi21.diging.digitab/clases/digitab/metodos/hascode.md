# HasCode
<!-- id: hascode -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si la tabla de códigos tiene un código cuyo nombre o alguno de cuyos alias coincide con el nombre indicado.

```csharp
public bool HasCode(string name)
public bool HasCode(string name, bool allowWilcards)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `name` | Nombre que se busca. Se usan los 255 primeros caracteres. |
| `allowWilcards` | `true` para comparar con comodines. `HasCode(name)` equivale a `HasCode(name, false)`. |

## Devuelve

`true` si algún código de la tabla coincide con `name` en su nombre o en alguno de sus alias.

## Comparación

Con `allowWilcards` a `false`, el nombre o el alias tiene que ser igual a `name`, distinguiendo mayúsculas de minúsculas. `*` y `?` se comparan como caracteres. Es la misma comparación que usa el indizador [this[string]](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/item-string.md).

Con `allowWilcards` a `true`, las dos cadenas se comparan carácter a carácter, distinguiendo mayúsculas de minúsculas, con estas reglas:

| Carácter | Efecto |
| :--- | :--- |
| `*` | Coincide con el resto de la otra cadena, también si está vacío. |
| `?` | Coincide con un carácter cualquiera. No coincide con el final de la otra cadena. |

Los comodines valen en las dos cadenas: en `name` y en los nombres y alias de la tabla. Por ejemplo, `HasCode("0204*", true)` es `true` si la tabla tiene un código `020401`, y `HasCode("020401", true)` es `true` si la tabla tiene un código `0204*`.

## Ejemplo

```csharp
using var tabla = DigiTab.Load(@"C:\Tablas\tabla.tab.xml");

if (tabla.HasCode("020400"))
    Console.WriteLine("La tabla tiene el código 020400.");

if (tabla.HasCode("0204*", true))
    Console.WriteLine("La tabla tiene al menos un código que empieza por 0204.");
```
