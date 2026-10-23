# Point
<!-- id: point -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Punto de lectura y escritura: una coordenada de inserción y una rotación.

```csharp
public class Point : ReadOnlyPoint, IDesplazable
```

Herencia: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/) → `Point`

Implementa: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/) y, por herencia, [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/), [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/), `ICloneable` e `IDisposable`.

Un `Point` creado con sus constructores no pertenece a ningún archivo de dibujo (`Owner` es `null`) y se puede modificar. Al añadirlo a un archivo de dibujo con `IDrawingFile.Add`, `Owner` pasa a ser ese archivo y la entidad pasa a ser de solo lectura: los descriptores `set` y los métodos `Offset` lanzan `InvalidOperationException`. Para modificar un punto guardado, modifica la copia que devuelve [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/metodos/clone.md).

Un `Point` nuevo tiene la coordenada (0, 0, 0) y la rotación 0, y sus coordenadas mínimas y máximas ([IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/)) están sin calcular: `Valid` vale `false`, `Xmin` vale `null`, y `Width`, `Center`, `Color`, `Weight` y `FillColor` lanzan `InvalidOperationException`. Asignar `Coordinate` y llamar a cualquiera de los métodos `Offset` recalculan las coordenadas mínimas y máximas. `Offset` recalcula además las de cada entidad que contiene el punto, por ejemplo el complejo del que forma parte.

El resto de miembros (códigos, colores, atributos, `Clone`, `Dispose`…) se heredan de [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) y de [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/).

## Constructores

| Miembro | Descripción |
| :--- | :--- |
| [`Point(Code code)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/constructores.md) | Crea un punto con un código. |
| [`Point(IEnumerable<Code> codes)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/constructores.md) | Crea un punto con varios códigos, en el orden de la enumeración. |

## Propiedades

| Miembro | Descripción |
| :--- | :--- |
| [`Point3D Coordinate { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/propiedades/coordinate.md) | Coordenada de inserción. |
| [`double Rotation { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/propiedades/rotation.md) | Rotación del símbolo, en grados sexagesimales, en sentido antihorario desde el eje X. |

## Métodos

| Miembro | Descripción |
| :--- | :--- |
| [`void Offset(Point2D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `offset.X` y `offset.Y` a la coordenada. La Z no cambia. |
| [`void Offset(Point3D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `offset` a la coordenada. |
| [`void Offset(double x, double y)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `x` e `y` a la coordenada. La Z no cambia. |
| [`void Offset(double x, double y, double z)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `x`, `y` y `z` a la coordenada. |

Los cuatro métodos `Offset` lanzan `InvalidOperationException` si el punto es de solo lectura (`ReadOnly` es `true`).

## Ejemplo

Este programa crea un punto con rotación, lo guarda en un archivo `.bind` y guarda una copia desplazada 10 unidades en X:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Puntos <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0]);

var vértice = new Point(new Code("030101"))
{
    Coordinate = new Point3D(450000.0, 4480000.0, 650.0),
    Rotation = 45.0, // grados sexagesimales
};

// Add devuelve la misma instancia como ReadOnlyPoint: a partir de aquí es de solo lectura.
ReadOnlyPoint guardado = archivo.Add(vértice);
Console.WriteLine($"{guardado.Coordinate} rotación {guardado.Rotation}°, ReadOnly = {guardado.ReadOnly}");

// Para modificar un punto guardado se trabaja sobre una copia.
Point copia = guardado.Clone();
copia.Offset(10.0, 0.0);
archivo.Add(copia);

return 0;
```
