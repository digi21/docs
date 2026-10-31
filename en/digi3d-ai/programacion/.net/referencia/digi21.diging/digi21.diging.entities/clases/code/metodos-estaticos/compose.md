# Compose
<!-- id: compose -->
<!-- origen: fc073f0bc86124a23a5d339d2925e842429c33ae -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Creates a code name by replacing characters in an existing name according to a wildcard pattern.

```csharp
public static string Compose(string stringToCompose, string wildCard)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `stringToCompose` | Starting code name. |
| `wildCard` | Pattern. Each character other than `?` replaces the character at the same position in `stringToCompose`; `?` preserves the character; `*` ends replacement. |

## Return value

A string of the same length as `stringToCompose`, with characters replaced.

| `stringToCompose` | `wildCard` | Result |
| :--- | :--- | :--- |
| `060400` | `07*` | `070400` |
| `060400` | `??05*` | `060500` |
| `060400` | `??????` | `060400` |

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentOutOfRangeException` | Before the first `*`, `wildCard` has more characters than `stringToCompose`. |
| `NullReferenceException` | `wildCard` is `null`. |

## Example

If codes starting with `06` represent buildings under construction and those starting with `07` represent the same buildings once completed, this excerpt obtains the completed building's code:

```csharp
var enConstrucción = "060400";
var terminado = Code.Compose(enConstrucción, "07*");
Console.WriteLine(terminado); // 070400
```
