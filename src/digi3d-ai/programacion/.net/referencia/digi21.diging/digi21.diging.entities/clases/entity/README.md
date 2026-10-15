# Entity
<!-- id: entity -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Clase base abstracta de todas las entidades: códigos, colores, atributos, archivo de dibujo al que pertenece y coordenadas mínimas y máximas.

```csharp
public abstract class Entity : IWindow3D, ICloneable
```

Implementa: [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/), `ICloneable`. El ensamblado instalado implementa además `IDisposable`; el paquete de referencia no lo declara.

Tipos derivados: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/), [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/), [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/), [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) y [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/).

La clase no tiene constructores públicos. Las entidades se crean con los constructores de [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/), [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/), [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) y [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/), o se leen de un archivo de dibujo.

## Entidades de solo lectura

Una entidad es de solo lectura ([ReadOnly](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/readonly.md) es `true`) cuando pertenece a un archivo de dibujo: las entidades que devuelve el archivo al recorrerlo y las que se le añaden con `Add`. En una entidad de solo lectura, los descriptores `set` de `Color`, `Weight` y `FillColor`, los métodos que modifican `Codes` y los miembros de modificación de las clases derivadas lanzan `InvalidOperationException`. `Hidden`, `Attributes` y `UserData` se pueden asignar también en una entidad de solo lectura.

Para modificar una entidad de un archivo, modifica la copia que devuelve [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md) y añádela al archivo.

## Coordenadas mínimas y máximas

Las propiedades de `IWindow3D` describen la caja que contiene las coordenadas de la entidad. Una entidad recién creada no tiene caja: `Valid` vale `false` hasta que la entidad tiene coordenadas. Las colecciones `Points` de `Line` y `Polygon` actualizan la caja en cada cambio. Asignar `Coordinate` en un `Point` o un `Text` no la actualiza.

Mientras `Valid` es `false`:

- `Xmin` vale `null`, y `Ymin`, `Zmin`, `Xmax`, `Ymax` y `Zmax` devuelven los valores de una caja vacía (`double.MaxValue` en los mínimos y `-double.MaxValue` en los máximos);
- `Width`, `Height`, `Depth`, `Center`, `NW`, `N`, `NE`, `E`, `SE`, `S`, `SW` y `W` lanzan `InvalidOperationException`;
- los descriptores `get` de `Color`, `Weight` y `FillColor` lanzan `InvalidOperationException`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`IDictionary<string, object> Attributes { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/attributes_entity.md) | Atributos de la entidad: nombre y valor. |
| [`IList<Code> Codes { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/codes.md) | Códigos de la entidad. |
| [`int? Color { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/color.md) | Color propio de la entidad, o `null` si usa el de la tabla de códigos. |
| [`DateTime CreationTime { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/creationtime.md) | Fecha y hora de creación de la entidad. |
| [`bool Deleted { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/deleted.md) | `true` si la entidad está marcada como eliminada. |
| [`string FilePointer { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/filepointer.md) | Identificador de la entidad en su archivo de dibujo. |
| [`int? FillColor { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/fillcolor.md) | Color de relleno propio, o `null` si usa el de la tabla de códigos. |
| [`bool Hidden { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/hidden.md) | `true` para ocultar la entidad. |
| [`IDrawingFile Owner { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/owner.md) | Archivo de dibujo al que pertenece la entidad, o `null`. |
| [`bool ReadOnly { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/readonly.md) | `true` si `Owner` no es `null`. |
| [`object UserData { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/userdata.md) | Objeto del programador asociado a la entidad. |
| [`bool Visible { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/visible.md) | `true` si la entidad se muestra en la ventana de dibujo. |
| [`int? Weight { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/weight.md) | Grosor propio, o `null` si usa el de la tabla de códigos. |
| [`double? Xmin { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmin.md) | Coordenada X mínima, o `null` si `Valid` es `false`. |
| [`double Ymin { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymin.md), [`Zmin`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmin.md), [`Xmax`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmax.md), [`Ymax`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymax.md), [`Zmax`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmax.md) | Resto de coordenadas mínimas y máximas. El ensamblado instalado declara además un descriptor `set` en las seis propiedades (`Xmin` incluida), que lanza `InvalidOperationException`. |
| [`bool Valid { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/valid.md) | `true` si la caja es válida: cada mínimo es menor o igual que su máximo. |
| [`double Width { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/width.md), [`Height`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/height.md), [`Depth`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/depth.md) | `Xmax - Xmin`, `Ymax - Ymin` y `Zmax - Zmin`. |
| [`Point3D Center { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md) | Centro de la caja. No es necesariamente un punto de la entidad; para obtener un punto en el interior de un recinto, usa [ICloseable.InteriorPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/interiorpoint.md). |
| [`Point3D NW`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/nw.md), [`N`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/n.md), [`NE`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ne.md), [`E`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/e.md), [`SE`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/se.md), [`S`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/s.md), [`SW`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/sw.md), [`W`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/w.md) | Esquinas y puntos medios de los lados de la caja en el plano X, Y. La `Z` de los ocho puntos es `Zmin`. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| [`Entity Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md) | Copia de la entidad que no pertenece a ningún archivo de dibujo. |
| `string ToString()` | Texto localizado con el tipo de entidad, las coordenadas mínimas y máximas, los códigos y los datos propios de cada tipo (vértices, coordenada, texto). |
| `void Dispose()` | Libera la entidad nativa. Solo en el ensamblado instalado: el paquete de referencia no declara `IDisposable`, así que el código compilado con el paquete no puede llamarlo ni usar `using` con una entidad. Las entidades que forman parte de otra (huecos de un polígono, entidades de un complejo) no liberan nada. Después de `Dispose`, la entidad no se puede usar. |

## Ejemplo

Este programa asigna colores a una línea, comprueba que la línea pasa a ser de solo lectura al añadirla a un archivo `.bind` y añade una copia desplazada:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: PropiedadesEntidad <salida.bind>");
    return 1;
}

var línea = new Line(new Code("050100"));
línea.Points.Add(new Point3D(0, 0, 0));
línea.Points.Add(new Point3D(10, 5, 2));

// Color, Weight y FillColor se leen cuando la entidad ya tiene coordenadas (Valid es true).
línea.Color = 3;
línea.Weight = 2;
Console.WriteLine($"{línea.Color} {línea.Weight} {línea.FillColor?.ToString() ?? "null"}"); // 3 2 null
Console.WriteLine($"{línea.Width} {línea.Height} {línea.Depth}");                         // 10 5 2
Console.WriteLine(línea.ReadOnly);                                                        // False

using var archivo = new BinDouble(args[0]);
archivo.Add(línea);

// La entidad pertenece ahora al archivo y es de solo lectura.
Console.WriteLine(línea.ReadOnly);                          // True
Console.WriteLine(ReferenceEquals(línea.Owner, archivo));   // True

try
{
    línea.Color = 5;
}
catch (InvalidOperationException e)
{
    Console.WriteLine(e.Message);
}

// Clone devuelve una copia que no pertenece a ningún archivo.
var copia = línea.Clone();
copia.Color = 5;
copia.Offset(0, 10);
archivo.Add(copia);
return 0;
```
