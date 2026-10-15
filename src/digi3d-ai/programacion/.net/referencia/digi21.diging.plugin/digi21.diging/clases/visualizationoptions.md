# VisualizationOptions
<!-- id: visualizationoptions -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Opciones de visualización de la ventana de dibujo: color de fondo, tamaño del cursor, relleno, sombreados, entidades eliminadas, patrones, escala de dibujo y solape.

```csharp
public sealed class VisualizationOptions
```

La clase no tiene constructores públicos. El objeto se obtiene con la propiedad estática [DigiNG.VisualizationOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), que devuelve `null` si no hay ninguna ventana de dibujo abierta. El objeto queda ligado a la ventana de dibujo activa en el momento de obtenerlo: cuando esa ventana se cierra, todas las propiedades lanzan `ObjectDisposedException`.

Las propiedades con ámbito «Aplicación» leen y escriben variables de Digi3D.AI, que comparten todas las ventanas de dibujo. Las propiedades con ámbito «Ventana» son de la ventana de dibujo.

## Propiedades

| Propiedad | Ámbito | Descripción |
| :--- | :--- | :--- |
| `Color BackgroundColor` | Ventana | Color de fondo de la ventana de dibujo. El descriptor `get` devuelve un color opaco; el descriptor `set` usa los componentes rojo, verde y azul e ignora el canal alfa. |
| `int CursorSize` | Ventana | Tamaño del cursor, el que asigna la orden [CURSOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cursor.md). |
| `bool ShowFillInPolygons` | Ventana | Relleno de las entidades cerradas, el que activa la variable [RELLENAR](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/rellenar.md). |
| `bool EnableShadows` | Ventana | Dibujo de los sombreados. Al asignarla, Digi3D.AI regenera la ventana de dibujo. |
| `bool ShowDeletedEntities` | Ventana | Visualización de las entidades eliminadas desde la última compresión del archivo, la que activa la variable [BORRADOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md). |
| `bool ShowPattern` | Ventana | Visualización de los patrones de línea, la que activa la variable [PATRON](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/patron.md). |
| `double DrawingScale` | Aplicación | Variable [ESCALA_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md): escala con la que se representan los patrones en pantalla. Si la variable no está definida, devuelve 1000. |
| `bool ShowPatternInPhotogrammetricWindow` | Aplicación | Variable [PATRONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/patrons.md): visualización de los patrones de línea en la ventana fotogramétrica. Si la variable no está definida, devuelve `false`. |
| `double Overlap` | Aplicación | Variable [SOLAPE](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/solape.md): porcentaje de solape que usan las órdenes de desplazamiento de la ventana. Si la variable no está definida, devuelve 10. |

Al asignar `ShowFillInPolygons` o `ShowPattern`, la ventana de dibujo no se regenera: el cambio se ve en la siguiente regeneración, por ejemplo después de llamar a `DigiNG.RenderScene()`.

## Ejemplo

Esta orden activa o desactiva el relleno de las entidades cerradas y regenera la ventana de dibujo:

```csharp
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "ALTERNA_RELLENO")]
public class AlternaRelleno : Command
{
    public AlternaRelleno()
    {
        Initialize += (sender, e) =>
        {
            var opciones = DigiNG.VisualizationOptions;
            opciones.ShowFillInPolygons = !opciones.ShowFillInPolygons;

            DigiNG.RenderScene();
            Dispose();
        };
    }
}
```
