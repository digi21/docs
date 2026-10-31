# Codes
<!-- id: codes-3 -->
<!-- origen: be9daf73d3a4ec8feb061aedf2ffe304075ff091 -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Drawing window's active codes, code selection dialogs and code visibility in the drawing window.

```csharp
public class Codes
```

The class has no public constructors. Obtain the object through the static [DigiNG.Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) property, which throws `NullReferenceException` if no drawing window is open. While the active drawing window is closing (for example, inside a `DestroyingWindow` handler or a command's `Disposing` event), the window no longer has a document, and methods using the document throw `NullReferenceException`. The object is bound to the drawing window active when `DigiNG.Codes` is read: when that window closes, all members throw `ObjectDisposedException`.

Codes are represented by the [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/) structure. Methods find each code by name in the drawing window's [code table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/).

## Properties

| Property | Description |
| :--- | :--- |
| `IEnumerable<Code> ActiveCodes` | Active codes: codes used to digitize new entities. The `get` accessor returns a new array; each `Code` includes `Table` and `Id` if the active code has a database table and identifier assigned, and only `Name` otherwise. The `set` accessor replaces the active codes with those in the enumeration, including their `Table` and `Id` if present. |

## Methods

| Method | Description |
| :--- | :--- |
| `Code[] DlgSelectCodes(string title, bool allowMultipleCodes)` | Displays the code search dialog with title `title` and returns the codes selected by the user, with `Name` only. With `allowMultipleCodes` set to `false`, the user can select only one code. |
| `int SelectCodeFromList(string title, Code[] listOfCodes)` | Displays a dialog with title `title` and the codes in `listOfCodes`. Returns the selected code's index in `listOfCodes`, or `-1` if the user selects none. |
| `void ShowCode(string codeName, bool visible)` | Shows (`visible` set to `true`) or hides entities with code `codeName` in all drawing files in the window. |
| `void ShowCode(IEnumerable<string> codeNames, bool visible)` | Shows or hides entities for each code in `codeNames` in all drawing files in the window. |
| `void ShowCode(Func<string, bool> showThisCode)` | Calls `showThisCode` with each code name in the code table. Shows entities for codes returning `true` and hides all others, in all drawing files in the window. |

## Example

This command asks the user for one or more codes and leaves only entities with those codes visible in the drawing window:

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
