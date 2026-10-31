# Codes
<!-- id: codes-2 -->
<!-- origen: 0506a9cfbe3c06186c350430eecbbb60359556aa -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity codes.

```csharp
public IList<Code> Codes { get; }
```

## Property value

A [CodeCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/codecollection/), always the same instance for each entity. Collection changes apply to the entity. If the entity is read-only, methods modifying the collection throw `InvalidOperationException`.

Each element is a copy of the [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/). To change a code, modify the copy and assign it through the indexer.

## Example

```csharp
var código = línea.Codes[0];
código.Visible = 0;
línea.Codes[0] = código;
```
