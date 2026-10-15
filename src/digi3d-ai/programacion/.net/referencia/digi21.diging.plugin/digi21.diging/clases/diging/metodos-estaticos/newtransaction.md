# NewTransaction
<!-- id: newtransaction -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Abre una transacción nueva en la pila de deshacer de la ventana de dibujo activa. Es un método estático de la clase [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/).

```csharp
public static void NewTransaction(bool finishCurrentTransaction = true)
```

El parámetro es opcional: el compilador de C# convierte `NewTransaction()` en `NewTransaction(true)`.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `finishCurrentTransaction` | `true` para cerrar la transacción abierta más reciente antes de abrir la nueva, como hace [FinishTransaction](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/finishtransaction.md). `false` para abrir la nueva transacción dentro de la que está abierta. |

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | No hay ninguna ventana de dibujo abierta. |

## Observaciones

El funcionamiento de las transacciones se explica en el apartado «Transacciones de deshacer» de [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/). En resumen: Digi3D.AI abre una transacción al ejecutar una orden y cierra la transacción abierta más reciente cuando la orden termina; la orden [UNDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/undo.md) deshace de una vez la última transacción cerrada.

`NewTransaction(true)` divide los cambios de una orden en varias transacciones. Si una orden elimina dos entidades y llama a `NewTransaction(true)` antes de cada eliminación, la pila queda así:

1. La transacción que abrió Digi3D.AI al ejecutar la orden se cierra en la primera llamada. No tiene cambios, así que se descarta.
2. La transacción que abre la primera llamada recibe la primera eliminación y se cierra en la segunda llamada.
3. La transacción que abre la segunda llamada recibe la segunda eliminación y se cierra cuando la orden termina.

El usuario tiene que ejecutar `UNDO` dos veces para recuperar las dos entidades.

`NewTransaction(false)` abre una transacción dentro de la que está abierta. Cada llamada con `false` se cierra con una llamada a `FinishTransaction`. Si la transacción interior no se cierra, el cierre que hace Digi3D.AI al terminar la orden cierra la transacción interior, y la transacción de la orden queda abierta: sus cambios no se deshacen hasta el siguiente cierre.

Con `true`, el cierre de la transacción incluye el proceso que describe [FinishTransaction](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/finishtransaction.md).

## Ejemplo

Esta orden elimina los puntos del archivo de dibujo activo, cada punto en su propia transacción. Cada `UNDO` recupera un punto:

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
