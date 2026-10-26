# Window2D
<!-- id: window2d -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Ventana (rectángulo alineado con los ejes) en el plano X, Y, con operaciones de unión, intersección, contención y desplazamiento.

```csharp
public struct Window2D : IWindow2D, IDesplazable
```

Implementa: [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/) e [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

`Window2D` es una estructura (tipo de valor): una asignación copia la ventana, y los métodos que modifican la ventana (`Offset`, `Inflate` y `Union` de instancia) no modifican la ventana original si se llaman sobre una copia, por ejemplo sobre el valor que devuelve una propiedad.

Una ventana no inicializada tiene `Xmin` a `null`. Es el estado de `new Window2D()` y de `default(Window2D)`. El método `Union` de instancia inicializa una ventana no inicializada con los límites del argumento, así que una envolvente se calcula partiendo de `new Window2D()` y llamando a `Union` con cada punto.

Los tipos `Point` y `PointF` pertenecen a `System.Drawing`, al igual que `Size`.

## Constructores

```csharp
public Window2D(double xMin, double yMin, double xMax, double yMax)
public Window2D(double? xMin, double yMin, double xMax, double yMax)
public Window2D(Point2D point)
public Window2D(Point3D point)
public Window2D(IWindow2D window)
public Window2D(IWindow3D window)
```

| Constructor | Descripción |
| :--- | :--- |
| `Window2D(double xMin, double yMin, double xMax, double yMax)` | Crea la ventana con esos límites. No comprueba que `xMin <= xMax` ni que `yMin <= yMax`: si no se cumple, `Valid` es `false`. |
| `Window2D(double? xMin, double yMin, double xMax, double yMax)` | Crea la ventana sin comprobar el orden de los límites. Si `xMin` es `null`, la ventana no está inicializada. |
| `Window2D(Point2D point)`, `Window2D(Point3D point)` | Crea una ventana de ancho y alto 0 en la X y la Y del punto. |
| `Window2D(IWindow2D window)`, `Window2D(IWindow3D window)` | Copia `Xmin`, `Ymin`, `Xmax` e `Ymax` de `window`, incluido un `Xmin` a `null`. De un `IWindow3D` descarta `Zmin` y `Zmax`. Lanza `NullReferenceException` si `window` es `null`. |

## Campos estáticos

| Campo | Descripción |
| :--- | :--- |
| `static readonly Window2D WholeWorld` | Ventana de (`-double.MaxValue`, `-double.MaxValue`) a (`double.MaxValue`, `double.MaxValue`). |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [double? Xmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/xmin.md) | Coordenada X mínima, o `null` si la ventana no está inicializada. |
| [double Ymin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ymin.md), [double Xmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/xmax.md), [double Ymax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ymax.md) | Coordenadas Y mínima, X máxima e Y máxima. |
| [bool Valid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/valid.md) | `true` si `Xmin` no es `null`, `Xmin <= Xmax` e `Ymin <= Ymax`. |
| [double Width](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/width.md), [double Height](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/height.md) | `Xmax - Xmin` e `Ymax - Ymin`. |
| [Point2D Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/center.md) | Centro de la ventana. |
| [NW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/nw.md), [N](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/n.md), [NE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ne.md), [E](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/e.md), [SE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/se.md), [S](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/s.md), [SW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/sw.md), [W](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/w.md) | Esquinas y puntos medios de los lados, de tipo `Point2D`. |

`Width`, `Height`, `Center` y los ocho puntos lanzan `InvalidOperationException` si `Xmin` es `null`. Si `Xmin` no es `null` pero `Valid` es `false` (un mínimo mayor que su máximo), no lanzan excepción y devuelven los valores calculados con esos límites.

## Métodos

### Offset

```csharp
public void Offset(double x, double y)
public void Offset(double x, double y, double z)
public void Offset(Point2D offset)
public void Offset(Point3D offset)
```

Suma `x` a `Xmin` y `Xmax`, e `y` a `Ymin` e `Ymax`. Las sobrecargas con `z` o con `Point3D` descartan la Z. Lanza `InvalidOperationException` si `Xmin` es `null`. Son los métodos de [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

### Inflate

```csharp
public void Inflate(double x, double y)
public void Inflate(Point2D size)
public void Inflate(Size size)
```

Resta `x` de `Xmin` y lo suma a `Xmax`; resta `y` de `Ymin` y lo suma a `Ymax`. El ancho crece `2 * x` y el alto `2 * y`. Un valor negativo de `x` reduce el ancho de la ventana y un valor negativo de `y` reduce el alto. `Inflate(Point2D)` usa `size.X` y `size.Y`; `Inflate(Size)` usa `size.Width` y `size.Height`. `Inflate` lanza `InvalidOperationException` si `Xmin` es `null`.

### Union

```csharp
public void Union(Point2D point)
public void Union(Point3D point)
public void Union(PointF point)
public void Union(Point point)
public void Union(Window2D window)
public void Union(Window3D window)
public void Union(IWindow2D window)
public void Union(IWindow3D window)
public void Union(double xMin, double yMin, double xMax, double yMax)
```

Amplía la ventana para que contenga el punto o la ventana del argumento. De un `Point3D` o de una ventana tridimensional solo se usan X e Y.

- Si `Xmin` es `null`, la ventana toma los límites del argumento: un punto produce una ventana de ancho y alto 0, y una ventana se copia tal cual, aunque no esté inicializada.
- Si `Xmin` no es `null` y el argumento es una ventana no inicializada, lanza `InvalidOperationException`.
- Las sobrecargas `IWindow2D` e `IWindow3D` lanzan `NullReferenceException` si `window` es `null`.

`Union(double xMin, double yMin, double xMax, double yMax)` añade el rectángulo de (`xMin`, `yMin`) a (`xMax`, `yMax`), con los parámetros en el mismo orden que el constructor. Las sobrecargas estáticas de `Union` con cuatro `double` usan el mismo orden.

### Intersection

```csharp
public Window2D Intersection(Window2D window)
public Window2D Intersection(Window3D window)
public Window2D Intersection(IWindow2D window)
public Window2D Intersection(IWindow3D window)
public Window2D Intersection(double? xMin, double xMax, double yMin, double yMax)
```

Devuelve el rectángulo común a esta ventana y al argumento, sin modificar esta ventana. Si las ventanas no se solapan, el resultado tiene `Xmin` a `null` y `Valid` a `false`. Si solo se tocan en un borde, el resultado es válido, con ancho o alto 0. Lanza `InvalidOperationException` si `Xmin` de esta ventana o del argumento es `null`.

### Contains

```csharp
public bool Contains(Point2D point)
public bool Contains(Point3D point)
public bool Contains(PointF point)
public bool Contains(Point point)
public bool Contains(Window2D window)
public bool Contains(Window3D window)
public bool Contains(IWindow2D window)
public bool Contains(IWindow3D window)
public bool Contains(double xMin, double xMax, double yMin, double yMax)
```

Devuelve `true` si el punto o la ventana del argumento está dentro de esta ventana en el plano X, Y. Los bordes cuentan como interiores: un punto sobre el borde está contenido. Lanza `InvalidOperationException` si `Xmin` de esta ventana es `null` o, en las sobrecargas que reciben una ventana, si `Xmin` del argumento es `null`.

### Intersects

```csharp
public bool Intersects(Window2D window)
public bool Intersects(Window3D window)
public bool Intersects(IWindow2D window)
public bool Intersects(IWindow3D window)
public bool Intersects(double xMin, double xMax, double yMin, double yMax)
public bool Intersects(double? xMin, double xMax, double yMin, double yMax)
```

Devuelve `true` si esta ventana y el argumento tienen algún punto común en el plano X, Y, incluido un borde compartido. Lanza `InvalidOperationException` si `Xmin` de esta ventana o del argumento es `null`.

### ToString

```csharp
public override string ToString()
```

Devuelve `Xmin=… Ymin=… Xmax=… Ymax=… Width=… Height=…` o, si `Xmin` es `null`, `(Uninitialized window)`. El texto está en el idioma de la interfaz de usuario (`CultureInfo.CurrentUICulture`): en español, `Ancho` y `Alto`, y `(Ventana sin inicializar)`.

## Métodos estáticos

En las sobrecargas de este apartado, `a` y `windowA` son la primera ventana y `b` y `windowB` la segunda. Los métodos no modifican sus argumentos. Las sobrecargas que reciben `IWindow2D` o `IWindow3D` lanzan `NullReferenceException` si el argumento es `null`.

### Union

```csharp
public static Window2D Union(Window2D a, Window2D b)
public static Window2D Union(Window2D a, Window3D b)
public static Window2D Union(Window3D a, Window2D b)
public static Window2D Union(Window3D a, Window3D b)
public static Window2D Union(Window2D a, IWindow2D b)
public static Window2D Union(Window2D a, IWindow3D b)
public static Window2D Union(Window3D a, IWindow2D b)
public static Window2D Union(Window3D a, IWindow3D b)
public static Window2D Union(IWindow2D a, Window2D b)
public static Window2D Union(IWindow2D a, Window3D b)
public static Window2D Union(IWindow3D a, Window2D b)
public static Window2D Union(IWindow3D a, Window3D b)
public static Window2D Union(IWindow2D a, IWindow2D b)
public static Window2D Union(IWindow2D a, IWindow3D b)
public static Window2D Union(IWindow3D a, IWindow2D b)
public static Window2D Union(IWindow3D a, IWindow3D b)
```

Devuelve el rectángulo que contiene `a` y `b`. Si una de las dos ventanas no está inicializada, devuelve la otra; si ninguna lo está, devuelve `a` (no inicializada).

```csharp
public static Window2D Union(Window2D window, Point2D point)
public static Window2D Union(Window2D window, Point3D point)
public static Window2D Union(Window2D window, PointF point)
public static Window2D Union(Window2D window, Point point)
public static Window2D Union(Window3D window, Point2D point)
public static Window2D Union(Window3D window, Point3D point)
public static Window2D Union(Window3D window, PointF point)
public static Window2D Union(Window3D window, Point point)
public static Window2D Union(IWindow2D window, Point2D point)
public static Window2D Union(IWindow2D window, Point3D point)
public static Window2D Union(IWindow2D window, PointF point)
public static Window2D Union(IWindow2D window, Point point)
public static Window2D Union(IWindow3D window, Point2D point)
public static Window2D Union(IWindow3D window, Point3D point)
public static Window2D Union(IWindow3D window, PointF point)
public static Window2D Union(IWindow3D window, Point point)
public static Window2D Union(Window2D window, double xMin, double yMin, double xMax, double yMax)
public static Window2D Union(Window3D window, double xMin, double yMin, double xMax, double yMax)
public static Window2D Union(IWindow2D window, double xMin, double yMin, double xMax, double yMax)
public static Window2D Union(IWindow3D window, double xMin, double yMin, double xMax, double yMax)
```

Devuelve el rectángulo que contiene `window` y el punto, o `window` y el rectángulo de (`xMin`, `yMin`) a (`xMax`, `yMax`). Si `Xmin` de `window` es `null`, devuelve la ventana de ancho y alto 0 del punto, o el rectángulo de los cuatro límites.

### Intersection

```csharp
public static Window2D Intersection(Window2D windowA, Window2D windowB)
public static Window2D Intersection(Window2D windowA, Window3D windowB)
public static Window2D Intersection(Window3D windowA, Window2D windowB)
public static Window2D Intersection(Window3D windowA, Window3D windowB)
public static Window2D Intersection(Window2D windowA, IWindow2D windowB)
public static Window2D Intersection(Window2D windowA, IWindow3D windowB)
public static Window2D Intersection(Window3D windowA, IWindow2D windowB)
public static Window2D Intersection(Window3D windowA, IWindow3D windowB)
public static Window2D Intersection(IWindow2D windowA, Window2D windowB)
public static Window2D Intersection(IWindow2D windowA, Window3D windowB)
public static Window2D Intersection(IWindow3D windowA, Window2D windowB)
public static Window2D Intersection(IWindow3D windowA, Window3D windowB)
public static Window2D Intersection(IWindow2D windowA, IWindow2D windowB)
public static Window2D Intersection(IWindow2D windowA, IWindow3D windowB)
public static Window2D Intersection(IWindow3D windowA, IWindow2D windowB)
public static Window2D Intersection(IWindow3D windowA, IWindow3D windowB)
public static Window2D Intersection(double? xMinA, double xMaxA, double yMinA, double yMaxA, double? xMinB, double xMaxB, double yMinB, double yMaxB)
```

Devuelve el rectángulo común a las dos ventanas. Si no se solapan, el resultado tiene `Xmin` a `null`. Lanza `InvalidOperationException` si `Xmin` de una de las dos ventanas (o `xMinA` o `xMinB`) es `null`.

### Contains

```csharp
public static bool Contains(Window2D windowA, Window2D windowB)
public static bool Contains(Window2D windowA, Window3D windowB)
public static bool Contains(Window3D windowA, Window2D windowB)
public static bool Contains(Window3D windowA, Window3D windowB)
public static bool Contains(Window2D windowA, IWindow2D windowB)
public static bool Contains(Window2D windowA, IWindow3D windowB)
public static bool Contains(Window3D windowA, IWindow2D windowB)
public static bool Contains(Window3D windowA, IWindow3D windowB)
public static bool Contains(IWindow2D windowA, Window2D windowB)
public static bool Contains(IWindow2D windowA, Window3D windowB)
public static bool Contains(IWindow3D windowA, Window2D windowB)
public static bool Contains(IWindow3D windowA, Window3D windowB)
public static bool Contains(double? xMinA, double xMaxA, double yMinA, double yMaxA, double? xMinB, double xMaxB, double yMinB, double yMaxB)
```

Devuelve `true` si `windowB` está dentro de `windowA` en el plano X, Y, bordes incluidos. No hay sobrecarga con las dos ventanas de tipo interfaz. Lanza `InvalidOperationException` si `Xmin` de una de las dos ventanas es `null`.

### Intersects

```csharp
public static bool Intersects(Window2D windowA, Window2D windowB)
public static bool Intersects(Window2D windowA, Window3D windowB)
public static bool Intersects(Window3D windowA, Window2D windowB)
public static bool Intersects(Window3D windowA, Window3D windowB)
public static bool Intersects(IWindow2D windowA, IWindow2D windowB)
public static bool Intersects(IWindow2D windowA, IWindow3D windowB)
public static bool Intersects(IWindow3D windowA, IWindow2D windowB)
public static bool Intersects(IWindow3D windowA, IWindow3D windowB)
public static bool Intersects(double? xMinA, double xMaxA, double yMinA, double yMaxA, double? xMinB, double xMaxB, double yMinB, double yMaxB)
public static bool Intersects(double xMinA, double xMaxA, double yMinA, double yMaxA, double xMinB, double xMaxB, double yMinB, double yMaxB)
```

Devuelve `true` si las dos ventanas tienen algún punto común en el plano X, Y, incluido un borde compartido. No hay sobrecargas que mezclen una estructura y una interfaz. Las sobrecargas con ventanas o con `double?` lanzan `InvalidOperationException` si `Xmin` de una de las dos ventanas es `null`; la sobrecarga con ocho `double` no lanza excepciones.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | Se lee `Width`, `Height`, `Center` o un punto cardinal, o se llama a `Offset`, `Inflate`, `Intersection`, `Contains` o `Intersects`, sobre una ventana con `Xmin` a `null`, o con un argumento de tipo ventana con `Xmin` a `null`. También se lanza al llamar al método `Union` de instancia sobre una ventana inicializada con una ventana no inicializada como argumento. |
| `NullReferenceException` | Un argumento de tipo `IWindow2D` o `IWindow3D` es `null`. |

## Ejemplo

Este programa calcula la ventana que envuelve tres puntos, calcula la intersección con otra ventana y amplía la ventana envolvente:

```csharp
using Digi21.Math;

Point2D[] puntos =
{
    new Point2D(440000, 4470000),
    new Point2D(440250, 4470100),
    new Point2D(440120, 4469900),
};

// Una Window2D creada con new Window2D() no está inicializada: Xmin es null.
var envolvente = new Window2D();
Console.WriteLine(envolvente.Valid);        // False

foreach (var punto in puntos)
    envolvente.Union(punto);

Muestra(envolvente);

var hoja = new Window2D(440100, 4469950, 440500, 4470300);
Console.WriteLine(hoja.Contains(puntos[1]));          // True
Console.WriteLine(envolvente.Intersects(hoja));       // True

var comun = envolvente.Intersection(hoja);
Muestra(comun);

var lejana = new Window2D(500000, 4400000, 500100, 4400100);
var vacia = envolvente.Intersection(lejana);
Console.WriteLine(vacia.Valid);             // False: las ventanas no se solapan

// Amplía 10 unidades por cada lado.
envolvente.Inflate(10, 10);
Muestra(envolvente);

static void Muestra(IWindow2D ventana)
{
    if (!ventana.Valid)
    {
        Console.WriteLine("Ventana no válida");
        return;
    }

    Console.WriteLine($"X: {ventana.Xmin} a {ventana.Xmax}, Y: {ventana.Ymin} a {ventana.Ymax}");
    Console.WriteLine($"Ancho {ventana.Width}, alto {ventana.Height}, centro {ventana.Center}");
}
```
