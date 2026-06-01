# Area

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Devuelve el área del [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/).

```csharp
public double Area { get; }
```

## Valor de la propiedad

[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)

Área de la línea.

## Observaciones

El sentido en el que está digitalizada la línea influye en el signo del área devuelto por esta propiedad. Si la línea está digitalizada en sentido horario el signo será positivo, y si está digitalizada en sentido antihorario, el signo será negativo.



