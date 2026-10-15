# Segment
<!-- id: segment -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Segmento entre dos [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md), el origen y el destino.

```csharp
public struct Segment
```

`Segment` es un tipo de valor. Las propiedades `FirstSegment` y `LastSegment` de [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) devuelven el primer y el último segmento de una línea.

Los métodos `AnalyzeRelation`, `AnalyzeRelationPlaneXY`, `Distance`, `Distance2D`, `Perpendicular`, `Intersection` e `InterpolatedZ` trabajan con la recta que pasa por el origen y el destino, no con el segmento: los resultados pueden estar fuera del segmento.

## Constructores

```csharp
public Segment(Point3D origin, Point3D destination)
```

Crea el segmento que va de `origin` a `destination`. El constructor sin parámetros de la estructura crea un segmento con los dos extremos en (0, 0, 0).

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `Point3D Origin { get; set; }` | Origen del segmento. |
| `Point3D Destination { get; set; }` | Destino del segmento. |
| `Point3D DirectionVector { get; }` | Vector `Destination - Origin`, sin normalizar. |
| `Window3D Window { get; }` | [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) con las coordenadas mínimas y máximas de los dos extremos. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `double Distance(Point3D point)` | Distancia en el espacio de `point` a la recta. Si el origen y el destino son iguales según [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md), devuelve la distancia entre `point` y el origen. |
| `double Distance2D(Point3D point)` | Igual que `Distance`, pero en el plano X, Y: no tiene en cuenta las coordenadas Z. |
| `Point3D Perpendicular(Point3D point)` | Pie de la perpendicular a la recta trazada desde `point` en el plano X, Y. La Z del resultado es la de la recta en ese punto. Si el origen y el destino tienen las mismas X e Y, devuelve el origen. |
| `double InterpolatedZ(Point2D point)` | Z de la recta interpolada linealmente a partir de la X de `point`. Si el origen y el destino tienen la misma X según `Precision.Epsilon`, la interpolación se hace con la Y; si también tienen la misma Y, devuelve la Z del origen. No comprueba que `point` esté sobre la recta. |

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| `SegmentRelation AnalyzeRelation(Segment a, Segment b)` | Posición relativa de las dos rectas en el espacio: `Crossed`, `Cutted`, `Paralel` o `Coincident`. Lee [SegmentRelation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/enumeraciones/segmentrelation.md). |
| `SegmentRelation AnalyzeRelationPlaneXY(Segment a, Segment b)` | Posición relativa de las proyecciones de las dos rectas en el plano X, Y: `Cutted`, `Paralel` o `Coincident`. |
| `Point3D Intersection(Segment a, Segment b)` | Punto de corte de las dos rectas en el plano X, Y. La Z del resultado se interpola en la recta de `a`, como en `InterpolatedZ`. Lanza `InvalidOperationException` si las rectas son paralelas o coincidentes en el plano X, Y. |
| `double CalculateAngle(Segment a, Segment b)` | Ángulo entre las proyecciones en el plano X, Y de los vectores de dirección de `a` y de `b`, en radianes, entre 0 y π. Devuelve `NaN` si uno de los segmentos tiene longitud 0 en el plano X, Y. |

`AnalyzeRelation` y `AnalyzeRelationPlaneXY` calculan rangos de matrices con los vectores de dirección y el vector que une los dos orígenes, y comparan los determinantes con 0 sin tolerancia. Un segmento con el origen igual al destino se clasifica como `Paralel` o `Coincident`.

## Ejemplo

Este programa analiza dos segmentos que se cruzan en el espacio y se cortan en el plano X, Y:

```csharp
using Digi21.Math;

var a = new Segment(new Point3D(0.0, 0.0, 100.0), new Point3D(10.0, 10.0, 110.0));
var b = new Segment(new Point3D(0.0, 10.0, 0.0), new Point3D(10.0, 0.0, 0.0));

// En el espacio las rectas no se tocan; en el plano X, Y se cortan.
Console.WriteLine(Segment.AnalyzeRelation(a, b));        // Crossed
Console.WriteLine(Segment.AnalyzeRelationPlaneXY(a, b)); // Cutted

if (Segment.AnalyzeRelationPlaneXY(a, b) == SegmentRelation.Cutted)
{
    // Intersección en el plano X, Y; la Z se interpola en el segmento a.
    var corte = Segment.Intersection(a, b);
    Console.WriteLine(corte);                            // ≈ (5, 5, 105)
}

var ángulo = Segment.CalculateAngle(a, b);
Console.WriteLine(Angles.RadianToSexagesimal(ángulo));   // ≈ 90

var punto = new Point3D(10.0, 0.0, 0.0);
Console.WriteLine(a.Distance2D(punto));                  // ≈ 7.071
Console.WriteLine(a.Perpendicular(punto));               // (5,5,105)
Console.WriteLine(a.InterpolatedZ(new Point2D(2.0, 2.0))); // 102
```
