# Codes
<!-- id: codes-3 -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Códigos activos de la ventana de dibujo, cuadros de diálogo para seleccionar códigos y visibilidad de los códigos en la ventana de dibujo.

```csharp
public class Codes
```

La clase no tiene constructores públicos. El objeto se obtiene con la propiedad estática [DigiNG.Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), que lanza `NullReferenceException` si no hay ninguna ventana de dibujo abierta. Mientras se cierra la ventana de dibujo activa (por ejemplo, dentro de un manejador de `DestroyingWindow` o del evento `Disposing` de una orden), la ventana ya no tiene documento, y los métodos que usan el documento lanzan `NullReferenceException`. El objeto queda ligado a la ventana de dibujo activa en el momento de leer `DigiNG.Codes`: cuando esa ventana se cierra, todos los miembros lanzan `ObjectDisposedException`.

Los códigos se representan con la estructura [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/). Los métodos buscan cada código por su nombre en la [tabla de códigos](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) de la ventana de dibujo.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `IEnumerable<Code> ActiveCodes` | Códigos activos: los códigos con los que se digitalizan las entidades nuevas. El descriptor `get` devuelve un array nuevo; cada `Code` lleva `Table` e `Id` si el código activo tiene tabla e identificador de base de datos asignados, y solo `Name` si no los tiene. El descriptor `set` sustituye los códigos activos por los de la enumeración, con su `Table` e `Id` si los tienen. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `Code[] DlgSelectCodes(string title, bool allowMultipleCodes)` | Muestra el cuadro de diálogo de búsqueda de códigos con el título `title` y devuelve los códigos que selecciona el usuario, solo con `Name`. Con `allowMultipleCodes` a `false`, el usuario solo puede seleccionar un código. |
| `int SelectCodeFromList(string title, Code[] listOfCodes)` | Muestra un cuadro de diálogo con el título `title` y los códigos de `listOfCodes`. Devuelve el índice en `listOfCodes` del código que selecciona el usuario, o `-1` si el usuario no selecciona ninguno. |
| `void ShowCode(string codeName, bool visible)` | Muestra (`visible` a `true`) u oculta las entidades del código `codeName` en todos los archivos de dibujo de la ventana. |
| `void ShowCode(IEnumerable<string> codeNames, bool visible)` | Muestra u oculta las entidades de cada código de `codeNames` en todos los archivos de dibujo de la ventana. |
| `void ShowCode(Func<string, bool> showThisCode)` | Llama a `showThisCode` con el nombre de cada código de la tabla de códigos. Muestra las entidades de los códigos para los que devuelve `true` y oculta las de los demás, en todos los archivos de dibujo de la ventana. |

## Ejemplo

Esta orden pide al usuario uno o varios códigos y deja visibles en la ventana de dibujo solo las entidades de esos códigos:

```csharp
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "MUESTRA_SOLO_CODIGOS")]
public class MuestraSoloCodigos : Command
{
    public MuestraSoloCodigos()
    {
        Initialize += (sender, e) =>
        {
            var seleccionados = DigiNG.Codes.DlgSelectCodes("Códigos que se muestran", true);

            if (seleccionados.Length > 0)
            {
                var nombres = seleccionados.Select(código => código.Name).ToHashSet();
                DigiNG.Codes.ShowCode(nombre => nombres.Contains(nombre));
            }

            Dispose();
        };
    }
}
```
