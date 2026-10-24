# Clone
<!-- id: clone-6 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve una copia del [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/) como [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) de lectura y escritura.

```csharp
public new Text Clone()
```

## Valor devuelto

Un `Text` nuevo con `Owner` a `null` (`ReadOnly` es `false`). La copia tiene la cadena, la coordenada de inserción, la altura, la rotación, la orientación en el espacio (`Orientation`), la justificación, los códigos con sus atributos, el color, el grosor, el color de relleno, los atributos de la entidad, la marca de eliminada (`Deleted`) y las coordenadas mínimas y máximas del original. `CreationTime` es la hora de la copia.

Este método oculta [Entity.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md). Las dos llamadas devuelven un `Text` con los mismos datos y se diferencian en `Code.Attributes`: en la copia que devuelve este método, el diccionario de atributos de cada código es de solo lectura; `Entity.Clone` lo sustituye por un `Dictionary<string, object>` modificable con los mismos valores.

Para guardar en otro archivo de dibujo un texto leído de un archivo, añade la copia: `IDrawingFile.Add` lanza `InvalidOperationException` con una entidad que pertenece a otro archivo.
