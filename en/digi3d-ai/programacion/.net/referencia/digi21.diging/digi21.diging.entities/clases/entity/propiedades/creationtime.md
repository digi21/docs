# CreationTime
<!-- id: creationtime -->
<!-- origen: 26497420b1c38bc458ad15d2feb7ae6fc725984a -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity creation date and time.

```csharp
public DateTime CreationTime { get; }
```

## Property value

Date and time with second precision and `DateTimeKind.Unspecified`.

- For an entity created with a constructor or `Clone()`, the value is the Coordinated Universal Time (UTC) date and time when the object was created.
- For an entity read from a `.bin` or `.bind` file, the value is the date and time stored with the entity in the file.
