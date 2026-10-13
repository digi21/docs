# CoordinateSystem
<!-- id: digi21.coordinatesystems.coordinatesystem -->

Espacio de nombres: `Digi21.CoordinateSystems`  
Ensamblado: [Digi21.CoordinateSystems](/digi3d-ai/programacion/.net/referencia/digi21.coordinatesystems/)

Sistema de referencia de coordenadas (SRC).

```csharp
public sealed class CoordinateSystem
```

La clase no tiene constructores públicos: los sistemas se crean con los métodos estáticos. Un `CoordinateSystem` no cambia después de crearse y se puede compartir entre hilos.

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| `FromEpsg(int code)` | Crea el sistema con el código EPSG indicado, por ejemplo `25830` o `4979`. Lanza `ArgumentOutOfRangeException` si el código no es positivo y `CoordinateSystemException` si no está en la base de datos de EPSG. |
| `FromEpsg(int horizontal, int vertical)` | Crea un sistema compuesto por un sistema horizontal (proyectado o geográfico 2D) y uno vertical de EPSG, por ejemplo `FromEpsg(25830, 5782)` para ETRS89 / UTM huso 30N con altitudes de Alicante. Lanza `ArgumentException` si el primer código no es horizontal o el segundo no es vertical. |
| `FromWkt(string wkt)` | Crea el sistema a partir de su definición WKT (OGC 01-009). Lanza `ArgumentException` si el texto no es un único elemento WKT completo (corchetes y comillas equilibrados) y `CoordinateSystemException` si no se puede interpretar. |
| `Parse(string text)` | Crea el sistema a partir de un texto con la forma `EPSG:<código>` (sin distinguir mayúsculas de minúsculas) o con una definición WKT. Es la misma regla que el parámetro `crs` de los módulos Python `digi21.io`. Lanza `ArgumentException` si el texto está vacío o el código no es un número. |

## Métodos

### WithEastNorthAxes

```csharp
public CoordinateSystem WithEastNorthAxes()
```

Devuelve el mismo sistema con el eje este en primer lugar y el norte en segundo. En un sistema geográfico, la longitud pasa a ser la primera coordenada y la latitud la segunda; en uno compuesto, se cambia el orden del sistema horizontal. Si el sistema ya tiene ese orden, por ejemplo EPSG:25830, devuelve la misma instancia.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Wkt` | Definición WKT del sistema. |
| `string Name` | Nombre del sistema, por ejemplo `ETRS89 / UTM zone 30N`. |
| `string Authority` | Autoridad que define el sistema (`EPSG`), o una cadena vacía. Un sistema creado con `FromEpsg(int, int)` no tiene autoridad. |
| `int? AuthorityCode` | Código del sistema en su autoridad, o `null`. |
| `int Dimension` | Número de coordenadas de un punto en este sistema: 1 (vertical), 2 o 3. |
| `bool IsLocal` | `true` si el sistema horizontal es local (desconocido). |
| `(int Horizontal, int Vertical) EpsgCodes` | Códigos EPSG de la parte horizontal y de la parte vertical. Una parte sin código EPSG vale 0. Un sistema geográfico 3D, como EPSG:4979, devuelve su código como horizontal. |

## Ejemplo

```csharp
var compuesto = CoordinateSystem.FromEpsg(25830, 5782);
Console.WriteLine(compuesto.Name);        // ETRS89 / UTM zone 30N + Alicante height
Console.WriteLine(compuesto.Dimension);   // 3
Console.WriteLine(compuesto.EpsgCodes);   // (25830, 5782)

var ventana = CoordinateSystem.FromWkt(Digi21.DigiNG.DigiNG.Wkt);
```
