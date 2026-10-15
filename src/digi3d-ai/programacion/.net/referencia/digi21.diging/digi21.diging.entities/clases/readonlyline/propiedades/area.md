# Area
<!-- id: area-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Área con signo del recinto que delimitan los vértices, en el plano X, Y.

```csharp
public double Area { get; }
```

## Valor de la propiedad

El área calculada con la fórmula del área de Gauss sobre los vértices, cerrando el recinto del último vértice al primero aunque la línea no esté cerrada. El signo depende del sentido de los vértices:

- positiva si los vértices están en sentido horario;
- negativa si están en sentido antihorario.

Para obtener la superficie, usa `Math.Abs(línea.Area)`. Si los segmentos de la línea se cortan entre sí, el resultado no es la superficie del recinto.

La propiedad no comprueba el número de vértices: no la uses en una línea sin vértices.
