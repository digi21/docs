# DigiNG
<!-- id: diging-2 -->
<!-- origen: 35f184560670da6fc2aab5e8eab5cb893a8313ca -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Static class providing access to Digi3D.AI's active drawing window: its drawing file, options, undo stack, entity selection and drawing, and entity addition and deletion events. Works only inside Digi3D.AI, from an extension (a command, search provider, dynamic property...).

```csharp
public static class DigiNG
```

## Active drawing window

`DigiNG` members operate on the active drawing window: the last drawing window to receive focus. Whenever a drawing window receives focus, `DigiNG` creates new objects for `Codes`, `Commands`, `ActiveParameters`, `InputDeviceOptions` and `VisualizationOptions`. An object obtained before focus changes remains bound to the drawing window where it was obtained; when that window closes, the object's members throw `ObjectDisposedException`.

If no drawing window is open:

| Members | Behavior |
| :--- | :--- |
| `DrawingFile`, `ReferenceFiles`, `DigiTab`, `Wkt`, `LockUndo`, `Camera`, `Commands`, `Codes`, `LicenseInfo`, `WindowSize`, `DeviceContextHandle`, `RenderContextHandle`, `Undo`, `NewTransaction`, `FinishTransaction`, `SelectEntity`, `Project`, `GetResultPythonExpression`, `SelectByPythonExpression`, `SendInputDeviceEvent`, `RenderScene`, `SetVisible`, `DrawEntity`, `AnimateEntity`, `DeanimateEntity`, `DeanimateAll`, `GeographicCalculator` | Throw `NullReferenceException`. |
| `ActiveParameters`, `InputDeviceOptions`, `VisualizationOptions` | Return `null`. |

