# CoordinateTransformation
<!-- id: digi21.coordinatesystems.coordinatetransformation -->

Espacio de nombres: `Digi21.CoordinateSystems`  
Ensamblado: [Digi21.CoordinateSystems](/digi3d-ai/programacion/.net/referencia/digi21.coordinatesystems/)

Transformación de coordenadas de un sistema de referencia de coordenadas a otro.

```csharp
public sealed class CoordinateTransformation : IDisposable
```

La transformación utiliza memoria de la biblioteca nativa. Llama a `Dispose` (o usa `using`) cuando ya no necesites la transformación; si no llamas a `Dispose`, el recolector de basura libera la memoria de la transformación.

## Métodos estáticos

### Create

```csharp
public static CoordinateTransformation Create(CoordinateSystem source, CoordinateSystem target)
public static CoordinateTransformation Create(CoordinateSystem source, CoordinateSystem target, TransformationOptions options)
```

Crea la transformación de `source` a `target`. `options` indica cómo se elige la operación cuando la base de datos de EPSG tiene varias y cómo se crea una transformación vertical que la base de datos no tiene; sin `options`, o si es `null`, se usa [`TransformationOptions.BestAccuracy`](transformationoptions.md#bestaccuracy).

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `source` o `target` es `null`. |
| `InvalidOperationException` | `options` es `TransformationOptions.Interactive` y el hilo no es el principal de Digi3D.AI. |
| `TransformationNotFoundException` | No hay ninguna transformación entre los dos sistemas, o no se puede construir (por ejemplo, porque falta el archivo de una rejilla NTv2). |
| `CoordinateSystemException` | El usuario cancela un cuadro de diálogo, o el delegado `SelectOperation` devuelve un código que no está entre las operaciones que recibe. |

Si uno de los delegados de `options` lanza una excepción, esta se propaga desde `Create` sin cambios: se conservan la instancia de la excepción y su pila de llamadas.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `CoordinateSystem Source` | Sistema de origen. |
| `CoordinateSystem Target` | Sistema de destino. |
| `string Name` | Nombre de la transformación, o una cadena vacía. |
| `string AreaOfUse` | Descripción del área de uso, o una cadena vacía. |
| `int SourceDimension` | Número de coordenadas que recibe la transformación. |
| `int TargetDimension` | Número de coordenadas que devuelve la transformación. |
| `bool IsIdentity` | `true` si la transformación no cambia las coordenadas. |
| `CoordinateTransformation Inverse` | Transformación inversa, de `Target` a `Source`. Se crea la primera vez que se pide y se libera con esta transformación. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `Point2D Transform(Point2D point)` | Transforma un punto 2D. |
| `Point3D Transform(Point3D point)` | Transforma un punto 3D. |
| `void Transform(Span<Point3D> points)` | Transforma los puntos sobre el mismo bloque de memoria. |
| `void Transform(ReadOnlySpan<Point3D> source, Span<Point3D> destination)` | Transforma los puntos de `source` y los escribe en `destination`, que puede solaparse con `source`. Lanza `ArgumentException` si `destination` tiene menos elementos que `source`. |
| `void Transform(Span<double> coordinates, int dimension)` | Transforma coordenadas guardadas seguidas (`x0, y0, x1, y1…` con `dimension` 2, o `x0, y0, z0…` con `dimension` 3) sobre el mismo bloque de memoria. |
| `void Dispose()` | Libera la transformación y su inversa. Después de que `Dispose` libere la transformación, los métodos `Transform` y el descriptor `get` de `Inverse` lanzan `ObjectDisposedException`. |

Los métodos `Transform` lanzan `CoordinateSystemException` si un punto no se puede transformar, por ejemplo porque está fuera del área de una rejilla. En las sobrecargas con `Span` que transforman sobre el mismo bloque, los puntos anteriores al que falla ya están transformados y los siguientes no; el mensaje de la excepción indica el índice del punto que falla.

## Dimensiones

- Si el sistema de destino tiene dos dimensiones, la `Z` de un `Point3D` transformado es la `Z` de entrada sin cambios.
- Si el sistema de origen tiene dos dimensiones, la `Z` de entrada no se usa para transformar.
- Si el sistema de origen es vertical (una dimensión), solo se transforma la `Z`, y `Transform(Point2D)` y `Transform(Span<double>, 2)` lanzan `InvalidOperationException`.

## Ejemplo

```csharp
using Digi21.CoordinateSystems;
using Digi21.Math;

var ed50 = CoordinateSystem.FromEpsg(23030);
var etrs89 = CoordinateSystem.FromEpsg(25830);

using var transformación = CoordinateTransformation.Create(ed50, etrs89);

Point3D[] puntos = LeePuntos();
transformación.Transform(puntos);                  // de ED50 a ETRS89, sobre el mismo vector

var original = transformación.Inverse.Transform(puntos[0]);
```
