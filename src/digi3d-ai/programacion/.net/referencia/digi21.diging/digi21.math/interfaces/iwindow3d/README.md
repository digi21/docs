# IWindow3D
<!-- id: iwindow3d -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Ventana tridimensional (caja alineada con los ejes): coordenadas mínimas y máximas, dimensiones, centro y puntos cardinales. Las entidades y los archivos de dibujo implementan esta interfaz para exponer la caja que ocupan.

```csharp
public interface IWindow3D
```

Tipos que implementan la interfaz:

- [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md).
- [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) y todas las entidades que derivan de `Entity`.
- [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/) y, por tanto, todos los archivos de dibujo.
- `Digi21.Utilities.MemoryDrawingFile`.

Una ventana no inicializada tiene `Xmin` a `null`. `Window3D` lanza `InvalidOperationException` al leer `Width`, `Height`, `Depth`, `Center` o uno de los ocho puntos cardinales de una ventana no inicializada. Comprueba `Valid` antes de leerlos.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [double? Xmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmin.md) | Coordenada X mínima, o `null` si la ventana no está inicializada. |
| [double Ymin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymin.md) | Coordenada Y mínima. |
| [double Zmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmin.md) | Coordenada Z mínima. |
| [double Xmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmax.md) | Coordenada X máxima. |
| [double Ymax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymax.md) | Coordenada Y máxima. |
| [double Zmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmax.md) | Coordenada Z máxima. |
| [bool Valid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/valid.md) | En `Window3D`, `true` si `Xmin` no es `null` y cada mínimo es menor o igual que su máximo. |
| [double Width](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/width.md) | `Xmax - Xmin`. |
| [double Height](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/height.md) | `Ymax - Ymin`. |
| [double Depth](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/depth.md) | `Zmax - Zmin`. |
| [Point3D Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md) | Centro de la caja. |
| [Point3D NW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/nw.md) | Esquina noroeste: (`Xmin`, `Ymax`, `Zmin`). |
| [Point3D N](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/n.md) | Punto medio del lado norte. |
| [Point3D NE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ne.md) | Esquina noreste: (`Xmax`, `Ymax`, `Zmin`). |
| [Point3D E](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/e.md) | Punto medio del lado este. |
| [Point3D SE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/se.md) | Esquina sureste: (`Xmax`, `Ymin`, `Zmin`). |
| [Point3D S](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/s.md) | Punto medio del lado sur. |
| [Point3D SW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/sw.md) | Esquina suroeste: (`Xmin`, `Ymin`, `Zmin`). |
| [Point3D W](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/w.md) | Punto medio del lado oeste. |

## Ejemplo

El método `Muestra` recibe cualquier `IWindow3D` (una `Window3D`, una entidad o un archivo de dibujo) y solo lee las dimensiones si la ventana es válida:

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
