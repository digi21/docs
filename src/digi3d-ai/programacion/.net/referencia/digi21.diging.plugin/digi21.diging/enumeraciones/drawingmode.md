# DrawingMode
<!-- id: drawingmode -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Modo en que [DigiNG.DrawEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) dibuja una entidad en la ventana de dibujo.

```csharp
public enum DrawingMode
```

## Valores

| Valor | Número | Descripción |
| :--- | :--- | :--- |
| `Draw` | 0 | Dibuja la entidad con su color. |
| `Hide` | 1 | Borra la entidad de la pantalla. La entidad sigue en el archivo de dibujo y vuelve a verse en la siguiente regeneración de la ventana. |
| `Xor` | 2 | Dibuja la entidad con el operador XOR. Dibujar dos veces la misma entidad con `Xor` deja la pantalla como estaba. |

`DrawEntity` trata cualquier valor distinto de `Draw` y `Hide` como `Xor`.

## Ejemplo

Esta orden borra de la pantalla los textos del archivo de dibujo activo sin eliminarlos del archivo. Los textos vuelven a verse en la siguiente regeneración de la ventana de dibujo:

```csharp
using Digi21.DigiNG;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "BORRA_TEXTOS_DE_PANTALLA")]
public class BorraTextosDePantalla : Command
{
    public BorraTextosDePantalla()
    {
        Initialize += (sender, e) =>
        {
            var textos = DigiNG.DrawingFile
                .OfType<ReadOnlyText>()
                .Where(texto => !texto.Deleted)
                .ToList<Entity>();

            DigiNG.DrawEntity(textos, DrawingMode.Hide);
            Dispose();
        };
    }
}
```
