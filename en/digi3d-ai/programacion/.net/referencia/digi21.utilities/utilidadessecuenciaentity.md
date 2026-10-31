# UtilidadesSecuenciaEntity
<!-- id: digi21.utilities.utilidadessecuenciaentity -->
<!-- origen: 4d590ab1ce99b50069776203732fc663f42f933b -->

Namespace: `Digi21.Utilities`  
Assembly: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

`IEnumerable<Entity>` extension methods filtering or transforming an entity sequence, such as a drawing file or another filter's result.

```csharp
public static class UtilidadesSecuenciaEntity
```

All methods return a sequence evaluated when iterated, like LINQ operators: the drawing file is read when iterating the result, rather than when calling the method. Generic methods `<T>` require `T : Entity` (except `ExplotaAReadOnlyLine<T>`) and return entities with the same type `T` as the input sequence, allowing chaining.

## Static methods

### Copying

| Method | Description |
| :--- | :--- |
| `IEnumerable<Entity> SecuenciaDeClones(this IEnumerable<Entity> secuenciaOriginal)` | Returns the result of `Clone()` for each entity. Copies belong to no drawing file, so they can be added to another file. |

### Type filters

`SoloLíneas`, `SoloPuntos`, `SoloTextos`, `SoloPolígonos` and `SoloComplejos` are marked `[Obsolete("Utilizar mejor OfType<T>")]`: the compiler issues warning CS0618. `OfType<ReadOnlyLine>()` from `System.Linq.Enumerable` returns the same lines as `SoloLíneas`.

| Method | Description |
| :--- | :--- |
| `IEnumerable<ReadOnlyLine> SoloLíneas(this IEnumerable<Entity> secuenciaOriginal)` | Entities of type `ReadOnlyLine` (includes `Line`). |
| `IEnumerable<ReadOnlyPoint> SoloPuntos(this IEnumerable<Entity> secuenciaOriginal)` | Entities of type `ReadOnlyPoint`. |
| `IEnumerable<ReadOnlyText> SoloTextos(this IEnumerable<Entity> secuenciaOriginal)` | Entities of type `ReadOnlyText`. |
| `IEnumerable<ReadOnlyPolygon> SoloPolígonos(this IEnumerable<Entity> secuenciaOriginal)` | Entities of type `ReadOnlyPolygon`. |
| `IEnumerable<ReadOnlyComplex> SoloComplejos(this IEnumerable<Entity> secuenciaOriginal)` | Entities of type `ReadOnlyComplex`. |

### Window filters

| Method | Description |
| :--- | :--- |
| `IEnumerable<T> QueSolapanCon<T>(this IEnumerable<T> secuenciaOriginal, IWindow2D wnd)` | Entities whose box (minimum and maximum X and Y coordinates) intersects or touches window `wnd`. Uses `Window2D.Intersects`. When iterating the result, throws `InvalidOperationException` if `wnd` or an entity has no coordinates (`Xmin` is `null`). |

### Code filters

Methods call those of [UtilidadesEntity](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesentity.md), where wildcard rules are described.

| Method | Description |
| :--- | :--- |
| `IEnumerable<T> QueTenganElCódigo<T>(this IEnumerable<T> secuenciaOriginal, string código)` | Entities with a code named exactly `código`. |
| `IEnumerable<T> QueNoTenganElCódigo<T>(this IEnumerable<T> secuenciaOriginal, string código)` | Entities with no code named exactly `código`. |
| `IEnumerable<T> QueTenganElCódigoConComodín<T>(this IEnumerable<T> secuenciaOriginal, string código)` | Entities with a code matching `código`, using wildcards. |
| `IEnumerable<T> QueTenganAlgúnCódigo<T>(this IEnumerable<T> secuenciaOriginal, IEnumerable<string> códigos)` | Entities with a code named exactly like an element of `códigos`. |
| `IEnumerable<T> QueNoTenganAlgúnCódigo<T>(this IEnumerable<T> secuenciaOriginal, IEnumerable<string> códigos)` | Entities with no code named like an element of `códigos`. |
| `IEnumerable<T> QueTenganAlgúnCódigoConComodín<T>(this IEnumerable<T> secuenciaOriginal, IEnumerable<string> códigos)` | Entities with a code matching an element of `códigos`, using wildcards. |

### State filters

| Method | Description |
| :--- | :--- |
| `IEnumerable<T> Eliminadas<T>(this IEnumerable<T> secuenciaOriginal)` | Entities with `Deleted` set to `true`. |
| `IEnumerable<T> NoEliminadas<T>(this IEnumerable<T> secuenciaOriginal)` | Entities with `Deleted` set to `false`. |
| `IEnumerable<T> Visibles<T>(this IEnumerable<T> secuenciaOriginal)` | Entities with a code whose `Visible` property is not `0`, according to [AlgúnCódigoVisible](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesentity.md). The entity's `Hidden` property is not queried. |

### Conversion to lines

| Method | Description |
| :--- | :--- |
| `IEnumerable<ReadOnlyLine> ExplotaAReadOnlyLine<T>(this IEnumerable<T> secuenciaOriginal)` | Concatenates the result of converting each entity to lines, using the same rules as [UtilidadesEntity.ExplotaAReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesentity.md#explotaareadonlyline). `T` is unconstrained: elements that are not lines, polygons or complexes are ignored. |

## Example

This program reads a `.bin` file and shows how many non-deleted entities with codes `02*` are inside a window, and the total length of the lines obtained by converting them to lines:

```csharp
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;
using Digi21.Utilities;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Altimetría <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);
var ventana = new Window2D(440000, 4470000, 441000, 4471000);

var seleccionadas = archivo
    .NoEliminadas()
    .QueTenganElCódigoConComodín("02*")
    .QueSolapanCon(ventana)
    .ToList();

var longitud = seleccionadas.ExplotaAReadOnlyLine().Sum(línea => línea.Perimeter);

Console.WriteLine($"{seleccionadas.Count} entidades, {longitud:F2} m de líneas.");
return 0;
```
