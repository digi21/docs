# Window3D
<!-- id: window3d -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Ventana tridimensional (caja alineada con los ejes), con operaciones de unión, contención, intersección y desplazamiento.

```csharp
public struct Window3D : IWindow3D, IDesplazable
```

Implementa: [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) e [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

`Window3D` es una estructura (tipo de valor): una asignación copia la ventana, y los métodos que modifican la ventana (`Offset`, `Inflate` y `Union` de instancia) no modifican la ventana original si se llaman sobre una copia, por ejemplo sobre el valor que devuelve una propiedad.

Una ventana no inicializada tiene `Xmin` a `null`. Es el estado de `new Window3D()` y de `default(Window3D)`. El método `Union` de instancia inicializa una ventana no inicializada con los límites del argumento, así que una envolvente se calcula partiendo de `new Window3D()` y llamando a `Union` con cada punto.

A diferencia de [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md), `Window3D` no tiene un campo público `WholeWorld` ni métodos `Intersection`.

Los tipos `Point` y `PointF` pertenecen a `System.Drawing`, al igual que `Size`. `Window3D` trata un `Point` o un `PointF` como un punto de Z igual a 0.

## Constructores

```csharp
public Window3D(double xMin, double yMin, double zMin, double xMax, double yMax, double zMax)
public Window3D(Point3D point)
public Window3D(IWindow3D window)
```

| Constructor | Descripción |
| :--- | :--- |
| `Window3D(double xMin, double yMin, double zMin, double xMax, double yMax, double zMax)` | Crea la ventana con esos límites. No comprueba que cada mínimo sea menor o igual que su máximo: si no se cumple, `Valid` es `false`. |
| `Window3D(Point3D point)` | Crea una ventana de ancho, alto y profundidad 0 en el punto. |
| `Window3D(IWindow3D window)` | Copia los seis límites de `window`, incluido un `Xmin` a `null`. Lanza `NullReferenceException` si `window` es `null`. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [double? Xmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmin.md) | Coordenada X mínima, o `null` si la ventana no está inicializada. |
| [double Ymin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymin.md), [double Zmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmin.md) | Coordenadas Y y Z mínimas. |
| [double Xmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmax.md), [double Ymax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymax.md), [double Zmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmax.md) | Coordenadas X, Y y Z máximas. |
| [bool Valid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/valid.md) | `true` si `Xmin` no es `null`, `Xmin <= Xmax`, `Ymin <= Ymax` y `Zmin <= Zmax`. |
| [double Width](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/width.md), [double Height](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/height.md), [double Depth](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/depth.md) | `Xmax - Xmin`, `Ymax - Ymin` y `Zmax - Zmin`. |
| [Point3D Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md) | Centro de la caja. |
| [NW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/nw.md), [N](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/n.md), [NE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ne.md), [E](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/e.md), [SE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/se.md), [S](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/s.md), [SW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/sw.md), [W](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/w.md) | Esquinas y puntos medios de los lados en el plano X, Y, de tipo `Point3D`. La Z de los ocho puntos es `Zmin`. |

`Width`, `Height`, `Depth`, `Center` y los ocho puntos lanzan `InvalidOperationException` si `Xmin` es `null`. Si `Xmin` no es `null` pero `Valid` es `false`, no lanzan excepción y devuelven los valores calculados con esos límites.

## Métodos

### Offset

```csharp
public void Offset(double x, double y, double z)
public void Offset(double x, double y)
public void Offset(Point3D offset)
public void Offset(Point2D offset)
```

Suma `x`, `y` y `z` a los mínimos y máximos de cada eje. Las sobrecargas sin Z (`Offset(double, double)` y `Offset(Point2D)`) desplazan 0 en Z. Lanza `InvalidOperationException` si `Xmin` es `null`. Son los métodos de [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

### Inflate

```csharp
public void Inflate(double x, double y, double z)
public void Inflate(double x, double y)
public void Inflate(Point3D size)
public void Inflate(Size size)
```

Resta `x`, `y` y `z` de los mínimos y los suma a los máximos: cada dimensión crece el doble del valor. Un valor negativo reduce la ventana. `Inflate(double, double)` e `Inflate(Size)` no cambian la Z; `Inflate(Size)` usa `size.Width` y `size.Height`. Lanza `InvalidOperationException` si `Xmin` es `null`.

### Union

```csharp
public void Union(Point3D point)
public void Union(PointF point)
public void Union(Point point)
public void Union(Window3D window)
public void Union(IWindow3D window)
public void Union(double xMin, double xMax, double yMin, double yMax, double zMin, double zMax)
```

Amplía la ventana para que contenga el punto o la ventana del argumento.

- Si `Xmin` es `null`, la ventana toma los límites del argumento: un punto produce una ventana de dimensiones 0, y una ventana se copia tal cual, aunque no esté inicializada.
- Si `Xmin` no es `null` y el argumento es una ventana no inicializada, lanza `InvalidOperationException`.
- `Union(PointF)` y `Union(Point)` usan Z igual a 0: la ventana resultante incluye siempre la cota 0.
- `Union(IWindow3D)` lanza `NullReferenceException` si `window` es `null`.

El orden de los parámetros de `Union(double, …)` es `xMin`, `xMax`, `yMin`, `yMax`, `zMin`, `zMax`, distinto del orden del constructor.

### Contains

```csharp
public bool Contains(Point3D point)
public bool Contains(PointF point)
public bool Contains(Point point)
public bool Contains(Window3D window)
public bool Contains(IWindow3D window)
```

Devuelve `true` si el punto o la ventana del argumento está dentro de esta ventana, bordes incluidos. `Contains(Point3D)` y las sobrecargas con ventana comparan X, Y y Z; `Contains(PointF)` y `Contains(Point)` comparan solo X e Y. Lanza `InvalidOperationException` si `Xmin` de esta ventana es `null` o, en las sobrecargas con ventana, si `Xmin` del argumento es `null`.

### Intersect e Intersect2D

```csharp
public bool Intersect(Window3D window)
public bool Intersect2D(Window3D window)
public bool Intersect2D(Point3D point)
```

`Intersect` devuelve `true` si las dos cajas tienen algún punto común en X, Y y Z, incluido un borde compartido. `Intersect2D` compara solo X e Y: con un punto, devuelve `true` si la X y la Y del punto están dentro de la ventana. Lanzan `InvalidOperationException` si `Xmin` de esta ventana o de `window` es `null`.

### ToString

```csharp
public override string ToString()
```

Devuelve `Xmin=… Ymin=… Zmin=… Xmax=… Ymax=… Zmax=… Width=… Height=… Long=…` o, si `Xmin` es `null`, `(Uninitialized window)`. El texto está en el idioma de la interfaz de usuario (`CultureInfo.CurrentUICulture`): en español, `Ancho`, `Alto` y `Largo`, y `(Ventana sin inicializar)`.

## Métodos estáticos

### Union

```csharp
public static Window3D Union(Window3D a, Window3D b)
public static Window3D Union(IWindow3D a, IWindow3D b)
```

Devuelve la caja que contiene `a` y `b`. Si una de las dos ventanas no está inicializada, devuelve la otra; si ninguna lo está, devuelve `a` (no inicializada).

```csharp
public static Window3D Union(Window3D window, Point3D point)
public static Window3D Union(Window3D window, PointF point)
public static Window3D Union(Window3D window, Point point)
public static Window3D Union(IWindow3D window, Point3D point)
public static Window3D Union(IWindow3D window, PointF point)
public static Window3D Union(IWindow3D window, Point point)
public static Window3D Union(Window3D window, double xMin, double xMax, double yMin, double yMax, double zMin, double zMax)
public static Window3D Union(IWindow3D window, double xMin, double xMax, double yMin, double yMax, double zMin, double zMax)
```

Devuelve la caja que contiene `window` y el punto o la caja de los seis límites. Con `PointF` o `Point`, la Z del punto es 0. Si `Xmin` de `window` es `null`, devuelve la caja de dimensiones 0 del punto o la caja de los seis límites.

Las sobrecargas con `IWindow3D` lanzan `NullReferenceException` si el argumento es `null`. Los métodos no modifican sus argumentos.

## Operadores

```csharp
public static explicit operator Window2D(Window3D window)
```

Convierte la ventana en una [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) con los mismos `Xmin`, `Ymin`, `Xmax` e `Ymax`. Descarta `Zmin` y `Zmax`. Una ventana no inicializada se convierte en una `Window2D` no inicializada.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | Se lee `Width`, `Height`, `Depth`, `Center` o un punto cardinal, o se llama a `Offset`, `Inflate`, `Contains`, `Intersect` o `Intersect2D`, sobre una ventana con `Xmin` a `null`, o con un argumento de tipo ventana con `Xmin` a `null`. También se lanza al llamar al método `Union` de instancia sobre una ventana inicializada con una ventana no inicializada como argumento. |
| `NullReferenceException` | Un argumento de tipo `IWindow3D` es `null`. |

## Ejemplo

Este programa calcula la caja que envuelve tres puntos, comprueba su relación con un punto y con otra caja, y convierte el resultado en una `Window2D`:

```csharp
using Digi21.Math;

Point3D[] puntos =
{
    new Point3D(440000, 4470000, 612.4),
    new Point3D(440250, 4470100, 655.0),
    new Point3D(440120, 4469900, 630.8),
};

// Una Window3D creada con new Window3D() no está inicializada: Xmin es null.
var caja = new Window3D();
foreach (var punto in puntos)
    caja.Union(punto);

Muestra(caja);

// Contains(Point3D) compara X, Y y Z; Intersect2D compara solo X e Y.
var fueraDeCota = new Point3D(440100, 4470000, 700);
Console.WriteLine(caja.Contains(fueraDeCota));      // False
Console.WriteLine(caja.Intersect2D(fueraDeCota));   // True

var otra = new Window3D(440200, 4470050, 600, 440400, 4470300, 640);
Console.WriteLine(caja.Intersect(otra));            // True

var total = Window3D.Union(caja, otra);
Muestra(total);

// La conversión a Window2D descarta Zmin y Zmax.
var plano = (Window2D)total;
Console.WriteLine($"{plano.Width} x {plano.Height}");

static void Muestra(IWindow3D ventana)
{
    if (!ventana.Valid)
    {
        Console.WriteLine("Ventana no válida");
        return;
    }

    Console.WriteLine($"X: {ventana.Xmin} a {ventana.Xmax}, Y: {ventana.Ymin} a {ventana.Ymax}, Z: {ventana.Zmin} a {ventana.Zmax}");
    Console.WriteLine($"{ventana.Width} x {ventana.Height} x {ventana.Depth}, centro {ventana.Center}");
}
```