While the active drawing window is closing (for example, inside a `DestroyingWindow` handler or a command's `Disposing` event), the window no longer has a document. Members using the document then throw `NullReferenceException`: `NewTransaction`, `FinishTransaction`, `LockUndo`, `Undo`, `Wkt`, `DigiTab`, `ReferenceFiles`, `SelectEntity`, `SetVisible`, `AnimateEntity`, `DeanimateEntity`, `DeanimateAll`, `GetResultPythonExpression` and `SelectByPythonExpression`, and members of [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md), [Commands](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md) and [Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/codes.md) that use the document.

Methods do not check whether arguments are `null`: a `null` argument causes `NullReferenceException`.

## Properties

| Property | Description |
| :--- | :--- |
| `DrawingFile DrawingFile` | Drawing window's active drawing file. See [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md). |
| `IReadOnlyDrawingFile[] ReferenceFiles` | Drawing files loaded in the drawing window, except the active file, as [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/). Each read creates a new array and objects. |
| `DigiTab DigiTab` | Drawing window's [code table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/). Each read creates a new object providing access to the same code table. |
| `string Wkt` | WKT of the drawing window's coordinate reference system. |
| `Codes Codes` | [Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/codes.md) object: active codes, code selection and code visibility. |
| `Commands Commands` | [Commands](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md) object: command stack. |
| `ActiveParameters ActiveParameters` | [ActiveParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/activeparameters.md) object: active angle, active distances, text height, contour interval and active scale. |
| `InputDeviceOptions InputDeviceOptions` | [InputDeviceOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/inputdeviceoptions.md) object: input device, cursor position and coordinate locks. |
| `VisualizationOptions VisualizationOptions` | [VisualizationOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/visualizationoptions.md) object: drawing window display options. |
| `GeographicCalculator GeographicCalculator` | [GeographicCalculator](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/geographiccalculator.md) object calculating areas, perimeters and distances according to the drawing window's coordinate reference system. Each read creates a new object. |
| `LicenseInfo LicenseInfo` | [LicenseInfo](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/licenseinfo.md) object with the dongle identifier. |
| `Camera Camera` | Drawing window's camera. See "Drawing window camera". |
| `bool LockUndo` | Undo mechanism lock. See "Undo transactions". |
| `Size WindowSize` | Drawing window's client area size, in pixels. |
| `IntPtr DeviceContextHandle` | `HDC` handle of the drawing window's Windows device context. |
| `IntPtr RenderContextHandle` | `HGLRC` handle of the drawing window's OpenGL rendering context. |

### Drawing window camera

The `Camera` `get` accessor returns a new object with the current camera: a [ConicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/) if the camera is conic, or an [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/) otherwise. Both copy `Name`, `Position`, `Pitch`, `Yaw` and `Roll` from the current camera. A conic camera also copies `FieldOfView`, `Near` and `Far`. For an orthographic camera, `Left` and `Right` are half the viewing volume's width with negative and positive signs; `Bottom` and `Top`, half its height; `Near` and `Far`, half its depth.

The `set` accessor applies the received camera to the drawing window. For an `OrthographicCamera`, it uses `Right - Left`, `Top - Bottom` and `Far - Near` as the viewing volume's width, height and depth; for a `ConicCamera`, it uses `FieldOfView`, `Near` and `Far`. It throws `Exception` for any other class derived from [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).

## Static methods

### Undo

| Method | Description |
| :--- | :--- |
| `bool Undo()` | Undoes the last closed transaction. Returns `false` if there is no closed transaction. A transaction that is still open is not undone. |
| [`void NewTransaction(bool finishCurrentTransaction = true)`](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/newtransaction.md) | Opens a new transaction on the undo stack. With `true`, closes the most recent open transaction before opening the new one. |
| [`void FinishTransaction()`](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/finishtransaction.md) | Closes the most recent open transaction. |

### Selection, projection and expressions

| Method | Description |
| :--- | :--- |
| `void SelectEntity(Point3D groundPoint)` | Runs the snap command and simulates a snap button press at `groundPoint`. If snapping finds an entity, the active command receives it in `OnEntitySelected` ([Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md)'s `EntitySelected` event). |
| `void SelectEntity(Point3D groundPoint, Func<Entity, bool> includeGeometry)` | Like the previous overload, but snapping only considers entities for which `includeGeometry` returns `true`. |
| `double? Project(Point3D groundPoint)` | Calculates the Z coordinate at the X, Y coordinates of `groundPoint` using the first file loaded in the drawing window that supports coordinate projection (for example, a digital terrain model). Returns `null` if no file returns a Z. The Z of `groundPoint` is unused. |
| `bool GetResultPythonExpression(Entity entity, string expression)` | Evaluates the Python expression `expression` with variable `g` assigned to the entity and returns the result converted to `bool`. If evaluation fails, Digi3D.AI displays the error in a message box and the method returns `false`. |
| `IEnumerable<Entity> SelectByPythonExpression(IEnumerable<Entity> entities, string expression)` | Evaluates the Python expression `expression` with each entity assigned to variable `g` and returns entities for which the result is `true`. If evaluation fails, Digi3D.AI displays the error in a message box. |
| `void SendInputDeviceEvent(Point3D worldCoordinates, InputDeviceButton button)` | Sends an input device event to the drawing window at ground coordinates `worldCoordinates` with `button` ([InputDeviceButton](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevicebutton.md)), as if the user had pressed that button at those coordinates. |

### Display

| Method | Description |
| :--- | :--- |
| `void RenderScene()` | Regenerates the drawing window. |
| `void SetVisible(Entity entity, bool visible)` | Marks the entity as hidden (`visible` set to `false`) or visible. The drawing window shows the change when regenerated. |
| `void DrawEntity(Entity entity)` and its overloads | Draws the entity in the drawing window without regenerating it. See the parameter table in this section. |
| `void AnimateEntity(Entity entity)`<br>`void AnimateEntity(IEnumerable<Entity> entities)` | Marks entities as selected: Digi3D.AI draws them animated until `DeanimateEntity` or `DeanimateAll` is called. An entity that is not in any drawing window file is ignored. |
| `void AnimateEntity(Entity entity, int seconds)`<br>`void AnimateEntity(IEnumerable<Entity> entities, int seconds)` | Draws entities animated for `seconds` seconds. |
| `void DeanimateEntity(Entity entity)`<br>`void DeanimateEntity(IEnumerable<Entity> entities)` | Removes the selected flag set by `AnimateEntity` without `seconds`. |
| `void DeanimateAll()` | Removes the selected flag from all entities in all drawing window files and regenerates the window. Does not affect entities animated with the overload accepting `seconds`. |

`DrawEntity` has 16 overloads: 8 accept an `Entity` and another 8 accept an `IEnumerable<Entity>` with the same parameters. The `IEnumerable<Entity>` overloads draw each entity in the enumeration. Parameters absent from an overload take their default values:

```csharp
public static void DrawEntity(Entity entity)
public static void DrawEntity(Entity entity, bool allowPattern)
public static void DrawEntity(Entity entity, bool drawInCadWindow, bool drawInPhotogrammetricWindow)
public static void DrawEntity(Entity entity, bool drawInCadWindow, bool drawInPhotogrammetricWindow, bool allowPattern)
public static void DrawEntity(Entity entity, DrawingMode mode)
public static void DrawEntity(Entity entity, bool allowPattern, DrawingMode mode)
public static void DrawEntity(Entity entity, bool drawInCadWindow, bool drawInPhotogrammetricWindow, DrawingMode mode)
public static void DrawEntity(Entity entity, bool drawInCadWindow, bool drawInPhotogrammetricWindow, bool allowPattern, DrawingMode mode)
```

| Parameter | Default value | Description |
| :--- | :--- | :--- |
| `bool drawInCadWindow` | `true` | Draws the entity in the drawing window. |
| `bool drawInPhotogrammetricWindow` | `true` | Draws the entity in the photogrammetric window. |
| `bool allowPattern` | `true` | Draws the entity using its code's line pattern. |
| `DrawingMode mode` | `Draw` | Drawing mode ([DrawingMode](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/drawingmode.md)): `Draw` draws the entity, `Hide` erases it from the screen and `Xor` draws it using XOR. |

## Undo transactions

Digi3D.AI groups drawing file changes into transactions. The [UNDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/undo.md) command and `Undo` method undo all changes in the last closed transaction at once.

- Executing a command makes Digi3D.AI open a transaction. When the command ends (for a .NET command, when `Dispose` is called), Digi3D.AI closes the most recent open transaction. Thus all changes from a command are undone with a single `UNDO`.
- Open transactions form a stack: each opening adds a transaction and each closing removes the most recent. Each change is stored in the most recent open transaction.
- A transaction closed without changes is discarded.
- A change made without an open transaction (for example, from a panel after the command ends) opens a transaction that remains open until the next closing. While that transaction remains open, `UNDO` does not undo it.

`LockUndo` locks the undo mechanism: while locked, executed commands do not open their own transactions (changes are stored in the open transaction) and `DrawingFile.Compress` does not compress the file. The property is a counter: assigning `true` increments it, assigning `false` decrements it if nonzero, and `get` returns `true` while the counter is nonzero. Each assignment of `true` must be balanced with one of `false`.

## Events

| Event | Description |
| :--- | :--- |
| `EventHandler<AddingEntityEventArgs> AddingEntity` | Raised before saving an entity added to the active drawing file, after quality checks. If a handler assigns `true` to `Cancel` ([AddingEntityEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/addingentityeventargs.md)), the entity is discarded. |
| `EventHandler<EntityEventArgs> EntityAdded` | Raised after saving an entity added to the active drawing file. Not raised if `AddingEntity` discarded the entity or the drawing file could not save it. |
| `EventHandler<EntityEventArgs> EntityDeleted` | Raised after deleting an entity from the active drawing file, including when undoing an entity addition. |
| `EventHandler<EntityEventArgs> EntityRecovered` | Raised after recovering a deleted entity, including when undoing an entity deletion. |
| `EventHandler<EventArgs> PreRender` | Raised at the start of drawing the drawing window, with the window's OpenGL context selected. The handler can draw using OpenGL. |
| `EventHandler<EventArgs> PostRender` | Raised at the end of drawing the drawing window, with the window's OpenGL context selected. |
| `EventHandler<EventArgs> WindowCreated` | Raised after creating a drawing window. During the event, `DigiNG` already refers to the new window. |
| `EventHandler<EventArgs> DestroyingWindow` | Raised when closing a drawing window. |

Event notes:

- Events are static: a handler remains subscribed after the command that subscribed it ends, until removed through `-=`. The `sender` argument is always `null`.
- `EntityAdded`, `EntityDeleted` and `EntityRecovered` pass the entity in the `Entity` property of [EntityEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/entityeventargs.md).
- `AddingEntity`, `EntityAdded`, `EntityDeleted` and `EntityRecovered` are raised for single-entity operations: `DrawingFile.Add(Entity)`, `DrawingFile.Delete(Entity)`, `DrawingFile.Undelete(Entity)`, commands digitizing or deleting entities individually, and undoing those operations. Bulk operations `DrawingFile.Add(IEnumerable<Entity>)` and `DrawingFile.Delete(IEnumerable<Entity>)` raise none of the four events. `DrawingFile.Undelete(IEnumerable<Entity>)` and undoing a bulk deletion raise `EntityRecovered` for each recovered entity.
- If an `AddingEntity`, `EntityAdded`, `EntityDeleted` or `EntityRecovered` handler throws an exception, Digi3D.AI displays the exception in a dialog; for `AddingEntity`, the entity is saved. Exceptions from `PreRender`, `PostRender`, `WindowCreated` and `DestroyingWindow` handlers are silently discarded.
- `DestroyingWindow` does not identify which window is closing. If the closing window is active, it already has no document during the event: `DigiNG` members using the document throw `NullReferenceException` (see "Active drawing window"), except `DrawingFile`, which returns the last instance if the file is still open.

## Example

This command animates closed lines in the active drawing file for 5 seconds and writes their count to the results window:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "ANIMA_LINEAS_CERRADAS")]
public class AnimaLineasCerradas : Command
{
    public AnimaLineasCerradas()
    {
        Initialize += (sender, e) =>
        {
            var cerradas = DigiNG.DrawingFile
                .OfType<ReadOnlyLine>()
                .Where(línea => !línea.Deleted && línea.Closed)
                .ToList<Entity>();

            DigiNG.AnimateEntity(cerradas, 5);

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Líneas cerradas: {cerradas.Count}");
            Dispose();
        };
    }
}
```

The command is compiled and loaded as explained in the [extension creation tutorial](/digi3d-ai/programacion/.net/tutorial-extension.md). More examples appear in [NewTransaction](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/newtransaction.md) (undo transactions), [AddingEntityEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/addingentityeventargs.md) (`AddingEntity` event) and [DrawingMode](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/drawingmode.md) (`DrawEntity`).
