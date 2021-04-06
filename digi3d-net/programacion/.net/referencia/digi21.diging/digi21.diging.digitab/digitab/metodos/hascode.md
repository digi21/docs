# HasCode

Espacio de nombres: [Digi21.DigiNG.DigiTab](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Indica si la tabla de códigos contiene un código

## Sobrecargas

|  |  |
| :--- | :--- |
| [HasCode\(string\)](hascode.md#hascode-string) | Indica si la tabla de códigos contiene un código cuyo nombre sea el pasado por parámetros. |
| [HasCode\(string, bool\)](hascode.md#hascode-string-bool) | Indica si la tabla de códigos contiene un código cuyo nombre sea el pasado por parámetros permitiendo indicar si aplicar lógica de comodines. |

## HasCode\(string\)

Indica si la tabla de códigos contiene un código cuyo nombre sea el pasado por parámetros.

```csharp
public bool HasCode(string name)
```

## Parámetros

`name`[String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre del código que se está consultando.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si la tabla de códigos contiene el código especificado.

## Ejemplo

El siguiente ejemplo carga una tabla de códigos e indica si ésta tiene el código 020400.

```csharp
var tabla = DigiTab.Load("tabla.tab.xml");
if( tabla.HasCode("0204400") )
    Console.WriteLine("La tabla tiene el códiogo 020400");
```

## HasCode\(string, bool\)

Indica si la tabla de códigos contiene un código cuyo nombre sea el pasado por parámetros permitiendo indicar si aplicar lógica de comodines.

```csharp
public bool HasCode(string name, bool allowWilcards)
```

## Parámetros

`name`[String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre del código que se está consultando.

`allowWillcards`[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Valor que indica si utilizar comodines.

## Devuelve

[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
_Verdadero_ si la tabla de códigos contiene el código especificado.

## Ejemplo

El siguiente ejemplo carga una tabla de códigos e indica si ésta tiene un código que comienza por 0204.

```csharp
var tabla = DigiTab.Load("tabla.tab.xml");
if( tabla.HasCode("0204*", true) )
    Console.WriteLine("La tabla tiene al menos un código cuyo nombre comienza por 0204");
```



