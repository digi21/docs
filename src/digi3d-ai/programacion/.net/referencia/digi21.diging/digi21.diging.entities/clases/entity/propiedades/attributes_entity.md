# Attributes
<!-- id: attributes-entity -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Atributos de la entidad: nombre y valor. Son los atributos que el archivo de dibujo guarda con la entidad, no los atributos de base de datos de sus códigos (esos están en [Code.Attributes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/attributes.md)).

```csharp
public IDictionary<string, object> Attributes { get; set; }
```

## Valor de la propiedad

| Origen de la entidad | Diccionario |
| :--- | :--- |
| Creada con un constructor | `Dictionary<string, object>` vacío, que distingue mayúsculas de minúsculas en las claves. |
| Leída de un archivo de dibujo, o copia hecha con `Clone()` | Diccionario de solo lectura (`ReadOnlyDictionary`) con los atributos de la entidad nativa, que no distingue mayúsculas de minúsculas en las claves. `Add` y la asignación por clave lanzan `NotSupportedException`. |

El descriptor `set` no comprueba el valor ni si la entidad es de solo lectura: para cambiar los atributos de una copia, asigna un diccionario nuevo.

Al añadir la entidad a un archivo de dibujo, cada formato decide qué atributos guarda. Por ejemplo, [BinDouble.Add(Entity)](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md) guarda los valores que no son `null`.

## Ejemplo

```csharp
var copia = entidad.Clone();
copia.Attributes = new Dictionary<string, object>(entidad.Attributes)
{
    ["Revisado"] = true,
};
```
