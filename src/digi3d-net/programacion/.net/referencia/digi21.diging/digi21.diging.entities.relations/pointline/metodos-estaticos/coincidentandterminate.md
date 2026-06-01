# CoincidentAndTerminate

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Indica si el [ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/).

![Punto coincidente con extremo de l&#xED;nea](../../../../../../../../.gitbook/assets/puntolineacoincidentesextremo.png)

```csharp
public static bool CoincidentAndTerminate(ReadOnlyPoint point, ReadOnlyLine line)
```

### Parámetros

`point` [ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/)  
Punto.

`line` [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)  
Línea.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si el punto es coincidente con alguno de los extremos de la línea.

