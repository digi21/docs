# Constructors
<!-- id: constructores-2 -->
<!-- origen: ddfe5145e68c4a7ecf7c88daff2b93657c5e1df9 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Create an [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).

## Overloads

| Constructor | Description |
| :--- | :--- |
| `OrthographicCamera()` | Camera with an empty `Name` and all other properties set to 0. |
| `OrthographicCamera(string name)` | Camera with the specified name and all other properties set to 0. |
| `OrthographicCamera(IWindow3D window)` | Camera encompassing the specified window, without rotations. |
| `OrthographicCamera(string name, IWindow3D window)` | Creates a camera encompassing the specified window, without rotations and with the specified name. |
| `OrthographicCamera(IWindow3D window, float yaw, float pitch, float roll)` | Camera encompassing the specified window, with rotations. |
| `OrthographicCamera(string name, IWindow3D window, float yaw, float pitch, float roll)` | Creates a camera encompassing the specified window, with the specified rotations and name. |

## OrthographicCamera()

```csharp
public OrthographicCamera()
```

`Name` is an empty string, `Position` is `(0, 0, 0)`, and all other properties are 0.

## OrthographicCamera(string)

```csharp
public OrthographicCamera(string name)
```

| Parameter | Description |
| :--- | :--- |
| `name` | Value of `Name`. |

`Position` is `(0, 0, 0)` and all other properties are 0.

## OrthographicCamera(IWindow3D)

```csharp
public OrthographicCamera(IWindow3D window)
```

| Parameter | Description |
| :--- | :--- |
| `window` | [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) to be encompassed by the view, such as a drawing file or entity. |

Assigns these values:

| Property | Value |
| :--- | :--- |
| `Name` | Empty string. |
| `Position` | `window.Center`. |
| `Left`, `Right` | `window.Xmin` and `window.Xmax`. |
| `Bottom`, `Top` | `window.Ymin` and `window.Ymax`. |
| `Near`, `Far` | `window.Zmax` and `window.Zmin`. |
| `Pitch`, `Yaw`, `Roll` | 0: top view with north up. |

## OrthographicCamera(string, IWindow3D)

```csharp
public OrthographicCamera(string name, IWindow3D window)
```

| Parameter | Description |
| :--- | :--- |
| `name` | Value of `Name`. |
| `window` | [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) to be encompassed by the view. |

Assigns the same values as `OrthographicCamera(IWindow3D)`, except for `Name`.

## OrthographicCamera(IWindow3D, float, float, float)

```csharp
public OrthographicCamera(IWindow3D window, float yaw, float pitch, float roll)
```

| Parameter | Description |
| :--- | :--- |
| `window` | [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) to be encompassed by the view. |
| `yaw` | Value of `Yaw`, in degrees. |
| `pitch` | Value of `Pitch`, in degrees. |
| `roll` | Value of `Roll`, in degrees. |

Assigns the same values as `OrthographicCamera(IWindow3D)`, except for rotations. The first angle is `yaw` (rotation around the Z axis), not `pitch`.

## OrthographicCamera(string, IWindow3D, float, float, float)

```csharp
public OrthographicCamera(string name, IWindow3D window, float yaw, float pitch, float roll)
```

| Parameter | Description |
| :--- | :--- |
| `name` | Value of `Name`. |
| `window` | [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) to be encompassed by the view. |
| `yaw` | Value of `Yaw`, in degrees. |
| `pitch` | Value of `Pitch`, in degrees. |
| `roll` | Value of `Roll`, in degrees. |

Assigns the same values as `OrthographicCamera(IWindow3D)`, except for `Name` and rotations.

## Exceptions

Constructors that take `window` throw:

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | `window` is `null`. |
| `InvalidOperationException` | `window.Xmin` is `null`: the window has no minimum and maximum coordinates (`Valid` is `false`), for example a drawing file without entities. |
