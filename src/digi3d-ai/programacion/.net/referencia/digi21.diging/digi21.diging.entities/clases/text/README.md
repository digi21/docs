# Text
<!-- id: text -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Texto de lectura y escritura: una cadena, una coordenada de inserción, una altura, una rotación y una justificación.

```csharp
public class Text : ReadOnlyText, IDesplazable
```

Herencia: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/) → `Text`

Implementa: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/) y, por herencia, [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/), [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/), `ICloneable` e `IDisposable`.

Un `Text` creado con sus constructores no pertenece a ningún archivo de dibujo (`Owner` es `null`) y se puede modificar. Al añadirlo a un archivo de dibujo con `IDrawingFile.Add`, `Owner` pasa a ser ese archivo y la entidad pasa a ser de solo lectura: los descriptores `set` y los métodos `Offset` lanzan `InvalidOperationException`. Para modificar un texto guardado, modifica la copia que devuelve [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/metodos/clone.md).

Un `Text` nuevo tiene la cadena vacía, la coordenada (0, 0, 0), la altura 0, la rotación 0 y la justificación `SouthWest`, y sus coordenadas mínimas y máximas ([IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/)) están sin calcular: `Valid` vale `false`, `Xmin` vale `null`, y `Width`, `Center`, `Color`, `Weight` y `FillColor` lanzan `InvalidOperationException`. Asignar `Coordinate` desplaza el texto y recalcula las coordenadas mínimas y máximas. Los métodos `Offset` desplazan el texto y también las recalculan, junto con las de cada entidad que contiene el texto, por ejemplo el complejo del que forma parte.

`Rotation` está en grados sexagesimales, como [Point.Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/propiedades/rotation.md). En versiones anteriores estaba en centésimas de grado: lee [Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md).

El resto de miembros (códigos, colores, atributos, `Clone`, `Dispose`…) se heredan de [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) y de [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/).

## Constructores

| Miembro | Descripción |
| :--- | :--- |
| [`Text(Code code)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/constructores.md) | Crea un texto con un código. |
| [`Text(IEnumerable<Code> codes)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/constructores.md) | Crea un texto con varios códigos, en el orden de la enumeración. |

## Propiedades

| Miembro | Descripción |
| :--- | :--- |
| [`string Txt { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/txt.md) | Cadena del texto. |
| [`Point3D Coordinate { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/coordinate.md) | Coordenada de inserción. |
| [`double TextHeight { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/textheight.md) | Altura del texto. |
| [`double Rotation { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md) | Rotación, en grados sexagesimales, en sentido antihorario desde el eje X. |
| [`TextJustification Justification { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/justification.md) | Posición del punto de inserción respecto al texto. |

## Métodos

| Miembro | Descripción |
| :--- | :--- |
| [`void Offset(Point2D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `offset.X` y `offset.Y` a la coordenada de inserción. La Z no cambia. |
| [`void Offset(Point3D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `offset` a la coordenada de inserción. |
| [`void Offset(double x, double y)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `x` e `y` a la coordenada de inserción. La Z no cambia. |
| [`void Offset(double x, double y, double z)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `x`, `y` y `z` a la coordenada de inserción. |

Los cuatro métodos `Offset` lanzan `InvalidOperationException` si el texto es de solo lectura (`ReadOnly` es `true`).

## Ejemplo

Este programa escribe en un archivo `.bind` un texto por cada valor de [TextJustification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/textjustification.md), con el nombre del valor como cadena:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Textos <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0]);

// Un rótulo por cada valor de TextJustification, todos con el mismo punto de inserción en X.
var y = 4480000.0;
foreach (var justificación in Enum.GetValues<TextJustification>())
{
    var rótulo = new Text(new Code("080101"))
    {
        Txt = justificación.ToString(),
        Coordinate = new Point3D(450000.0, y, 0.0),
        TextHeight = 2.5,
        Rotation = 0.0,
        Justification = justificación,
    };

    ReadOnlyText guardado = archivo.Add(rótulo);
    Console.WriteLine($"{guardado.Txt}: {(int)guardado.Justification}");
    y += 5.0;
}

return 0;
```
