# TransformationOptions
<!-- id: digi21.coordinatesystems.transformationoptions -->
<!-- origen: f471f91ed5ff65f341f04299d80078244fd24ddf -->

Namespace: `Digi21.CoordinateSystems`  
Assembly: [Digi21.CoordinateSystems](/digi3d-ai/programacion/.net/referencia/digi21.coordinatesystems/)

Options for [`CoordinateTransformation.Create`](coordinatetransformation.md#create).

```csharp
public sealed class TransformationOptions
```

The EPSG database may contain several operations between two coordinate reference systems; for example, it contains fifteen from ED50 to ETRS89, one per country or region, with accuracies from 5 cm to 5 m. Between two vertical systems it may contain none. These options specify what to do in both cases.

## Properties

| Property | Description |
| :--- | :--- |
| `SelectCoordinateOperation SelectOperation` | Delegate that chooses the operation when several exist. If it is `null` and several exist, `Create` throws `TransformationNotFoundException`. |
| `CreateVerticalTransformation CreateVerticalTransformation` | Delegate that creates the vertical transformation when the EPSG database contains none, or `null`. |

## Static properties

Each read of `BestAccuracy` or `Interactive` returns a new instance, which you can modify without affecting other calls.

### BestAccuracy

The `BestAccuracy` options do not display a user interface and are used by `Create` when no options are supplied:

1. If you selected the option in the Digi3D.AI selection dialog to always use the same operation for the transformation's source and target systems, the saved operation is chosen.
2. If no operation is saved, the operation with the lowest `Accuracy` value is chosen (operations without a declared accuracy are considered last).
3. If the chosen operation cannot be constructed, for example because the NTv2 grid file is missing, it is discarded and the next operation is chosen.

The vertical transformation is the one you saved for the source and target systems in the Digi3D.AI dialog box, if one is saved for those systems.

### Interactive

The `Interactive` options display Digi3D.AI dialog boxes so you can choose the operation and vertical offset between two systems without a transformation. If you saved the operation or vertical offset choice for the source and target systems, the corresponding dialog box does not appear.

Within Digi3D.AI, `Interactive` options can only be used from the main thread; from another thread, `Create` throws `InvalidOperationException`. A console application has no Digi3D.AI main thread, and dialog boxes are displayed from the thread calling `Create`. If you cancel a dialog box, `Create` throws `CoordinateSystemException`.

## Delegates

### SelectCoordinateOperation

```csharp
public delegate int SelectCoordinateOperation(string sourceName, string targetName, IReadOnlyList<CoordinateOperation> operations);
```

Receives the names of the two systems between which several operations exist (these may be the geographic systems underlying those passed to `Create`) and the list of operations. Returns the code (`Code`) of the chosen operation, which must be one of those in the list.

### CreateVerticalTransformation

```csharp
public delegate VerticalTransformation CreateVerticalTransformation(string sourceName, string targetName);
```

Receives the names of the two vertical systems (or the geographic 3D system and the vertical system) and returns the vertical transformation, or `null` if none exists; in that case, `Create` throws `TransformationNotFoundException`.

## CoordinateOperation

Coordinate operation from the EPSG database.

| Property | Description |
| :--- | :--- |
| `int Code` | Operation's EPSG code. |
| `string Name` | Name, for example `ED50 to ETRS89 (16)`. |
| `string Type` | Operation type (`transformation`). |
| `string Version` | Version, for example `IGN-Esp v3 pen`, or `null`. |
| `int? Variant` | Variant, or `null`. |
| `string Scope` | Scope of use, or `null`. |
| `double? Accuracy` | Accuracy in meters, or `null`. |
| `int MethodCode` | Method's EPSG code, for example 9615 (NTv2). |
| `string Remarks` | Remarks, or `null`. |
| `string InformationSource` | Information source, or `null`. |

## VerticalTransformation

Transformation between two vertical systems.

| Method | Description |
| :--- | :--- |
| `static VerticalTransformation Offset(double meters)` | Transformation that adds a constant offset in meters to the height. |

## Example

The following example chooses an operation from the Instituto Geográfico Nacional (IGN) if one is available; otherwise, it chooses the first operation in the list. If there is no vertical transformation, it adds 10 meters to the height:

```csharp
var opciones = new TransformationOptions
{
    SelectOperation = (origen, destino, operaciones) =>
        operaciones.FirstOrDefault(o => o.Version?.StartsWith("IGN-Esp") == true)?.Code ?? operaciones[0].Code,
    CreateVerticalTransformation = (origen, destino) => VerticalTransformation.Offset(10.0)
};

using var transformación = CoordinateTransformation.Create(
    CoordinateSystem.FromEpsg(23030),
    CoordinateSystem.FromEpsg(25830),
    opciones);
```
