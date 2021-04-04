# Offset

Espacio de nombres: [Digi21.DigiNG.Entities](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities)   
Ensamblado: [Digi21.DigiNG](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging)​‌

Desplaza el [Line](../) en el plano X,Y o en el espacio.

## Sobrecargas

|  |  |
| :--- | :--- |
| [Offset\(Point2D\)](offset.md#offset-point-2-d) | Desplaza el [Line](../) en el plano X, Y. |
| [Offset\(Point3D\)](offset.md#offset-point-3-d) | Desplaza el [Line](../) en el espacio. |
| [Offset\(double, double\)](offset.md#offset-double-double) | Desplaza el [Line](../) en el plano X, Y. |
| [Offset\(double, double, double\)](offset.md#offset-double-double-double) | Desplaza el [Line](../) en el espacio. |

## Offset\(Point2D\)

Desplaza el [Line](../) en el plano X, Y.

```csharp
public new void Offset(Point2D offset);
```

### Parámetros

`offset` [Point2D](../../../digi21.math/point2d.md)  
Desplazamiento a aplicar al [Line](../) en el plano X, Y.

## Offset\(Point3D\)

Desplaza el [Line](../) en el espacio.

```csharp
public new void Offset(Point3D offset);
```

### Parámetros

`offset` [Point3D](../../../digi21.math/point3d.md)  
Desplazamiento a aplicar al [Line](../) en el espacio.

## Offset\(double, double\)

Desplaza el [Line](../) en el plano X, Y.

```csharp
public new void Offset(double x, double y);
```

### Parámetros

`x` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Desplazamiento a aplicar al [Line](../) en la coordenada X.

`y` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Desplazamiento a aplicar al [Line](../) en la coordenada Y.

## Offset\(double, double, double\)

Desplaza el [Line](../) en el espacio.

```csharp
public new void Offset(double x, double y, double z);
```

### Parámetros

`x` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Desplazamiento a aplicar al [Line](../) en la coordenada X.

`y` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Desplazamiento a aplicar al [Line](../) en la coordenada Y.

`z` [Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Desplazamiento a aplicar al [Line](../) en la coordenada Z.

