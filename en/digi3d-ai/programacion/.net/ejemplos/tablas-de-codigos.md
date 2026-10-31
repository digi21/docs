# Code table utilities
<!-- id: ejemplo-net-tablas-de-codigos -->
<!-- origen: c815cef0675a54c612fa8ad66485c61fc5ccf3ce -->

Three examples in the repository modify a code table file (`.tab.xml`) and save the result to another file:

| Example | What it does | Code |
|---|---|---|
| `AnadeEtiquetaAMultiplesCodigosTablaCodigos` | Adds a tag to multiple codes. | [GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/AnadeEtiquetaAMultiplesCodigosTablaCodigos) |
| `AnadeControlCalidadPythonAMultiplesCodigos` | Adds a quality control to multiple codes. | [GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/AnadeControlCalidadPythonAMultiplesCodigos) |
| `EliminaControlesCalidadPythonDuplicados` | Removes duplicate quality controls from each code. | [GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/EliminaControlesCalidadPythonDuplicados) |

All three are **standalone utilities**: they read the code table using the .NET `XmlDocument` class and do not use the Digi3D.AI API. They work without Digi3D.AI installed.

## Build

The projects use .NET 10 and do not reference any NuGet packages. Run from the repository folder, for example:

```
dotnet build AnadeEtiquetaAMultiplesCodigosTablaCodigos\AnadeEtiquetaAMultiplesCodigosTablaCodigos.csproj -c Release -o C:\Herramientas\AnadeEtiqueta
```

You need the .NET 10 runtime to run the compiled program.

## Code table format used

`AnadeEtiquetaAMultiplesCodigosTablaCodigos` and `AnadeControlCalidadPythonAMultiplesCodigos` look up each code using the XPath expression `/digitab/codes/code[@name='<código>']`. `EliminaControlesCalidadPythonDuplicados` does not take codes: it iterates through all `/digitab/codes/code/quality_control` elements.

- Tags are stored in the `tags` attribute of the `code` element, separated by commas. See [Tags](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md#tags).
- Quality controls are stored in the `quality_control` element, a child of `code`. The programs treat each line of text in `quality_control` as a quality control. See [Quality control](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md#quality-control) and [Python quality controls](/digi3d-ai/programacion/python/controles-de-calidad/README.md).

```xml
<code name="020101" description="Curva directora" tags="curvas">
    <quality_control><![CDATA[CompruebaZ
Cierre]]></quality_control>
</code>
```

All three programs write a message with their title at startup. If arguments are missing, they write usage information to standard error and exit with code 0 without creating the output file.

`XmlDocument.Save` reindents the output file, so its whitespace formatting differs from the input file's.

## AnadeEtiquetaAMultiplesCodigosTablaCodigos

Adds a tag at the start of each specified code's `tags` attribute.

```
AnadeEtiquetaAMultiplesCodigosTablaCodigos.exe <tabla de entrada> <tabla de salida> <etiqueta> <código 1> [<código 2> ...]
```

| Argument | Description |
|---|---|
| `<tabla de entrada>` | Path of the input `.tab.xml` file. |
| `<tabla de salida>` | Path of the file created with the changes. |
| `<etiqueta>` | Tag to add. |
| `<código 1>`… | Names of the codes to which the tag is added. |

For example, with `tags="curvas"` and the tag `relieve`, the attribute becomes `tags="relieve,curvas"`. With `tags=""`, it becomes `tags="relieve"`.

The program does not modify codes without the `tags` attribute or codes that do not exist in the table, and does not report either case. It also does not check whether a code already has the tag: if it does, the tag appears twice. To add a tag from the code table editor, use [Add tag to multiple codes](/digi3d-ai/referencia/editor-de-tablas-de-codigos/menus/codigos/anadir-etiqueta-a-multiples-codigos.md), which does not duplicate tags.

```csharp
foreach (var code in args.Skip(3))
{
    var nodo = root!.SelectSingleNode($"/digitab/codes/code[@name='{code}']");

    // If the code or tags attribute is missing, move to the next code.
    var etiquetasNodo = nodo?.Attributes?.GetNamedItem("tags");
    if (etiquetasNodo == null) continue;

    // The new tag goes before the code's existing tags.
    var clonEtiquetas = etiquetasNodo.Clone();
    if (clonEtiquetas.InnerText.Length != 0)
        clonEtiquetas.InnerText = etiquetaAñadir + "," + clonEtiquetas.InnerText;
    else
        clonEtiquetas.InnerText = etiquetaAñadir;
    ...
}
```

## AnadeControlCalidadPythonAMultiplesCodigos

Adds a quality control at the end of each specified code's `quality_control` element. If the code has no such element, it creates it.

```
AnadeControlCalidadPythonAMultiplesCodigos.exe <tabla de entrada> <tabla de salida> <control de calidad> <código 1> [<código 2> ...]
```

| Argument | Description |
|---|---|
| `<tabla de entrada>` | Path of the input `.tab.xml` file. |
| `<tabla de salida>` | Path of the file created with the changes. |
| `<control de calidad>` | Text of the line added to `quality_control`. |
| `<código 1>`… | Names of the codes to which the control is added. |

If a code does not exist in the table, the program writes `No se ha localizado el código <código>` to standard error and continues with the next. The program does not check whether a code already has the quality control; to remove duplicate lines, use `EliminaControlesCalidadPythonDuplicados`.

```csharp
var controlesCalidad = nodo.SelectSingleNode("quality_control");
if (controlesCalidad is null)
{
    controlesCalidad = digiTab.CreateNode(XmlNodeType.Element, "quality_control", "");
    nodo.AppendChild(controlesCalidad);
}

// Empty element: place the control in a CDATA section.
// Element with controls: append the control on a new line.
if (string.IsNullOrEmpty(controlesCalidad.InnerText))
    controlesCalidad.AppendChild(digiTab.CreateCDataSection(controlCalidadAnadir));
else
    controlesCalidad.InnerText += "\n" + controlCalidadAnadir;
```

When `InnerText` is assigned, `XmlDocument` replaces the CDATA section with escaped text. The element's content remains the same.

## EliminaControlesCalidadPythonDuplicados

`EliminaControlesCalidadPythonDuplicados` removes duplicate lines from the `quality_control` element of every code in the table. `EliminaControlesCalidadPythonDuplicados` preserves the first occurrence of each line and the order of the lines.

```
EliminaControlesCalidadPythonDuplicados.exe <tabla de entrada> <tabla de salida>
```

| Argument | Description |
|---|---|
| `<tabla de entrada>` | Path of the input `.tab.xml` file. |
| `<tabla de salida>` | Path of the file created with the changes. |

The comparison is case-sensitive and does not trim leading or trailing spaces from each line: `CompruebaZ` and `CompruebaZ ` are different lines. Empty lines are removed only from elements containing a duplicate line.

```csharp
foreach (XmlNode nodo in root.SelectNodes("/digitab/codes/code/quality_control"))
{
    // One line per quality control; discard empty lines.
    var palabras = nodo.InnerText.Split(new[] {'\n', '\r'}, StringSplitOptions.RemoveEmptyEntries);
    if (palabras.Length == 1)
        continue;

    // Distinct preserves the first occurrence of each line, in the original order.
    var palabrasFiltradas = palabras.Distinct().ToArray();
    if (palabrasFiltradas.Length == palabras.Length)
        continue;

    nodo.InnerText = string.Join('\n', palabrasFiltradas);
}
```
