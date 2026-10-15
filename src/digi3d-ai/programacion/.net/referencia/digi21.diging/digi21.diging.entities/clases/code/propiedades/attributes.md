# Attributes
<!-- id: attributes -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Atributos de base de datos del código: nombre del campo de la tabla y valor.

```csharp
public IDictionary<string, object> Attributes { get; set; }
```

## Valor de la propiedad

| Origen del código | Diccionario |
| :--- | :--- |
| Creado con `Code(string)`, `Code(string, int, int)` o `Code(string, int?, int?)` | `Dictionary<string, object>` vacío, que distingue mayúsculas de minúsculas en las claves. |
| Creado con `Code(string, IDictionary<string, object>)` | El diccionario que se pasa al constructor. |
| Leído de un archivo de dibujo | Diccionario de solo lectura (`ReadOnlyDictionary`) que no distingue mayúsculas de minúsculas en las claves. `Add` y la asignación por clave lanzan `NotSupportedException`. Para cambiar los atributos, asigna otro diccionario a la propiedad. |
| Copia de una entidad hecha con `Entity.Clone()` | `Dictionary<string, object>` con una copia de los atributos del original. |

El descriptor de acceso `set` no comprueba el valor: admite `null`.

`Code` es una estructura: asignar `Attributes` en un elemento de `Entity.Codes` modifica una copia. Asigna después la copia a `Entity.Codes[i]`.

Al añadir una entidad a un archivo `.bind` con base de datos, el archivo guarda en la base de datos los atributos de cada código. Lee [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md).

## Ejemplo

```csharp
var código = new Code("020400")
{
    Attributes = new Dictionary<string, object>
    {
        { "Propietario", "Dylan" },
        { "Alturas", 3 },
        { "Superficie", 200.0 },
    },
};
```
