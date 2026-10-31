# IDynamicProperty
<!-- id: idynamicproperty -->
<!-- origen: 8ff16f825cc787807bd5647d7f7a08daac7bfda8 -->

Namespace: `Digi21.DigiNG.Plugin.Databases`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Dynamic property provider: a default database field value calculated by an extension from the entity being stored.

```csharp
public interface IDynamicProperty
```

## Dynamic properties

In a code table's table schema, a field's default value can be a dynamic property in either form:

- `%NOMBRE%`: property without a parameter.
- `%NOMBRE% parámetro`: property with a parameter. The parameter is the text following the first space.

Digi3D.AI first resolves the special values it recognizes. Then, for each field whose default value has one of these forms, it finds the extension registered with the name `NOMBRE` (without `%` signs) in [DynamicPropertyAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/atributos/dynamicpropertyattribute.md) and calls `Transform`. This happens when preparing database records for an entity being stored in a drawing file with a database, and when editing an entity's codes through the code editor.

## Registration

On startup, Digi3D.AI loads extensions registered under `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\DynamicPropertyProviders`: the name of each string value is the DLL's full path. Digi3D.AI loads the DLL through `Assembly.LoadFile`, without reading its `.deps.json` file.

In each DLL, Digi3D.AI creates an object for each public class with `DynamicPropertyAttribute`, using its public parameterless constructor, and stores it if it implements `IDynamicProperty`. A class with the attribute that does not implement the interface is ignored. Digi3D.AI uses the same object throughout the session.

If a class has no public parameterless constructor, its constructor throws an exception or another class has already registered the same name, Digi3D.AI writes the error to the Windows event log and registers no more classes from that DLL. The user sees no message.

## Methods

### Transform

```csharp
object Transform(string parameter, Entity entity)
```

Returns the field value.

| Parameter | Description |
| :--- | :--- |
| `parameter` | Text following the first space in the default value, or an empty string if the property has no parameter. In `%NUMERO_VERTICES% 10`, its value is `"10"`. |
| `entity` | Entity being stored. |

Digi3D.AI converts the returned value to a COM `VARIANT` through `Marshal.GetNativeVariantForObject` and assigns it to the field. Common types are `string`, `int`, `double`, `bool` and `DateTime`.

| Result | Effect |
| :--- | :--- |
| A value | Assigned to the field. |
| `null` | The field has no default value. The user sees no message. |
| An exception, or a value that cannot be converted to `VARIANT` | Digi3D.AI displays a message with the property name, exception message (the `InnerException` message, if present) and type name, and the field has no default value. |

## Example

This extension implements the `%NUMERO_VERTICES%` dynamic property. Without a parameter it returns the line's vertex count; with a numeric parameter it returns the number of vertices whose X is below that value.

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Databases;

namespace NumeroVertices;

// Field default value in the code table schema:
//   %NUMERO_VERTICES%        number of line vertices
//   %NUMERO_VERTICES% 10     number of vertices with X below 10
[DynamicProperty("NUMERO_VERTICES")]
public class PropiedadNumeroVertices : IDynamicProperty
{
    public object Transform(string parameter, Entity entity)
    {
        if (entity is not ReadOnlyLine línea)
            return null; // The field remains without a value.

        if (string.IsNullOrEmpty(parameter))
            return línea.Points.Count;

        var límite = double.Parse(parameter, System.Globalization.CultureInfo.InvariantCulture);
        return línea.Points.Count(p => p.X < límite);
    }
}
```
