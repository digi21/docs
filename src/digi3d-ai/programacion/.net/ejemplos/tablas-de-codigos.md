# Utilidades para tablas de códigos
<!-- id: ejemplo-net-tablas-de-codigos -->

Tres ejemplos del repositorio modifican un archivo de tabla de códigos (`.tab.xml`) y guardan el resultado en otro archivo:

| Ejemplo | Qué hace | Código |
|---|---|---|
| `AnadeEtiquetaAMultiplesCodigosTablaCodigos` | Añade una etiqueta a varios códigos. | [GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/AnadeEtiquetaAMultiplesCodigosTablaCodigos) |
| `AnadeControlCalidadPythonAMultiplesCodigos` | Añade un control de calidad a varios códigos. | [GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/AnadeControlCalidadPythonAMultiplesCodigos) |
| `EliminaControlesCalidadPythonDuplicados` | Elimina los controles de calidad repetidos de cada código. | [GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/EliminaControlesCalidadPythonDuplicados) |

Los tres son **utilidades independientes**: leen la tabla de códigos con la clase `XmlDocument` de .NET y no usan la API de Digi3D.AI. Funcionan sin Digi3D.AI instalado.

## Compilar

Los proyectos usan .NET 8 y no referencian ningún paquete NuGet. Compilan sin cambios con el SDK de .NET 10. Ejecuta desde la carpeta del repositorio, por ejemplo:

```
dotnet build AnadeEtiquetaAMultiplesCodigosTablaCodigos\AnadeEtiquetaAMultiplesCodigosTablaCodigos.csproj -c Release -o C:\Herramientas\AnadeEtiqueta
```

Para ejecutar el programa compilado hace falta el runtime de .NET 8. Si el equipo solo tiene .NET 10, cambia `TargetFramework` a `net10.0` en el `.csproj` antes de compilar.

## Formato de la tabla de códigos que usan

`AnadeEtiquetaAMultiplesCodigosTablaCodigos` y `AnadeControlCalidadPythonAMultiplesCodigos` buscan cada código con la expresión XPath `/digitab/codes/code[@name='<código>']`. `EliminaControlesCalidadPythonDuplicados` no recibe códigos: recorre todos los elementos `/digitab/codes/code/quality_control`.

