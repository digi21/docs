# IWindow2D
<!-- id: iwindow2d -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Ventana (rectángulo alineado con los ejes) en el plano X, Y: coordenadas mínimas y máximas, dimensiones, centro y puntos cardinales.

```csharp
public interface IWindow2D
```

Tipos que implementan la interfaz: [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md).

Una ventana no inicializada tiene `Xmin` a `null`. `Window2D` lanza `InvalidOperationException` al leer `Width`, `Height`, `Center` o uno de los ocho puntos cardinales de una ventana no inicializada. Comprueba `Valid` antes de leerlos.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [double? Xmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/xmin.md) | Coordenada X mínima, o `null` si la ventana no está inicializada. |
| [double Ymin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ymin.md) | Coordenada Y mínima. |
| [double Xmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/xmax.md) | Coordenada X máxima. |
| [double Ymax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ymax.md) | Coordenada Y máxima. |
| [bool Valid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/valid.md) | `true` si `Xmin` no es `null`, `Xmin <= Xmax` e `Ymin <= Ymax`. |
| [double Width](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/width.md) | `Xmax - Xmin`. |
| [double Height](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/height.md) | `Ymax - Ymin`. |
| [Point2D Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/center.md) | Centro de la ventana. |
| [Point2D NW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/nw.md) | Esquina noroeste: (`Xmin`, `Ymax`). |
| [Point2D N](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/n.md) | Punto medio del lado norte. |
| [Point2D NE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ne.md) | Esquina noreste: (`Xmax`, `Ymax`). |
| [Point2D E](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/e.md) | Punto medio del lado este. |
| [Point2D SE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/se.md) | Esquina sureste: (`Xmax`, `Ymin`). |
| [Point2D S](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/s.md) | Punto medio del lado sur. |
| [Point2D SW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/sw.md) | Esquina suroeste: (`Xmin`, `Ymin`). |
| [Point2D W](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/w.md) | Punto medio del lado oeste. |

## Ejemplo

El método `Muestra` recibe cualquier `IWindow2D` y solo lee las dimensiones si la ventana es válida:

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
