# Digi21.DigiNG
<!-- id: digi21.diging-2 -->
<!-- origen: c63b0550b94bef7193f3a3b172762d474df3c994 -->

Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Types allowing an extension to work with Digi3D.AI's drawing window: active drawing file, command and undo stacks, codes, digitizing and display options, and entity addition and deletion events. The entry point is the static [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) class. These types only work inside Digi3D.AI.

## Classes

| Class | Description |
| :--- | :--- |
| [ActiveParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/activeparameters.md) | Active angle, active distances, text height, contour interval and active scale. |
| [AddingEntityEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/addingentityeventargs.md) | Arguments for `DigiNG.AddingEntity`, raised before saving an entity and allowing it to be discarded. |
| [Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/codes.md) | Active codes, code selection dialogs and code visibility. |
| [Commands](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md) | Command stack: command execution, active command and repetition. |
| [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) | Static class providing access to the active drawing window. |
| [DigitizingLineOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/digitizinglineoptions.md) | Static class with options applied to digitized lines. |
| [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md) | Drawing file loaded in a drawing window. |
| [EntityEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/entityeventargs.md) | Arguments for `DigiNG.EntityAdded`, `DigiNG.EntityDeleted` and `DigiNG.EntityRecovered`. |
| [GeographicCalculator](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/geographiccalculator.md) | Areas, perimeters and distances according to the drawing window's coordinate reference system. |
| [InputDeviceOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/inputdeviceoptions.md) | Input device, cursor position, coordinate locks and automatic panning. |
| [LicenseInfo](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/licenseinfo.md) | Dongle identifier. |
| [SnappingOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/snappingoptions.md) | Static class with snapping options. |
| [VisualizationOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/visualizationoptions.md) | Drawing window display options. |

## Enumerations

| Enumeration | Description |
| :--- | :--- |
| [DrawingMode](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/drawingmode.md) | Mode used by `DigiNG.DrawEntity` to draw an entity. |
| [InputDevice](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevice.md) | Drawing window's input device. |
| [InputDeviceButton](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevicebutton.md) | Input device button. |
