# RelatedCommandAttribute
<!-- id: relatedcommandattribute -->
<!-- origen: b828398f47bc7c1b63222f5aea4deb4caee958e1 -->

Namespace: `Digi21.DigiNG.Plugin.Command`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Specifies the name of a command related to the command implemented by the class. A class can have several `RelatedCommand` attributes.

```csharp
[AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
public class RelatedCommandAttribute : Attribute
```

In version 26.0.0, Digi3D.AI does not read this attribute: it does not affect command registration or execution.

## Constructors

```csharp
public RelatedCommandAttribute()
```

Creates the attribute with `Name` set to `null`.

## Properties

| Property | Description |
| :--- | :--- |
| `string Name { get; set; }` | Related command name. |

## Example

The [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md#example) example relates `MIDE_DISTANCIA_2D` to `MIDE_DISTANCIA`.
