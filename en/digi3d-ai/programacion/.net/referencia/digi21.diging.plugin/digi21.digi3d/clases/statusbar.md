# StatusBar
<!-- id: statusbar -->
<!-- origen: 6cbecec6a8b71d4f7d2e791c09072538edee7af9 -->

Namespace: `Digi21.Digi3D`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Status bar of Digi3D.AI's main window: its text and progress bar.

```csharp
public class StatusBar
```

The class has no public constructors. Obtain the instance through [Digi3D.StatusBar](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md).

## Properties

| Property | Description |
| :--- | :--- |
| `string Text { set; }` | Writes text to the status bar. Commands use it to tell the user what to do, for example "Select the boundary line". An empty string displays the application's idle message. If the user has enabled the **Text-to-Speech in the toolbar** configuration option, Digi3D.AI speaks the text through [Digi3D.SynthesizeVoice](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md). From a thread other than the user interface thread, Digi3D.AI sends the text to that thread. |
| `Progress ProgressBar { get; }` | Status bar's [progress bar](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/progress.md). Always returns the same instance. |

## Example

The [Progress](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/progress.md) example uses `Text` and `ProgressBar`.
