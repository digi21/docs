# Digi3D
<!-- id: digi3d-3 -->
<!-- origen: a86b7c04dc2e2b9f6dd3b9cef924a67f818e028a -->

Namespace: `Digi21.Digi3D`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Static class providing access to Digi3D.AI's main window: results window, task panel, status bar, docking panes, sounds, synthesized speech and notification balloons.

```csharp
public static class Digi3D
```

The class has the same name as its namespace. With `using Digi21.Digi3D;`, the name `Digi3D` refers to the class, as in `Digi3D.OutputWindow`.

Digi3D.AI initializes the class on startup. In a program running outside Digi3D.AI (for example, a console application), `Panes`, `Tasks`, `OutputWindow` and `StatusBar` return `null`; `EnableSounds`, `Music`, `SynthesizeVoice` and `ShowBallon` throw `NullReferenceException`; and `BackgroundColor`, `ForegroundColor` and `CommandLine` access a null native-code pointer.

## Properties

| Property | Description |
| :--- | :--- |
| `static OutputWindow OutputWindow { get; }` | Digi3D.AI's [results window](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/outputwindow.md). |
| `static Tasks Tasks { get; }` | Digi3D.AI's [task panel](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md). |
| `static StatusBar StatusBar { get; }` | Main window's [status bar](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/statusbar.md). |
| `static Panes Panes { get; }` | [Docking panes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/panes.md) added by extensions. |
| `static bool EnableSounds { get; set; }` | Enables or disables Digi3D.AI sounds. This is the variable checked by `Music`: when `false`, `Music` plays nothing. |
| `static Color BackgroundColor { get; }` | Dialog background color in the user's chosen visual theme. Allows extension forms to use Digi3D.AI's colors. The alpha channel is always 255. |
| `static Color ForegroundColor { get; }` | Dialog text color in the user's chosen visual theme. The alpha channel is always 255. |
| `static string CommandLine { get; }` | Command-line parameters used to launch Digi3D.AI, without the executable name. |

## Static methods

| Method | Description |
| :--- | :--- |
| `static void Music(MusicType music)` | Plays the sound specified by [MusicType](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/enumeraciones/musictype.md). Plays nothing if `EnableSounds` is `false`. Depending on Digi3D.AI's settings, the sound is a beep from the computer speaker or the sound file assigned by the user to that type. A value outside the enumeration plays the `MusicType.Error` sound. |
| `static void SynthesizeVoice(string text)` | Speaks `text` using the Windows speech synthesis engine. The method does not wait for speech to finish. If called several times while a sentence is being spoken, only the last text received is spoken after that sentence ends. |
| `static void ShowBallon(string title, string description, int seconds)` | Displays a notification balloon without an icon, with title `title` and text `description`, for `seconds` seconds. |
| `static void ShowBallon(string title, string description, int seconds, BallonIcon icon)` | Displays a notification balloon with the icon specified by [BallonIcon](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/enumeraciones/ballonicon.md). A value outside the enumeration displays the `BallonIcon.Warning` icon. |

## Example

This command writes the theme colors and Digi3D.AI startup parameters to the results window, plays the end-of-command sound and displays a balloon for 3 seconds:

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
