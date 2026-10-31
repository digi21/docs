# GeographicCalculator
<!-- id: geographiccalculator -->
<!-- origen: 7b59456cc71b54e43d94fd0ad5f5cba48abb7775 -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Calculates areas, perimeters and distances according to the drawing window's coordinate reference system. With a geographic system, distances and perimeters are expressed in meters and areas in square meters, even if coordinates use an angular unit.

```csharp
public sealed class GeographicCalculator
```

The class has no public constructors. Obtain the object through the static [DigiNG.GeographicCalculator](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) property, which creates a new object on each read and throws `NullReferenceException` if no drawing window is open. The object is bound to the drawing window active when it is obtained: when that window closes, all methods throw `ObjectDisposedException`.

Calculation depends on the horizontal part of the drawing window's coordinate reference system:

| Horizontal system | Distances and perimeters | Areas |
| :--- | :--- | :--- |
| Projected or local | Euclidean distance, in the system's units. | Planar area, in the system's squared units. |
| Geographic | Geodesic distance on the system's ellipsoid, in meters. X and Y coordinates are longitude and latitude in the system's angular unit, for example degrees in World Geodetic System 1984 (WGS 84, EPSG:4326; EPSG is the European Petroleum Survey Group registry) and gradians in Nouvelle triangulation de la France (NTF), with the Paris meridian (EPSG:4807). | Area of the polygon obtained by projecting its vertices with the equal-area Lambert azimuthal projection centered on the first vertex, which preserves areas, in square meters. If projection fails, CalculateArea methods return 0. |

## Methods

| Method | Description |
| :--- | :--- |
| `double CalculateDistance2D(Point2D pointA, Point2D pointB)`<br>`double CalculateDistance2D(Point3D pointA, Point3D pointB)` | Distance between the two points in the X, Y plane. |
| `double CalculateDistance3D(Point3D pointA, Point3D pointB)` | Distance between the two points accounting for their Z difference. With a geographic system, the square root of the sum of the squares of the geodesic distance and Z difference. |
| `double CalculatePerimeter2D(ReadOnlyLine line)` | Sum of the distances in the X, Y plane between each line vertex and the next. |
| `double CalculatePerimeter3D(ReadOnlyLine line)` | Sum of the 3D distances between each line vertex and the next, using each vertex's Z. |
| `double CalculateArea(ReadOnlyLine line)` | Line area in the X, Y plane. Throws `Exception` if the line is not closed (`Closed` is `false`). |
| `double CalculateArea(ReadOnlyPolygon polygon)` | Polygon outer boundary area minus each hole's area, calculated using the hole's vertices. |

Area is signed: positive for clockwise vertices and negative for counterclockwise vertices. `CalculateArea(ReadOnlyPolygon)` subtracts each hole's signed area, so a hole oriented opposite to the outer boundary adds its area instead of subtracting it. To obtain unsigned area, use `Math.Abs`.

Parameters are [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md), [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md), [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) and [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/).

## Example

This command sums the area and perimeter of non-deleted closed lines in the active drawing file and writes the result to the results window:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "AREA_LINEAS_CERRADAS")]
public class AreaLineasCerradas : Command
{
    public AreaLineasCerradas()
    {
        Initialize += (sender, e) =>
        {
            var calculadora = DigiNG.GeographicCalculator;
            var área = 0.0;
            var perímetro = 0.0;

            foreach (var línea in DigiNG.DrawingFile.OfType<ReadOnlyLine>().Where(l => !l.Deleted && l.Closed))
            {
                área += Math.Abs(calculadora.CalculateArea(línea));
                perímetro += calculadora.CalculatePerimeter2D(línea);
            }

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Área: {área:F2}  Perímetro: {perímetro:F2}");
            Dispose();
        };
    }
}
```
