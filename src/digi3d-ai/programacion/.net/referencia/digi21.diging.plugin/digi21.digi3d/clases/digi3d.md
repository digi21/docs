# Digi3D
<!-- id: digi3d-3 -->

Espacio de nombres: `Digi21.Digi3D`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Clase estática con los puntos de acceso a la ventana principal de Digi3D.AI: ventana de resultados, panel de tareas, barra de estado, paneles acoplables, sonidos, voz sintetizada y globos de notificación.

```csharp
public static class Digi3D
```

La clase tiene el mismo nombre que su espacio de nombres. Con `using Digi21.Digi3D;`, el nombre `Digi3D` se refiere a la clase, como en `Digi3D.OutputWindow`.

Digi3D.AI inicializa la clase al arrancar. En un programa que no se ejecuta dentro de Digi3D.AI (por ejemplo, una aplicación de consola), `Panes`, `Tasks`, `OutputWindow` y `StatusBar` devuelven `null`, `EnableSounds`, `Music`, `SynthesizeVoice` y `ShowBallon` lanzan `NullReferenceException`, y `BackgroundColor`, `ForegroundColor` y `CommandLine` acceden a un puntero nulo de código nativo.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `static OutputWindow OutputWindow { get; }` | [Ventana de resultados](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/outputwindow.md) de Digi3D.AI. |
| `static Tasks Tasks { get; }` | [Panel de tareas](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md) de Digi3D.AI. |
| `static StatusBar StatusBar { get; }` | [Barra de estado](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/statusbar.md) de la ventana principal. |
| `static Panes Panes { get; }` | [Paneles acoplables](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/panes.md) que añaden las extensiones. |
| `static bool EnableSounds { get; set; }` | Activa o desactiva los sonidos de Digi3D.AI. Es la variable que consulta el método `Music`: con `false`, `Music` no reproduce nada. |
| `static Color BackgroundColor { get; }` | Color de fondo de los cuadros de diálogo en el tema visual que ha elegido el usuario. Sirve para que los formularios de la extensión tengan los colores de Digi3D.AI. El canal alfa vale siempre 255. |
| `static Color ForegroundColor { get; }` | Color del texto de los cuadros de diálogo en el tema visual que ha elegido el usuario. El canal alfa vale siempre 255. |
| `static string CommandLine { get; }` | Parámetros de la línea de comandos con los que se ha ejecutado Digi3D.AI, sin el nombre del ejecutable. |

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| `static void Music(MusicType music)` | Reproduce el sonido indicado por [MusicType](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/enumeraciones/musictype.md). No reproduce nada si `EnableSounds` vale `false`. Según la configuración de Digi3D.AI, el sonido es un pitido del altavoz del equipo o el archivo de sonido que el usuario ha asignado a ese tipo. Un valor que no pertenece a la enumeración reproduce el sonido de `MusicType.Error`. |
| `static void SynthesizeVoice(string text)` | Pronuncia `text` con el motor de síntesis de voz de Windows. El método no espera a que termine la locución. Si se llama varias veces mientras se pronuncia una frase, al terminar esa frase se pronuncia solo el último texto recibido. |
| `static void ShowBallon(string title, string description, int seconds)` | Muestra un globo de notificación sin icono, con el título `title` y el texto `description`, durante `seconds` segundos. |
| `static void ShowBallon(string title, string description, int seconds, BallonIcon icon)` | Muestra un globo de notificación con el icono indicado por [BallonIcon](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/enumeraciones/ballonicon.md). Un valor que no pertenece a la enumeración muestra el icono de `BallonIcon.Warning`. |

## Ejemplo

Esta orden escribe en la ventana de resultados los colores del tema y los parámetros de arranque de Digi3D.AI, reproduce el sonido de fin de orden y muestra un globo durante 3 segundos:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "INFO_DIGI3D")]
public class InfoDigi3D : Command
{
    public InfoDigi3D()
    {
        Initialize += (sender, e) =>
        {
            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Parámetros de arranque: {Digi3D.CommandLine}");
            Digi3D.OutputWindow.WriteLine($"Color de fondo: {Digi3D.BackgroundColor}");
            Digi3D.OutputWindow.WriteLine($"Color del texto: {Digi3D.ForegroundColor}");
            Digi3D.OutputWindow.WriteLine($"Sonidos activados: {Digi3D.EnableSounds}");

            Digi3D.Music(MusicType.EndOfLongProcess);
            Digi3D.ShowBallon(
                "INFO_DIGI3D",
                "Información escrita en la ventana de resultados.",
                3,
                BallonIcon.Information);

            Dispose();
        };
    }
}
```
