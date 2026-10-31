# DynamicPropertyAttribute
<!-- id: dynamicpropertyattribute -->
<!-- origen: f1a031091c10899b54defc858a4af1b084782cce -->

Namespace: `Digi21.DigiNG.Plugin.Databases`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Marks a class as a dynamic property provider and specifies the property name. The class must implement [IDynamicProperty](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/interfaces/idynamicproperty.md) and have a public parameterless constructor.

```csharp
public class DynamicPropertyAttribute : Attribute
```

Write the name without `%` signs: a class with `[DynamicProperty("NUMERO_VERTICES")]` calculates fields whose default value is `%NUMERO_VERTICES%` or `%NUMERO_VERTICES% parámetro`. Digi3D.AI treats the name as case-sensitive. The [IDynamicProperty](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/interfaces/idynamicproperty.md) page explains how to register the extension and when the value is calculated.

## Constructors

```csharp
public DynamicPropertyAttribute()
public DynamicPropertyAttribute(string dynamicProperty)
```

The parameterized constructor assigns `dynamicProperty` to `DynamicProperty`. The parameterless constructor leaves `DynamicProperty` as `null`; in that case, assign the property using `[DynamicProperty(DynamicProperty = "NOMBRE")]`. If `DynamicProperty` is `null`, Digi3D.AI does not register that class or subsequent classes in the same DLL.

## Properties

| Property | Description |
| :--- | :--- |
| `string DynamicProperty { get; set; }` | Dynamic property name, without `%` signs. |

## Example

The [IDynamicProperty](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/interfaces/idynamicproperty.md#example) example registers the `NUMERO_VERTICES` property through `[DynamicProperty("NUMERO_VERTICES")]`.
