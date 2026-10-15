# Area
<!-- id: area-3 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Área con signo del polígono en el plano X, Y.

```csharp
public double Area { get; }
```

## Valor de la propiedad

El área con signo del contorno exterior menos el área con signo de cada hueco. Cada área se calcula como [ReadOnlyLine.Area](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/area.md): positiva si los vértices están en sentido horario y negativa si están en sentido antihorario.

Si los huecos tienen el mismo sentido que el contorno exterior, el resultado es la superficie del recinto (con el signo del contorno). Si un hueco tiene el sentido contrario, su área se suma en lugar de restarse. Para obtener la superficie sin depender del sentido de los vértices, resta al valor absoluto del área del contorno exterior el valor absoluto del área de cada hueco, como en el ejemplo.

La propiedad no comprueba el número de vértices: no la uses en un polígono sin vértices.

## Ejemplo

```csharp
// Area + suma de las áreas de los huecos = área con signo del contorno exterior.
var áreaExterior = polígono.Area + polígono.Holes.Sum(h => h.Area);
var superficie = Math.Abs(áreaExterior) - polígono.Holes.Sum(h => Math.Abs(h.Area));
```
