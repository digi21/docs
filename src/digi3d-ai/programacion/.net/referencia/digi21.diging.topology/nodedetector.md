# NodeDetector
<!-- id: digi21.diging.topology.nodedetector -->

Espacio de nombres: `Digi21.DigiNG.Topology`  
Ensamblado: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Agrupa los extremos de las líneas por su coordenada XY. Cada grupo es un nodo: una coordenada y los extremos de línea que hay en ella.

```csharp
public static class NodeDetector
```

## Métodos estáticos

### DetectNodes

```csharp
public static IEnumerable<IGrouping<Point2D, VertexPointer>> DetectNodes(this IEnumerable<ReadOnlyLine> lines)

public static IEnumerable<IGrouping<Point2D, VertexPointer>> DetectNodes(
    this IEnumerable<ReadOnlyLine> model, Func<ReadOnlyLine, bool> analyzeThisLine)

public static IEnumerable<IGrouping<Point2D, VertexPointer>> DetectNodes(
    this IEnumerable<ReadOnlyLine> model, Func<Point2D, bool> insertNodeAtThisCoordinates)

public static IEnumerable<IGrouping<Point2D, VertexPointer>> DetectNodes(
    this IEnumerable<ReadOnlyLine> model,
    Func<ReadOnlyLine, bool> analyzeThisLine,
    Func<Point2D, bool> insertNodeAtThisCoordinates)
```

Por cada línea añade dos [VertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/): uno al primer vértice (`Vertex` vale `0`) y otro al último (`Vertex` vale `Points.Count - 1`). Los agrupa por coordenada XY, con la tolerancia de [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md); la clave de cada grupo es la coordenada del primer extremo que se añadió al grupo.

| Parámetro | Descripción |
| :--- | :--- |
| `lines`, `model` | Líneas que se analizan. La secuencia se recorre una sola vez, al llamar al método. Los elementos `null` se omiten. |
| `analyzeThisLine` | Se llama con cada línea. Si devuelve `false`, la línea no aporta nodos. |
| `insertNodeAtThisCoordinates` | Se llama con la coordenada de cada extremo. Si devuelve `false`, ese extremo no se añade. |

El resultado:

- Contiene todos los extremos, también los de una línea que no toca a ninguna otra: un nodo con un solo `VertexPointer` es un extremo libre. Para quedarte con los nodos en los que se juntan varias líneas, filtra con `nodo.Count() > 1`.
- Contiene el primer y el último vértice de una línea cerrada en el mismo nodo, con dos `VertexPointer` de la misma línea.
- Está ordenado por X y, a igual X, por Y. Se puede recorrer varias veces.
- No excluye las líneas eliminadas: fíltralas antes de llamar al método o con `analyzeThisLine`.

`Line` de cada `VertexPointer` es la misma instancia de la secuencia de entrada. El método no comprueba que las líneas tengan vértices: quita las líneas sin vértices antes de llamar al método, como hace el ejemplo.

### FindAll

```csharp
public static IEnumerable<Point2D> FindAll(
    this IEnumerable<IGrouping<Point2D, VertexPointer>> nodes, Point2D point, double distance)

public static IEnumerable<Point2D> FindAll(
    this IEnumerable<IGrouping<Point2D, VertexPointer>> nodes, Point2D point, double distance,
    Func<IGrouping<Point2D, VertexPointer>, bool> includeCoordinateOfThisNode)
```

Devuelve las coordenadas de los nodos que están dentro del cuadrado de lado `2 · distance` centrado en `point`: los nodos cuya X y cuya Y se diferencian de las de `point` en `distance` o menos. No es un círculo: un nodo en la esquina del cuadrado está a `distance · √2` de `point`.

| Parámetro | Descripción |
| :--- | :--- |
| `nodes` | Nodos, normalmente el resultado de `DetectNodes`. |
| `point` | Centro de la búsqueda. |
| `distance` | Mitad del lado del cuadrado de búsqueda. |
| `includeCoordinateOfThisNode` | Se llama con cada nodo que cumple la condición en X. Si devuelve `false`, el nodo no se incluye. |

El resultado se devuelve en el orden de `nodes`, en una lista ya calculada. `nodes` se recorre entero en cada llamada.

## Ejemplo

Este programa detecta los extremos libres de las líneas no eliminadas de un archivo `.bin`, es decir, los nodos a los que solo llega un extremo, y busca para cada uno los nodos que hay a menos de 0,5 m en X y en Y:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.DigiNG.Topology;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: ExtremosLibres <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);
var líneas = archivo.OfType<ReadOnlyLine>().Where(línea => !línea.Deleted && línea.Points.Count > 0).ToList();

var nodos = líneas.DetectNodes().ToList();

foreach (var libre in nodos.Where(nodo => nodo.Count() == 1))
{
    var cercanos = nodos
        .FindAll(libre.Key, 0.5, nodo => nodo.Key != libre.Key)
        .ToList();

    Console.WriteLine($"Extremo libre en ({libre.Key.X:F2}, {libre.Key.Y:F2}): {cercanos.Count} nodos cerca");
}

return 0;
```
