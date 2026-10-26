# Codes
<!-- id: codes -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Códigos de la tabla de códigos.

```csharp
public IEnumerable<NodeDigiTab> Codes { get; }
```

## Valor de la propiedad

`IEnumerable<NodeDigiTab>`. Cada lectura crea una matriz nueva con un [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) por código, en el orden de la tabla. Los `NodeDigiTab` no son copias: asignar una propiedad de uno de ellos cambia el código en la tabla. En una tabla no modificable, esas asignaciones lanzan `InvalidOperationException`.

La matriz que devuelve `Codes` no incorpora los códigos que se añaden con `AddCode` después de leer `Codes`: lee `Codes` otra vez para obtener una matriz que los incluya.
