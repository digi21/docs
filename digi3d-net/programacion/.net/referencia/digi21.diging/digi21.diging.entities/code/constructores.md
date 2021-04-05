# Constructores

Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Inicializa una nueva instancia de la estructura [Code](./).

## Observaciones

El número de tabla es el número asignado para ese nombre de tabla en la tabla especial de base de datos MSCATALOG o CATDBS.

Los importadores/exportadores proporcionan la propiedad [DatabaseTables](../../digi21.diging.io/idrawingfile/propiedades/databasetables.md) que devuelve un diccionario con los nombres de tablas, así como su número.

## Sobrecargas

|  |  |
| :--- | :--- |
| [Code\(string\)](constructores.md#code-string) | Inicializa una nueva instancia de [Code ](./)asignándole un nombre. |
| [Code\(string, int?, int?\)](constructores.md#code-string-int-int) | Inicializa una nueva instancia de [Code ](./)asignándole un nombre, identificador de tabla de base de datos e identificador de registro. |
| [Code\(string, int, int\)](constructores.md#code-string-int-int-1) | Inicializa una nueva instancia de [Code ](./)asignándole un nombre, identificador de tabla de base de datos e identificador de registro. |

## Code\(string\)

Inicializa una nueva instancia de [Code ](./)asignándole un nombre.

```csharp
public Code(string name);
```

### Parámetros

`name` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre que asignar al código

#### Ejemplos

El siguiente ejemplo instancia un nuevo código cuyo nombre es _020400_.

```csharp
var código = new Code("020400");
```

## Code\(string, int?, int?\)

Inicializa una nueva instancia de [Code ](./)asignándole un nombre, identificador de tabla de base de datos e identificador de registro.

```csharp
public Code(string name, int? table, int? id);
```

### Parámetros

`name` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre que asignar al código

`table` [Nullable&lt;int&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.nullable-1?view=net-5.0)  
Número de tabla de base de datos

`id` [Nullable&lt;int&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.nullable-1?view=net-5.0)  
Identificador del _PrimaryKey_ de la tabla de base de datos con los datos asignados al [Entity](../entity/) poseedor de este [Code](./).

#### Ejemplos

El siguiente ejemplo instancia un nuevo código cuyo nombre es _020400_, y que tiene su información de base de datos en el registro _25522_ de la tabla _2_ de la base de datos.

```csharp
var código = new Code("020400", 2, 25522);
```

## Code\(string, int, int\)

Inicializa una nueva instancia de [Code ](./)asignándole un nombre, identificador de tabla de base de datos e identificador de registro.

```csharp
public Code(string name, int? table, int? id);
```

### Parámetros

`name` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre que asignar al código

`table` [Nullable&lt;int&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.nullable-1?view=net-5.0)  
Número de tabla de base de datos

`id` [Nullable&lt;int&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.nullable-1?view=net-5.0)  
Identificador del _PrimaryKey_ de la tabla de base de datos con los datos asignados al [Entity](../entity/) poseedor de este [Code](./).

#### Ejemplos

El siguiente ejemplo instancia un nuevo código cuyo nombre es _020400_, y que tiene su información de base de datos en el registro _25522_ de la tabla _2_ de la base de datos.

```csharp
var código = new Code("020400", 2, 25522);
```

## 





