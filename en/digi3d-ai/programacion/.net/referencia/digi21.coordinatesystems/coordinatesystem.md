# CoordinateSystem
<!-- id: digi21.coordinatesystems.coordinatesystem -->
<!-- origen: f2715826b2488bcce27e2095da06ae3439ff464a -->

Namespace: `Digi21.CoordinateSystems`  
Assembly: [Digi21.CoordinateSystems](/digi3d-ai/programacion/.net/referencia/digi21.coordinatesystems/)

Coordinate reference system (CRS).

```csharp
public sealed class CoordinateSystem
```

The class has no public constructors: systems are created using static methods. A `CoordinateSystem` does not change after creation and can be shared between threads.

## Static methods

| Method | Description |
| :--- | :--- |
| `FromEpsg(int code)` | Creates the system with the specified EPSG code, such as `25830` or `4979`. Throws `ArgumentOutOfRangeException` if the code is not positive and `CoordinateSystemException` if it is not in the EPSG database. |
| `FromEpsg(int horizontal, int vertical)` | Creates a compound system from an EPSG horizontal system (projected or geographic 2D) and a vertical system, for example `FromEpsg(25830, 5782)` for ETRS89 / UTM zone 30N with Alicante heights. Throws `ArgumentException` if the first code is not horizontal or the second is not vertical. |
| `FromWkt(string wkt)` | Creates the system from its WKT definition (OGC 01-009). Throws `ArgumentException` if the text is not a single complete WKT element (balanced brackets and quotation marks) and `CoordinateSystemException` if it cannot be interpreted. |
| `Parse(string text)` | Creates the system from text in the form `EPSG:<código>` (case-insensitive) or a WKT definition. This follows the same rule as the `crs` parameter of the `digi21.io` Python modules. Throws `ArgumentException` if the text is empty or the code is not a number. |

## Methods

### WithEastNorthAxes

```csharp
public CoordinateSystem WithEastNorthAxes()
```

Returns the same system with the east axis first and the north axis second. In a geographic system, longitude becomes the first coordinate and latitude the second; in a compound system, the horizontal system's order changes. If the system already uses that order, for example EPSG:25830, it returns the same instance.

## Properties

| Property | Description |
| :--- | :--- |
| `string Wkt` | System's WKT definition. |
| `string Name` | System name, for example `ETRS89 / UTM zone 30N`. |
| `string Authority` | Authority defining the system (`EPSG`), or an empty string. A system created using `FromEpsg(int, int)` has no authority. |
| `int? AuthorityCode` | System code within its authority, or `null`. |
| `int Dimension` | Number of coordinates of a point in this system: 1 (vertical), 2 or 3. |
| `bool IsLocal` | `true` if the horizontal system is local (unknown). |
| `(int Horizontal, int Vertical) EpsgCodes` | EPSG codes of the horizontal and vertical components. A component without an EPSG code has a value of 0. A geographic 3D system, such as EPSG:4979, returns its code as horizontal. |

## Example

```csharp
var compuesto = CoordinateSystem.FromEpsg(25830, 5782);
Console.WriteLine(compuesto.Name);        // ETRS89 / UTM zone 30N + Alicante height
Console.WriteLine(compuesto.Dimension);   // 3
Console.WriteLine(compuesto.EpsgCodes);   // (25830, 5782)

var ventana = CoordinateSystem.FromWkt(Digi21.DigiNG.DigiNG.Wkt);
```
