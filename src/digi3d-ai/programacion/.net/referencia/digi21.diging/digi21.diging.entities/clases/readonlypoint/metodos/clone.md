# Clone
<!-- id: clone-4 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve una copia del [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/) como [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) de lectura y escritura.

```csharp
public new Point Clone()
```

## Valor devuelto

Un `Point` nuevo con `Owner` a `null` (`ReadOnly` es `false`). El `Point` devuelto tiene la coordenada, la rotación, los códigos con sus atributos, el color, el grosor, el color de relleno, los atributos de la entidad, la marca de eliminada (`Deleted`) y las coordenadas mínimas y máximas del punto original. `CreationTime` del `Point` devuelto es la fecha y hora en que se creó la copia.

Este método oculta [Entity.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md). Las dos llamadas devuelven un `Point` con los mismos datos y se diferencian en `Code.Attributes`: en la copia que devuelve este método, el diccionario de atributos de cada código es de solo lectura; `Entity.Clone` lo sustituye por un `Dictionary<string, object>` modificable con los mismos valores.

Para guardar en otro archivo de dibujo un punto leído de un archivo, añade la copia: `IDrawingFile.Add` lanza `InvalidOperationException` con una entidad que pertenece a otro archivo.
