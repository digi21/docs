# Constructores

Espacio de nombres: [Digi21.DigiNG.Cameras](../)  
Ensamblado: [Digi21.DigiNG](../../)

Inicializa una nueva instancia de [OrtographicCamera](./).

## Sobrecargas

|  |  |
| :--- | :--- |
| [OrthographicCamera\(\)](constructores.md#orthographiccamera) | Inicializa una nueva instancia de [OrtographicCamera](./) con valores por defecto. |
| [OrthographicCamera\(IWindow3D\)](constructores.md#orthographiccamera-iwindow-3-d) | Inicializa una nueva instancia de [OrtographicCamera](./) configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)pasado por parámetros. |
| [OrthographicCamera\(string\)](constructores.md#orthographiccamera-iwindow-3-d) | Inicializa una nueva instancia de [OrtographicCamera](./) asignándole el nombre pasado por parámetros. |
| [OrthographicCamera\(string, IWindow3D\)](constructores.md#orthographiccamera-string-iwindow-3-d) | Inicializa una nueva instancia de [OrtographicCamera](./) asignándole un nombre y configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)pasado por parámetros. |
| [OrthographicCamera\(IWindow3D, double, double, double\)](constructores.md#orthographiccamera-iwindow-3-d-double-double-double) | Inicializa una nueva instancia de [OrtographicCamera](./) configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)y con los ángulos pasados por parámetros. |
| [OrthographicCamera\(string, IWindow3D, double, double, double\)](constructores.md#orthographiccamera-string-iwindow-3-d-double-double-double) | Inicializa una nueva instancia de [OrtographicCamera](./) con nombre, configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)y con los ángulos pasados por parámetros. |

## OrthographicCamera\(\)

Inicializa una nueva instancia de [OrtographicCamera](./) con valores por defecto.

```csharp
 public OrthographicCamera()
```

## OrthographicCamera\(IWindow3D\)

Inicializa una nueva instancia de [OrtographicCamera](./) configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)pasado por parámetros.

```csharp
public OrthographicCamera(IWindow3D window)
```

### Parámetros

`window` [IWindow3D](../../digi21.math/iwindow3d/)  
Ventana para centrar en la cámara.

## OrthographicCamera\(string\)

Inicializa una nueva instancia de [OrtographicCamera](./) asignándole el nombre pasado por parámetros.

```csharp
 public OrthographicCamera(string name)
```

### Parámetros

`name` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre para asignar a la cámara.

## OrthographicCamera\(string, IWindow3D\)

Inicializa una nueva instancia de [OrtographicCamera](./) asignándole un nombre y configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)pasado por parámetros.

```csharp
public OrthographicCamera(string name, IWindow3D window)
```

### Parámetros

`name` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre para asignar a la cámara.

`window` [IWindow3D](../../digi21.math/iwindow3d/)  
Ventana para centrar en la cámara.

## OrthographicCamera\(IWindow3D, double, double, double\)

Inicializa una nueva instancia de [OrtographicCamera](./) configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)y con los ángulos pasados por parámetros.

```csharp
 public OrthographicCamera(IWindow3D window, double yaw, double pitch, double roll)
```

### Parámetros

`window` [IWindow3D](../../digi21.math/iwindow3d/)  
Ventana para centrar en la cámara.

`yaw` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo \(en sexagesimal\) _yaw_ a asignar a la cámara.

`pitch` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo \(en sexagesimal\) _pitch_ a asignar a la cámara.

`roll` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo \(en sexagesimal\) _roll_ a asignar a la cámara.

## OrthographicCamera\(string, IWindow3D, double, double, double\)

Inicializa una nueva instancia de [OrtographicCamera](./) con nombre, configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)y con los ángulos pasados por parámetros.

```csharp
 public OrthographicCamera(string name, IWindow3D window, double yaw, double pitch double roll)
```

### Parámetros

`name` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre para asignar a la cámara.

`window` [IWindow3D](../../digi21.math/iwindow3d/)  
Ventana para centrar en la cámara.

`yaw` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo \(en sexagesimal\) _yaw_ a asignar a la cámara.

`pitch` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo \(en sexagesimal\) _pitch_ a asignar a la cámara.

`roll` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo \(en sexagesimal\) _roll_ a asignar a la cámara.













