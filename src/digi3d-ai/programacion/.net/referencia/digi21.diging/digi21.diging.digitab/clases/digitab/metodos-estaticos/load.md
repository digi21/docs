# Load
<!-- id: load -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Carga una tabla de códigos de un archivo.

```csharp
public static DigiTab Load(string path)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `path` | Ruta del archivo de tabla de códigos. |

El formato se elige por la extensión de `path`:

- Extensión `.xml` (por ejemplo `tabla.tab.xml`): archivo XML de tabla de códigos.
- Cualquier otra extensión: archivo ZIP que contiene una entrada `Digi.tab.xml`, el formato que genera [Write](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/write.md) con una extensión distinta de `.xml`.

## Devuelve

[DigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) modificable, con `Path` igual a `path`. Llama a `Dispose` (o usa `using`) cuando ya no necesites la tabla.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `path` es `null`. |
| `FileNotFoundException` | No existe el archivo `path`. |
| `Exception` | El archivo no se puede leer, el XML tiene errores (el mensaje indica la línea y la columna), el ZIP no contiene `Digi.tab.xml` o la tabla de códigos está cifrada (el ZIP contiene `Digi.tab.xml.encrypted`). El mensaje describe el error. |

## Ejemplo

```csharp
try
{
    using var tabla = DigiTab.Load(@"C:\Tablas\tabla.tab.xml");
    Console.WriteLine($"{tabla.Codes.Count()} códigos en {tabla.Path}");
}
catch (FileNotFoundException e)
{
    Console.WriteLine(e.Message);
}
```
