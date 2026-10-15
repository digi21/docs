# Constructores
<!-- id: constructores-4 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Constructores de [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/).

| Constructor | `Table`, `Id` | `Attributes` | `Visible`, `VisiblePhotogrammetricWindow` |
| :--- | :--- | :--- | :--- |
| `Code(string name)` | `null`, `null` | Diccionario vacío | `0xFFFFFFFF` |
| `Code(string name, IDictionary<string, object> attributes)` | `null`, `null` | El diccionario `attributes`, sin copiarlo | `0xFFFFFFFF` |
| `Code(string name, int table, int id)` | `table`, `id` | Diccionario vacío | `0xFFFFFFFF` |
| `Code(string name, int? table, int? id)` | `table`, `id` | Diccionario vacío | `1` |

Ningún constructor comprueba sus parámetros: `name` y `attributes` pueden ser `null`.

El número de tabla es el que la tabla tiene en la tabla de catálogo de la base de datos (`CATDBS` o `MSCATALOG`). La propiedad [DatabaseTables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/databasetables.md) del archivo de dibujo devuelve el nombre y el número de cada tabla.

<a id="code-string"></a>
## Code(string)

```csharp
public Code(string name)
```

Crea un código sin enlace a la base de datos.

| Parámetro | Descripción |
| :--- | :--- |
| `name` | Nombre del código. |

```csharp
var código = new Code("020400");
```

<a id="code-string-idictionary-string-object"></a>
## Code(string, IDictionary&lt;string, object&gt;)

```csharp
public Code(string name, IDictionary<string, object> atributes)
```

Crea un código sin enlace a la base de datos con los atributos indicados. La propiedad `Attributes` es el mismo diccionario que se pasa: los cambios posteriores en el diccionario se ven en el código.

| Parámetro | Descripción |
| :--- | :--- |
| `atributes` | Atributos del código: nombre del campo de la base de datos y valor. En el ensamblado instalado el parámetro se llama `attributes`. |

```csharp
var código = new Code("020400", new Dictionary<string, object>
{
    { "Propietario", "Dylan" },
    { "Alturas", 3 },
    { "Superficie", 200.0 },
});
```

<a id="code-string-int-int"></a>
## Code(string, int, int)

```csharp
public Code(string name, int table, int id)
```

Crea un código enlazado con el registro `id` de la tabla número `table`.

| Parámetro | Descripción |
| :--- | :--- |
| `name` | Nombre del código. |
| `table` | Número de la tabla de la base de datos. |
| `id` | Identificador del registro en la tabla: el valor de su clave principal. |

```csharp
var código = new Code("020400", 2, 25522);
```

<a id="code-string-int-int-1"></a>
## Code(string, int?, int?)

```csharp
public Code(string name, int? table, int? id)
```

Crea un código con tabla y registro opcionales. Con `table` e `id` a `null` equivale a `Code(name)`, salvo en la visibilidad.

En la versión 26.0.0, este constructor asigna `1` a `Visible` y a `VisiblePhotogrammetricWindow`, en lugar de `0xFFFFFFFF`. El bit `1` corresponde a las líneas: una entidad de otro tipo que solo tiene este código no se muestra. Para mostrarla, asigna `0xFFFFFFFF` a las dos propiedades.

| Parámetro | Descripción |
| :--- | :--- |
| `name` | Nombre del código. |
| `table` | Número de la tabla de la base de datos, o `null`. |
| `id` | Identificador del registro, o `null`. |

```csharp
int? tabla = null;
int? registro = null;
var código = new Code("020400", tabla, registro)
{
    Visible = 0xFFFFFFFF,
    VisiblePhotogrammetricWindow = 0xFFFFFFFF,
};
```
