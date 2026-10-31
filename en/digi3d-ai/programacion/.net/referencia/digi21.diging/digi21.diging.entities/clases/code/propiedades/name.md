# Name
<!-- id: name-3 -->
<!-- origen: 11444506f1142c7fd03eeb038c9197587106abb6 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Code name: identifies the code in the code table.

```csharp
public string Name { get; }
```

## Property value

The name passed to the constructor. In `default(Code)`, it is `null`. The value cannot be changed: to change an entity's code, assign another `Code` to `Entity.Codes[i]`.
