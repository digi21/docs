# Command

Espacio de nombres: [Digi21.DigiNG.Plugin](../../)  
Ensamblado: [Digi21.DigiNG](../../../digi21.diging/)

Esta clase abstracta sirve como base de órdenes de Digi3D.NET.

```text
public abstract class Command : ICommand, IDisposable
```

## Constructores

|  |  |
| :--- | :--- |
| Command\(\) |  |

## Eventos

|  |  |
| :--- | :--- |
| DataDown |  |
| DataUp |  |
| Disposing |  |
| EntitySelected |  |
| Initialize |  |
| LostFocus |  |
| Move |  |
| ResetDown |  |
| ResetUp |  |
| SetFocus |  |
| SnapDown |  |
| SnapUp |  |

## Propiedades

|  |  |
| :--- | :--- |
| Args |  |
| AllowRepeat |  |

## Métodos

|  |  |
| :--- | :--- |
| Dispose |  |
| OnDataDown\(Point3D\) |  |
| OnDataUp\(Point3D\) |  |
| OnEntitySelected\(Entity, Point3D, int, int\) |  |
| OnInitialize\(\) |  |
| OnLostFocus\(\) |  |
| OnMove\(Point3D , InputDeviceButtonbutton\) |  |
| OnResetDown\(Point3D\) |  |
| OnResetUp\(Point3D\) |  |
| OnSetFocus\(\) |  |
| OnSnapDown\(Point3D\) |  |
| OnSnapUp\(Point3D\) |  |

