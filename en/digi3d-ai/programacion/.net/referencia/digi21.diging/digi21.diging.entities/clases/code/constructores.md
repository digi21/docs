# Constructors
<!-- id: constructores-4 -->
<!-- origen: a5531f62125bbd7271393973976a7fc7f5cbf8ad -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Constructors of [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/).

| Constructor | `Table`, `Id` | `Attributes` | `Visible`, `VisiblePhotogrammetricWindow` |
| :--- | :--- | :--- | :--- |
| `Code(string name)` | `null`, `null` | Empty dictionary | `0xFFFFFFFF` |
| `Code(string name, IDictionary<string, object> attributes)` | `null`, `null` | The `attributes` dictionary, without copying | `0xFFFFFFFF` |
| `Code(string name, int table, int id)` | `table`, `id` | Empty dictionary | `0xFFFFFFFF` |
| `Code(string name, int? table, int? id)` | `table`, `id` | Empty dictionary | `0xFFFFFFFF` |

No constructor checks its parameters: `name` and `attributes` may be `null`.

The table number is its number in the database's catalog table (`CATDBS` or `MSCATALOG`). The drawing file's [DatabaseTables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/databasetables.md) property returns each table's name and number.

<a id="code-string"></a>
## Code(string)

```csharp
public Code(string name)
```

Creates a code with no database link.

| Parameter | Description |
| :--- | :--- |
| `name` | Code name. |

```csharp
var código = new Code("020400");
```

<a id="code-string-idictionary-string-object"></a>
## Code(string, IDictionary&lt;string, object&gt;)

```csharp
public Code(string name, IDictionary<string, object> atributes)
```

Creates a code with no database link and the specified attributes. The `Attributes` property contains the same dictionary passed to the constructor: subsequent dictionary changes are reflected in the code's attributes.

| Parameter | Description |
| :--- | :--- |
| `atributes` | Code attributes: database field name and value. In the installed assembly, the parameter is named `attributes`. |

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

Creates a code linked to record `id` in table number `table`.

| Parameter | Description |
| :--- | :--- |
| `name` | Code name. |
| `table` | Database table number. |
| `id` | Record identifier in the table: its primary key value. |

```csharp
var código = new Code("020400", 2, 25522);
```

<a id="code-string-int-int-1"></a>
## Code(string, int?, int?)

```csharp
public Code(string name, int? table, int? id)
```

Creates a code with optional table and record. If `table` and `id` are `null`, this constructor is equivalent to `Code(name)`.

| Parameter | Description |
| :--- | :--- |
| `name` | Code name. |
| `table` | Database table number, or `null`. |
| `id` | Record identifier, or `null`. |

```csharp
int? tabla = null;
int? registro = null;
var código = new Code("020400", tabla, registro);
```
