# FinishTransaction
<!-- id: finishtransaction -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Cierra la transacción abierta más reciente en la pila de deshacer de la ventana de dibujo activa. Es un método estático de la clase [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/).

```csharp
public static void FinishTransaction()
```

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | No hay ninguna ventana de dibujo abierta. |

## Observaciones

Al cerrarse, la transacción pasa a ser la última transacción cerrada: la siguiente orden [UNDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/undo.md) o llamada a `DigiNG.Undo()` deshace sus cambios. Una transacción sin cambios se descarta. Si no hay ninguna transacción abierta, la llamada no cierra nada.

Si está activada la inserción automática de vértices en las intersecciones al finalizar una línea, antes de cerrar la transacción Digi3D.AI inserta vértices en las líneas que cortan a las líneas añadidas en la transacción.

Una orden no necesita llamar a este método: Digi3D.AI cierra la transacción cuando la orden termina. Este método se usa en dos casos:

- Para cerrar una transacción abierta con [NewTransaction](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/newtransaction.md)`(false)`.
- Para modificar el archivo de dibujo desde código que se ejecuta fuera de una orden, por ejemplo el manejador de un botón de un panel. Sin transacción, esos cambios quedan en una transacción abierta que `UNDO` no deshace. El código abre una transacción con `NewTransaction(false)` antes de los cambios y la cierra con `FinishTransaction()` después.

El funcionamiento de las transacciones se explica en el apartado «Transacciones de deshacer» de [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/).

## Ejemplo

Este método elimina entidades desde el manejador de un botón de un panel, fuera de cualquier orden. La eliminación queda en una transacción cerrada que el usuario deshace con `UNDO`:

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
