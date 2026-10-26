# DuplicityDetector
<!-- id: digi21.diging.topology.duplicitydetector -->

Espacio de nombres: `Digi21.DigiNG.Topology`  
Ensamblado: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Detecta las entidades duplicadas de una secuencia: entidades del mismo tipo con los mismos vértices en el plano XY.

```csharp
public static class DuplicityDetector
```

## Métodos estáticos

### DetectDuplicity

```csharp
public static IList<IList<Entity>> DetectDuplicity(this IEnumerable<Entity> entities)
```

Devuelve una lista de grupos. Cada grupo es una lista con una entidad y todas las que la duplican; tiene al menos dos entidades. Una entidad aparece como mucho en un grupo. Si no hay duplicados, devuelve una lista vacía. Las entidades de los grupos son las mismas instancias de `entities`.

Dos entidades son duplicadas si se cumplen todas estas condiciones, comparando con la tolerancia de [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md):

1. Son del mismo tipo (línea, punto, texto, polígono o complejo).
2. Tienen iguales la X mínima, la X máxima y la Y mínima.
3. Tienen el mismo número de vértices. Un texto cuenta como un vértice: su punto de inserción.
4. Cada vértice `k` de una coincide en X e Y con el vértice `k` o con el vértice `n − 1 − k` de la otra, siendo `n` el número de vértices. Así, una línea y la misma línea digitalizada al revés son duplicadas.

El detector no compara la coordenada Z, los códigos, los atributos, el contenido de las entidades de texto ni el estado de eliminación: las entidades eliminadas también se analizan. Si no quieres incluir las entidades eliminadas, fíltralas antes de buscar duplicados.

El orden de los grupos y el de las entidades dentro de cada grupo no es el de `entities`: el método ordena las entidades por su Y mínima.

## Ejemplo

Este programa busca las entidades duplicadas no eliminadas de un archivo `.bin`:

```csharp
using Digi21.DigiNG.IO.Bin;
using Digi21.DigiNG.Topology;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Duplicadas <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);

var grupos = archivo.Where(entidad => !entidad.Deleted).DetectDuplicity();

foreach (var grupo in grupos)
    Console.WriteLine($"{grupo.Count} entidades iguales: {string.Join(" | ", grupo)}");

Console.WriteLine($"{grupos.Count} grupos de entidades duplicadas.");
return 0;
```
