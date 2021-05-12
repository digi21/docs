# DigiNG

Espacio de nombres: [Digi21.DigiNG.Plugin](../../../)  
Ensamblado: [Digi21.DigiNG](../../../../digi21.diging/)

Esta clase estática permite interactuar con la ventana de dibujo de Digi3D.NET.

```csharp
public static class DigiNG
```

## Eventos

|  |  |
| :--- | :--- |
| AddingEntity |  |
| DestroyingWindow |  |
| EntityAdded |  |
| EntityDeleted |  |
| PostRender |  |
| PreRender |  |
| WindowCreated |  |

## Propiedades

|  |  |
| :--- | :--- |
| ActiveParameters |  |
| Camera |  |
| Codes |  |
| Commands |  |
| DeviceContextHandle |  |
| DigiTab |  |
| DrawingFile |  |
| GeographicCalculator |  |
| InputDeviceOptions |  |
| LicenseInfo |  |
| LockUndo |  |
| ReferenceFiles |  |
| RenderContextHandle |  |
| VisualizationOptions |  |
| WindowSize |  |
| Wkt |  |

## Métodos estáticos

|  |  |
| :--- | :--- |
| AnimateEntity\(Entity\) |  |
| AnimateEntity\(IEnumerable\) |  |
| AnimateEntity\(Entity, int\) |  |
| AnimateEntity\(IEnumerable, int\) |  |
| DeanimateAll\(\) |  |
| DeanimateEntity\(Entity\) |  |
| DeanimateEntity\(IEnumerable\) |  |
| DrawEntity\(Entity\) |  |
| DrawEntity\(IEnumerable\) |  |
| DrawEntity\(Entity, DrawingMode\) |  |
| DrawEntity\(Entity, bool\) |  |
| DrawEntity\(IEnumerable, DrawingMode\) |  |
| DrawEntity\(IEnumerable, bool\) |  |
| DrawEntity\(Entity, bool, DrawingMode\) |  |
| DrawEntity\(Entity, bool, bool\) |  |
| DrawEntity\(IEnumerable, bool, DrawingMode\) |  |
| DrawEntity\(IEnumerable, bool, bool\) |  |
| DrawEntity\(Entity, bool, bool, DrawingMode\) |  |
| DrawEntity\(Entity, bool, bool, bool\) |  |
| DrawEntity\(IEnumerable, bool, bool, DrawingMode\) |  |
| DrawEntity\(IEnumerable, bool, bool, bool\) |  |
| DrawEntity\(Entity, bool, bool, bool, DrawingMode\) |  |
| DrawEntity\(IEnumerable, bool, bool, bool, DrawingMode\) |  |
| [FinishTransaction\(\)](metodos-estaticos/finishtransaction.md) |  |
| GetResultPythonExpression\(Entity, string\) |  |
| [NewTransaction\(bool\)](metodos-estaticos/newtransaction.md) |  |
| RenderScene\(\) |  |
| SelectByPythonExpression\(IEnumerable, string\) |  |
| SelectEntity\(Point3D\) |  |
| SelectEntity\(Point3D, Func\) |  |
| SendInputDeviceEvent\(Point3D, InputDeviceButton\) |  |
| SetVisible\(Entity, bool\) |  |
| Undo\(\) |  |

