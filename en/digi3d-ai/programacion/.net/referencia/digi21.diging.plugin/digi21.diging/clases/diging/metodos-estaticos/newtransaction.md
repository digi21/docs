# NewTransaction
<!-- id: newtransaction -->
<!-- origen: 0f2681a05611b49f022aec50d1f9cc41ba50c590 -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Opens a new transaction on the active drawing window's undo stack. A static method of [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/).

```csharp
public static void NewTransaction(bool finishCurrentTransaction = true)
```

The parameter is optional: the C# compiler converts `NewTransaction()` to `NewTransaction(true)`.

## Parameters

| Parameter | Description |
| :--- | :--- |
| `finishCurrentTransaction` | `true` to close the most recent open transaction before opening the new one, as [FinishTransaction](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/finishtransaction.md) does. `false` to open the new transaction inside the open one. |

## Exceptions

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | No drawing window is open. |

## Remarks

See "Undo transactions" in [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) for how transactions work. In brief: Digi3D.AI opens a transaction when executing a command and closes the most recent open transaction when the command ends; [UNDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/undo.md) undoes the last closed transaction at once.

`NewTransaction(true)` divides a command's changes into several transactions. If a command deletes two entities and calls `NewTransaction(true)` before each deletion, the stack ends up as follows:

1. The transaction Digi3D.AI opened when executing the command closes on the first call. It has no changes, so it is discarded.
2. The transaction opened by the first call receives the first deletion and closes on the second call.
3. The transaction opened by the second call receives the second deletion and closes when the command ends.

The user must execute `UNDO` twice to recover both entities.

`NewTransaction(false)` opens a transaction inside the open one. Each call with `false` must be closed with a call to `FinishTransaction`. If the inner transaction is not closed, the closing Digi3D.AI performs when the command ends closes the inner transaction, leaving the command's transaction open: its changes cannot be undone until the next closing.

With `true`, closing the transaction includes the process described in [FinishTransaction](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/finishtransaction.md).

## Example

This command deletes points from the active drawing file, each in its own transaction. Each `UNDO` recovers one point:

```csharp
using Digi21.DigiNG;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "ELIMINA_PUNTOS_UNO_A_UNO")]
public class EliminaPuntosUnoAUno : Command
{
    public EliminaPuntosUnoAUno()
    {
        Initialize += (sender, e) =>
        {
            var puntos = DigiNG.DrawingFile
                .OfType<ReadOnlyPoint>()
                .Where(punto => !punto.Deleted)
                .ToList();

            foreach (var punto in puntos)
            {
                DigiNG.NewTransaction(true);
                DigiNG.DrawingFile.Delete(punto);
            }

            Dispose();
        };
    }
}
```
