# IDesplazable
<!-- id: idesplazable -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Objeto que se desplaza sumando un incremento a sus coordenadas.

```csharp
public interface IDesplazable
```

Tipos que implementan la interfaz:

| Tipo | Comportamiento |
| :--- | :--- |
| [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/), [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) | Desplazan todas sus coordenadas. Lanzan `InvalidOperationException` si la entidad pertenece a un archivo de dibujo (su propiedad `Owner` no es `null`). |
| [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) | Ignora el incremento en Z. |
| [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) | Desplaza X, Y y Z. |
| [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) | Ignora el incremento en Z. Lanza `InvalidOperationException` si la ventana no está inicializada. |
| [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) | Desplaza las coordenadas mínimas y máximas. Lanza `InvalidOperationException` si la ventana no está inicializada. |

`Polygon` y `Complex` no implementan la interfaz.

`Point2D`, `Point3D`, `Window2D` y `Window3D` son tipos de valor: si se llama a `Offset` a través de una variable de tipo `IDesplazable`, se desplaza la copia guardada en esa variable, no la variable original.

## Métodos

| Método | Descripción |
| :--- | :--- |
| [Offset(Point2D)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Desplaza en X e Y. |
| [Offset(Point3D)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Desplaza en X, Y y Z. |
| [Offset(double, double)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Desplaza en X e Y. |
| [Offset(double, double, double)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Desplaza en X, Y y Z. |

## Ejemplo

Este programa desplaza una línea y un texto a través de la interfaz, y un `Point3D` directamente:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.Math;

var incremento = new Point3D(100.0, 200.0, 0.0);

var línea = new Line(new Code("020101"));
línea.Points.Add(new Point3D(0.0, 0.0, 10.0));
línea.Points.Add(new Point3D(5.0, 5.0, 12.0));

var texto = new Text(new Code("TEXTO"));
texto.Coordinate = new Point3D(1.0, 1.0, 0.0);

// Line y Text implementan IDesplazable.
IDesplazable[] geometrías = [línea, texto];
foreach (var geometría in geometrías)
    geometría.Offset(incremento);

Console.WriteLine(línea.Points[0]);   // (100,200,10)
Console.WriteLine(texto.Coordinate);  // (101,201,0)

// Point3D es un tipo de valor: se desplaza la variable, no una copia.
var punto = new Point3D(1.0, 2.0, 3.0);
punto.Offset(incremento);
Console.WriteLine(punto);             // (101,202,3)
```
