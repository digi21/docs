# FinishTransaction
<!-- id: finishtransaction -->
<!-- origen: ac56a8307a80d96d1f37772331296e5d84464fe1 -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Closes the most recent open transaction on the active drawing window's undo stack. A static method of [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/).

```csharp
public static void FinishTransaction()
```

## Exceptions

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | No drawing window is open. |

## Remarks

On closing, the transaction becomes the last closed transaction: the next [UNDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/undo.md) command or `DigiNG.Undo()` call undoes its changes. A transaction without changes is discarded. If no transaction is open, the call closes nothing.

If automatic vertex insertion at intersections when finishing a line is enabled, before closing the transaction Digi3D.AI inserts vertices into lines intersecting those added in the transaction.

A command does not need to call this method: Digi3D.AI closes the transaction when the command ends. Use this method in two cases:

- To close a transaction opened through [NewTransaction](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/newtransaction.md)`(false)`.
- To modify the drawing file from code running outside a command, for example a panel button handler. If the code does not open and close a transaction, changes remain in an open transaction that `UNDO` does not undo. The code opens a transaction through `NewTransaction(false)` before the changes and closes it through `FinishTransaction()` afterward.

See "Undo transactions" in [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) for how transactions work.

## Example

This method deletes entities from a panel button handler, outside any command. The deletion belongs to a closed transaction that the user undoes through `UNDO`:

```csharp
using Digi21.DigiNG;
using Digi21.DigiNG.Entities;

namespace Ejemplos;

public static class AccionesPanel
{
    public static void EliminaEntidades(IEnumerable<Entity> entidades)
    {
        DigiNG.NewTransaction(false);
        try
        {
            DigiNG.DrawingFile.Delete(entidades);
        }
        finally
        {
            DigiNG.FinishTransaction();
        }
    }
}
```