- Las etiquetas están en el atributo `tags` del elemento `code`, separadas por comas. Ver [Etiquetas](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md#etiquetas).
- Los controles de calidad están en el elemento `quality_control`, hijo de `code`. Los programas tratan cada línea del texto de `quality_control` como un control de calidad. Ver [Control de calidad](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md#control-de-calidad) y [Controles de calidad en Python](/digi3d-ai/programacion/python/controles-de-calidad/README.md).

```xml
<code name="020101" description="Curva directora" tags="curvas">
    <quality_control><![CDATA[CompruebaZ
Cierre]]></quality_control>
</code>
```

Los tres programas escriben un mensaje con su título al empezar. Si faltan argumentos, escriben el formato de uso en la salida de error y terminan con código de salida 0 sin crear el archivo de salida.

`XmlDocument.Save` vuelve a sangrar el archivo de salida, así que su formato de espacios no coincide con el del archivo de entrada.

## AnadeEtiquetaAMultiplesCodigosTablaCodigos

Añade una etiqueta al principio del atributo `tags` de cada código indicado.

```
AnadeEtiquetaAMultiplesCodigosTablaCodigos.exe <tabla de entrada> <tabla de salida> <etiqueta> <código 1> [<código 2> ...]
```

| Argumento | Descripción |
|---|---|
| `<tabla de entrada>` | Ruta del archivo `.tab.xml` que se lee. |
| `<tabla de salida>` | Ruta del archivo que se crea con los cambios. |
| `<etiqueta>` | Etiqueta que se añade. |
| `<código 1>`… | Nombres de los códigos a los que se añade la etiqueta. |

Por ejemplo, con `tags="curvas"` y la etiqueta `relieve`, el atributo queda `tags="relieve,curvas"`. Con `tags=""`, queda `tags="relieve"`.

El programa no modifica los códigos que no tienen el atributo `tags` ni los códigos que no existen en la tabla, y no avisa de ninguno de los dos casos. Tampoco comprueba si el código ya tiene la etiqueta: si la tiene, la etiqueta aparece dos veces. Para añadir una etiqueta desde el editor de tablas de códigos, usa [Añadir etiqueta a múltiples códigos](/digi3d-ai/referencia/editor-de-tablas-de-codigos/menus/codigos/anadir-etiqueta-a-multiples-codigos.md), que no duplica etiquetas.

```csharp
foreach (var code in args.Skip(3))
{
    var nodo = root!.SelectSingleNode($"/digitab/codes/code[@name='{code}']");

    // Sin código o sin atributo tags, pasa al siguiente código.
    var etiquetasNodo = nodo?.Attributes?.GetNamedItem("tags");
    if (etiquetasNodo == null) continue;

    // La etiqueta nueva va delante de las que ya tiene el código.
    var clonEtiquetas = etiquetasNodo.Clone();
    if (clonEtiquetas.InnerText.Length != 0)
        clonEtiquetas.InnerText = etiquetaAñadir + "," + clonEtiquetas.InnerText;
    else
        clonEtiquetas.InnerText = etiquetaAñadir;
    ...
}
```

## AnadeControlCalidadPythonAMultiplesCodigos

Añade un control de calidad al final del elemento `quality_control` de cada código indicado. Si el código no tiene el elemento, lo crea.

```
AnadeControlCalidadPythonAMultiplesCodigos.exe <tabla de entrada> <tabla de salida> <control de calidad> <código 1> [<código 2> ...]
```

| Argumento | Descripción |
|---|---|
| `<tabla de entrada>` | Ruta del archivo `.tab.xml` que se lee. |
| `<tabla de salida>` | Ruta del archivo que se crea con los cambios. |
| `<control de calidad>` | Texto de la línea que se añade a `quality_control`. |
| `<código 1>`… | Nombres de los códigos a los que se añade el control. |

Si un código no existe en la tabla, el programa escribe en la salida de error `No se ha localizado el código <código>` y continúa con el siguiente. El programa no comprueba si el código ya tiene el control de calidad; para quitar las líneas repetidas, usa `EliminaControlesCalidadPythonDuplicados`.

```csharp
var controlesCalidad = nodo.SelectSingleNode("quality_control");
if (controlesCalidad is null)
{
    controlesCalidad = digiTab.CreateNode(XmlNodeType.Element, "quality_control", "");
    nodo.AppendChild(controlesCalidad);
}

// Elemento vacío: el control va en una sección CDATA.
// Elemento con controles: el control se añade en una línea nueva.
if (string.IsNullOrEmpty(controlesCalidad.InnerText))
    controlesCalidad.AppendChild(digiTab.CreateCDataSection(controlCalidadAnadir));
else
    controlesCalidad.InnerText += "\n" + controlCalidadAnadir;
```

Al asignar `InnerText`, `XmlDocument` sustituye la sección CDATA por texto escapado. El contenido del elemento es el mismo.

## EliminaControlesCalidadPythonDuplicados

Elimina las líneas repetidas del elemento `quality_control` de todos los códigos de la tabla. Conserva la primera aparición de cada línea y el orden.

```
EliminaControlesCalidadPythonDuplicados.exe <tabla de entrada> <tabla de salida>
```

| Argumento | Descripción |
|---|---|
| `<tabla de entrada>` | Ruta del archivo `.tab.xml` que se lee. |
| `<tabla de salida>` | Ruta del archivo que se crea con los cambios. |

La comparación distingue mayúsculas y minúsculas, y no quita los espacios del principio ni del final de cada línea: `CompruebaZ` y `CompruebaZ ` son líneas distintas. Las líneas vacías se eliminan solo en los elementos que tienen alguna línea repetida.

```csharp
foreach (XmlNode nodo in root.SelectNodes("/digitab/codes/code/quality_control"))
{
    // Una línea por control de calidad; se descartan las líneas vacías.
    var palabras = nodo.InnerText.Split(new[] {'\n', '\r'}, StringSplitOptions.RemoveEmptyEntries);
    if (palabras.Length == 1)
        continue;

    // Distinct conserva la primera aparición de cada línea, en el orden original.
    var palabrasFiltradas = palabras.Distinct().ToArray();
    if (palabrasFiltradas.Length == palabras.Length)
        continue;

    nodo.InnerText = string.Join('\n', palabrasFiltradas);
}
```
