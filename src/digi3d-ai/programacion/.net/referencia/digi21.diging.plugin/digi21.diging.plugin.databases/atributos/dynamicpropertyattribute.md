# DynamicPropertyAttribute
<!-- id: dynamicpropertyattribute -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Databases`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Marca una clase como proveedor de una propiedad dinámica e indica el nombre de la propiedad. La clase tiene que implementar [IDynamicProperty](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/interfaces/idynamicproperty.md) y tener un constructor público sin parámetros.

```csharp
public class DynamicPropertyAttribute : Attribute
```

El nombre se escribe sin los signos `%`: la clase con `[DynamicProperty("NUMERO_VERTICES")]` calcula los campos cuyo valor por defecto es `%NUMERO_VERTICES%` o `%NUMERO_VERTICES% parámetro`. Digi3D.AI distingue mayúsculas de minúsculas en el nombre. La página de [IDynamicProperty](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/interfaces/idynamicproperty.md) explica cómo se registra la extensión y cuándo se calcula el valor.

## Constructores

```csharp
public DynamicPropertyAttribute()
public DynamicPropertyAttribute(string dynamicProperty)
```

El constructor con parámetro asigna `dynamicProperty` a `DynamicProperty`. El constructor sin parámetros deja `DynamicProperty` a `null`; en ese caso, asigna la propiedad con la sintaxis `[DynamicProperty(DynamicProperty = "NOMBRE")]`. Si `DynamicProperty` es `null`, Digi3D.AI no registra esa clase ni las siguientes de la misma DLL.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string DynamicProperty { get; set; }` | Nombre de la propiedad dinámica, sin los signos `%`. |

## Ejemplo

El ejemplo de [IDynamicProperty](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/interfaces/idynamicproperty.md#ejemplo) registra la propiedad `NUMERO_VERTICES` con `[DynamicProperty("NUMERO_VERTICES")]`.
