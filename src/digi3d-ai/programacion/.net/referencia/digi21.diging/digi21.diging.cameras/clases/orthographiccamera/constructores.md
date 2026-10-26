# Constructores
<!-- id: constructores-2 -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Crean una [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).

## Sobrecargas

| Constructor | Descripción |
| :--- | :--- |
| `OrthographicCamera()` | Cámara con `Name` vacío y el resto de propiedades a 0. |
| `OrthographicCamera(string name)` | Cámara con el nombre indicado y el resto de propiedades a 0. |
| `OrthographicCamera(IWindow3D window)` | Cámara que abarca la ventana indicada, sin giros. |
| `OrthographicCamera(string name, IWindow3D window)` | Crea una cámara que abarca la ventana indicada, sin giros y con el nombre indicado. |
| `OrthographicCamera(IWindow3D window, float yaw, float pitch, float roll)` | Cámara que abarca la ventana indicada, con giros. |
| `OrthographicCamera(string name, IWindow3D window, float yaw, float pitch, float roll)` | Crea una cámara que abarca la ventana indicada, con los giros y el nombre indicados. |

## OrthographicCamera()

```csharp
public OrthographicCamera()
```

`Name` vale una cadena vacía, `Position` vale `(0, 0, 0)` y las demás propiedades valen 0.

## OrthographicCamera(string)

```csharp
public OrthographicCamera(string name)
```

| Parámetro | Descripción |
| :--- | :--- |
| `name` | Valor de `Name`. |

`Position` vale `(0, 0, 0)` y las demás propiedades valen 0.

## OrthographicCamera(IWindow3D)

```csharp
public OrthographicCamera(IWindow3D window)
```

| Parámetro | Descripción |
| :--- | :--- |
| `window` | [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) que debe abarcar la vista, por ejemplo un archivo de dibujo o una entidad. |

Asigna estos valores:

| Propiedad | Valor |
| :--- | :--- |
| `Name` | Cadena vacía. |
| `Position` | `window.Center`. |
| `Left`, `Right` | `window.Xmin` y `window.Xmax`. |
| `Bottom`, `Top` | `window.Ymin` y `window.Ymax`. |
| `Near`, `Far` | `window.Zmax` y `window.Zmin`. |
| `Pitch`, `Yaw`, `Roll` | 0: vista cenital con el norte arriba. |

## OrthographicCamera(string, IWindow3D)

```csharp
public OrthographicCamera(string name, IWindow3D window)
```

| Parámetro | Descripción |
| :--- | :--- |
| `name` | Valor de `Name`. |
| `window` | [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) que debe abarcar la vista. |

Asigna los mismos valores que `OrthographicCamera(IWindow3D)`, salvo `Name`.

## OrthographicCamera(IWindow3D, float, float, float)

```csharp
public OrthographicCamera(IWindow3D window, float yaw, float pitch, float roll)
```

| Parámetro | Descripción |
| :--- | :--- |
| `window` | [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) que debe abarcar la vista. |
| `yaw` | Valor de `Yaw`, en grados sexagesimales. |
| `pitch` | Valor de `Pitch`, en grados sexagesimales. |
| `roll` | Valor de `Roll`, en grados sexagesimales. |

Asigna los mismos valores que `OrthographicCamera(IWindow3D)`, salvo los giros. El primer ángulo es `yaw` (giro sobre el eje Z), no `pitch`.

## OrthographicCamera(string, IWindow3D, float, float, float)

```csharp
public OrthographicCamera(string name, IWindow3D window, float yaw, float pitch, float roll)
```

| Parámetro | Descripción |
| :--- | :--- |
| `name` | Valor de `Name`. |
| `window` | [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) que debe abarcar la vista. |
| `yaw` | Valor de `Yaw`, en grados sexagesimales. |
| `pitch` | Valor de `Pitch`, en grados sexagesimales. |
| `roll` | Valor de `Roll`, en grados sexagesimales. |

Asigna los mismos valores que `OrthographicCamera(IWindow3D)`, salvo `Name` y los giros.

## Excepciones

Los constructores que reciben `window` lanzan:

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `window` es `null`. |
| `InvalidOperationException` | `window.Xmin` es `null`: la ventana no tiene coordenadas mínimas y máximas (`Valid` es `false`), por ejemplo un archivo de dibujo sin entidades. |
