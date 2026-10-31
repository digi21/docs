# Hidden
<!-- id: hidden -->
<!-- origen: 1f12664a22529af3d4b794a0b77c755372c6c37f -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Hides the entity in the drawing window.

```csharp
public bool Hidden { get; set; }
```

## Property value

`true` if the entity is hidden. With `Hidden` set to `true`, [Visible](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/visible.md) is `false`.

The `set` accessor does not check whether the entity is read-only: `Hidden` can be assigned on an entity read from a drawing file. `Clone()` does not copy `Hidden`.
