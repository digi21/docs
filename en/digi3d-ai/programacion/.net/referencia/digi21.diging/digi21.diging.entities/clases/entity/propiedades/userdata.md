# UserData
<!-- id: userdata -->
<!-- origen: 42adc805a35ab156979deea2dd2edbd740e19a6d -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Programmer's object associated with the entity.

```csharp
public object UserData { get; set; }
```

## Property value

The assigned object, or `null`. The library does not use this value: it is not stored in drawing files or copied by `Clone()`. It can also be assigned on a read-only entity.
