# GeographicCalculator
<!-- id: geographiccalculator -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Calcula áreas, perímetros y distancias según el sistema de referencia de coordenadas de la ventana de dibujo. Con un sistema geográfico, los resultados están en metros y metros cuadrados, aunque las coordenadas estén en grados.

```csharp
public sealed class GeographicCalculator
```

La clase no tiene constructores públicos. El objeto se obtiene con la propiedad estática [DigiNG.GeographicCalculator](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), que crea un objeto nuevo en cada lectura. El objeto queda ligado a la ventana de dibujo activa en el momento de obtenerlo: cuando esa ventana se cierra, todos los métodos lanzan `ObjectDisposedException`.

El cálculo depende de la parte horizontal del sistema de referencia de coordenadas de la ventana de dibujo:

| Sistema horizontal | Distancias y perímetros | Áreas |
| :--- | :--- | :--- |
| Proyectado o local | Distancia euclídea, en las unidades del sistema. | Área plana, en las unidades del sistema al cuadrado. |
| Geográfico | Distancia geodésica sobre el elipsoide del sistema, en metros. Las coordenadas X e Y son la longitud y la latitud en grados. | Área de los vértices proyectados con una proyección estereográfica oblicua centrada en el primer vértice, en metros cuadrados. Si la proyección falla, devuelve 0. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `double CalculateDistance2D(Point2D pointA, Point2D pointB)`<br>`double CalculateDistance2D(Point3D pointA, Point3D pointB)` | Distancia entre los dos puntos en el plano X, Y. |
| `double CalculateDistance3D(Point3D pointA, Point3D pointB)` | Distancia entre los dos puntos teniendo en cuenta la diferencia de Z. Con un sistema geográfico, es la raíz cuadrada de la suma de los cuadrados de la distancia geodésica y la diferencia de Z. |
| `double CalculatePerimeter2D(ReadOnlyLine line)` | Suma de las distancias en el plano X, Y entre cada vértice de la línea y el siguiente. |
| `double CalculatePerimeter3D(ReadOnlyLine line)` | Suma de las distancias 3D entre cada vértice de la línea y el siguiente, con la Z de cada vértice. |
| `double CalculateArea(ReadOnlyLine line)` | Área de la línea en el plano X, Y. Lanza `Exception` si la línea no está cerrada (`Closed` vale `false`). |
| `double CalculateArea(ReadOnlyPolygon polygon)` | Área del contorno exterior del polígono menos el área de cada hueco, calculada con los vértices del hueco. |

El área tiene signo: es positiva si los vértices están en sentido horario y negativa si están en sentido antihorario. `CalculateArea(ReadOnlyPolygon)` resta el área de cada hueco con su signo, así que un hueco con el sentido contrario al del contorno exterior suma su área en lugar de restarla. Para obtener el área sin signo, usa `Math.Abs`.

Los parámetros son [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md), [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md), [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) y [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/).

## Ejemplo

Esta orden suma el área y el perímetro de las líneas cerradas no eliminadas del archivo de dibujo activo y escribe el resultado en la ventana de resultados:

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
