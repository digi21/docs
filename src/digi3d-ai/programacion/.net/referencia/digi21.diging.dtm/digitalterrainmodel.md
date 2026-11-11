# DigitalTerrainModel
<!-- id: digi21.diging.dtm.digitalterrainmodel -->

Espacio de nombres: `Digi21.DigiNG.Dtm`  
Ensamblado: [Digi21.DigiNG.Dtm](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/)

Modelo digital del terreno (MDT) representado por una red irregular de triángulos (TIN, *triangulated irregular network*), que se lee de un archivo `.mdt` de MDTopX y devuelve la coordenada Z del terreno en un punto. El formato es el que importa Digi3D.AI con el [importador de MDT](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/mdt.md).

```csharp
public sealed class DigitalTerrainModel : IDisposable
```

Implementa: `IDisposable`.

La clase no tiene constructores públicos. Un `DigitalTerrainModel` se obtiene con [Open](#open). Llama a `DigitalTerrainModel.Dispose` (o usa `using`) para liberar la memoria de los triángulos del modelo.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string FilePath` | Ruta completa del archivo `.mdt`. |
| `string CoordinateSystemWkt` | Primera línea del archivo `.prj` que está junto al archivo `.mdt` y tiene su mismo nombre, que contiene la definición del sistema de coordenadas en formato WKT (*Well-Known Text*). Vale `null` si ese archivo no existe. |
| `Window3D Bounds` | Coordenadas mínimas y máximas del modelo, en coordenadas del terreno. |

## Métodos estáticos

### Open

```csharp
public static DigitalTerrainModel Open(string filePath)
```

Lee el archivo `.mdt` completo, en el hilo que llama al método.

| Parámetro | Descripción |
| :--- | :--- |
| `filePath` | Ruta del archivo `.mdt`. |

Devuelve el modelo digital del terreno. Llama a `DigitalTerrainModel.Dispose` para liberar la memoria de los triángulos del modelo.

`Open` no muestra cuadros de diálogo, no comprueba la licencia y no crea el archivo `.prj` del sistema de coordenadas: solo lo lee para asignar `CoordinateSystemWkt`.

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `filePath` es `null`. |
| `NotSupportedException` | La extensión de `filePath` no es `.mdt` (sin distinguir mayúsculas de minúsculas). |
| `FileNotFoundException` | El archivo no existe. |
| `IOException` | El archivo existe pero no se puede abrir. |
| `InvalidDataException` | El archivo no es un modelo digital del terreno de MDTopX válido. |
| `DllNotFoundException` | Digi3D.AI no está instalado en el equipo o su instalación está incompleta. |

## Métodos

### Project

```csharp
public double? Project(Point3D groundPoint)
```

Devuelve la coordenada Z del terreno en la X y la Y de un punto.

| Parámetro | Descripción |
| :--- | :--- |
| `groundPoint` | Punto en coordenadas del terreno. `Project` ignora la coordenada Z de `groundPoint`. |

Devuelve la coordenada Z del terreno en la X y la Y del punto, calculada en el triángulo que lo contiene. Devuelve `null` en estos casos:

- el punto queda fuera de los límites del modelo o fuera de todos sus triángulos;
- la X o la Y del punto no es un número finito;
- la X o la Y del punto, convertida a las coordenadas enteras del modelo, no cabe en un entero de 32 bits.

| Excepción | Cuándo |
| :--- | :--- |
| `ObjectDisposedException` | Se ha llamado a `Dispose` en el modelo. |

Varios hilos pueden llamar a `Project` a la vez. No llames a `Dispose` mientras haya una llamada a `Project` en curso.

Para un punto situado en una arista compartida por dos triángulos, la coordenada Z puede diferir en un error de redondeo del valor que devuelve Digi3D.AI para el mismo modelo. La diferencia medida es de 2 mm.

### Dispose

```csharp
public void Dispose()
```

Libera la memoria de los triángulos del modelo. Después de `Dispose`, `Project` lanza `ObjectDisposedException`.

## Ejemplo

Este programa abre un MDT y calcula la Z del terreno en una rejilla de puntos con un máximo de 8 hilos:

```csharp
using Digi21.DigiNG.Dtm;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: RejillaDeZ <modelo.mdt>");
    return 1;
}

using var modelo = DigitalTerrainModel.Open(args[0]);
var límites = modelo.Bounds;

var puntos = new List<Point3D>();
for (var indiceFilaDeRejilla = 0; indiceFilaDeRejilla < 100; indiceFilaDeRejilla++)
    for (var indiceColumnaDeRejilla = 0; indiceColumnaDeRejilla < 100; indiceColumnaDeRejilla++)
        puntos.Add(new Point3D(
            límites.Xmin.Value + (límites.Xmax - límites.Xmin.Value) * (indiceColumnaDeRejilla + 0.5) / 100,
            límites.Ymin + (límites.Ymax - límites.Ymin) * (indiceFilaDeRejilla + 0.5) / 100,
            0));

var coordenadasZDelTerreno = new double?[puntos.Count];

// Project admite llamadas simultáneas de varios hilos.
Parallel.For(0, puntos.Count, new ParallelOptions { MaxDegreeOfParallelism = 8 },
    indicePuntoDeRejilla => coordenadasZDelTerreno[indicePuntoDeRejilla] = modelo.Project(puntos[indicePuntoDeRejilla]));

Console.WriteLine($"{coordenadasZDelTerreno.Count(z => z.HasValue)} de {puntos.Count} puntos tienen una coordenada Z del terreno calculada.");
return 0;
```
