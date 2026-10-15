# UtilidadesSecuenciaEntity
<!-- id: digi21.utilities.utilidadessecuenciaentity -->

Espacio de nombres: `Digi21.Utilities`  
Ensamblado: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Métodos de extensión de `IEnumerable<Entity>` que filtran o transforman una secuencia de entidades, como un archivo de dibujo o el resultado de otro filtro.

```csharp
public static class UtilidadesSecuenciaEntity
```

Todos los métodos devuelven una secuencia que se evalúa al recorrerla, como los operadores de LINQ: el archivo de dibujo se lee al recorrer el resultado, no al llamar al método. Los métodos genéricos `<T>` exigen `T : Entity` (salvo `ExplotaAReadOnlyLine<T>`) y devuelven las entidades con el mismo tipo `T` que la secuencia de entrada, así que se pueden encadenar.

## Métodos estáticos

### Copia

| Método | Descripción |
| :--- | :--- |
| `IEnumerable<Entity> SecuenciaDeClones(this IEnumerable<Entity> secuenciaOriginal)` | Devuelve el resultado de `Clone()` de cada entidad. Las copias no pertenecen a ningún archivo de dibujo, así que se pueden añadir a otro archivo. |

### Filtros por tipo

Estos cinco métodos están marcados `[Obsolete("Utilizar mejor OfType<T>")]`: el compilador emite el aviso CS0618. `OfType<ReadOnlyLine>()` de LINQ devuelve lo mismo.

| Método | Descripción |
| :--- | :--- |
| `IEnumerable<ReadOnlyLine> SoloLíneas(this IEnumerable<Entity> secuenciaOriginal)` | Entidades que son `ReadOnlyLine` (incluye `Line`). |
| `IEnumerable<ReadOnlyPoint> SoloPuntos(this IEnumerable<Entity> secuenciaOriginal)` | Entidades que son `ReadOnlyPoint`. |
| `IEnumerable<ReadOnlyText> SoloTextos(this IEnumerable<Entity> secuenciaOriginal)` | Entidades que son `ReadOnlyText`. |
| `IEnumerable<ReadOnlyPolygon> SoloPolígonos(this IEnumerable<Entity> secuenciaOriginal)` | Entidades que son `ReadOnlyPolygon`. |
| `IEnumerable<ReadOnlyComplex> SoloComplejos(this IEnumerable<Entity> secuenciaOriginal)` | Entidades que son `ReadOnlyComplex`. |

### Filtros por ventana

| Método | Descripción |
| :--- | :--- |
| `IEnumerable<T> QueSolapanCon<T>(this IEnumerable<T> secuenciaOriginal, IWindow2D wnd)` | Entidades cuya caja (las coordenadas mínimas y máximas en X e Y) se cruza con la ventana `wnd` o la toca. Usa `Window2D.Intersects`. Al recorrer el resultado, lanza `InvalidOperationException` si `wnd` o una entidad no tienen coordenadas (`Xmin` vale `null`). |

### Filtros por código

Los métodos llaman a los de [UtilidadesEntity](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesentity.md), donde están las reglas de los comodines.

| Método | Descripción |
| :--- | :--- |
| `IEnumerable<T> QueTenganElCódigo<T>(this IEnumerable<T> secuenciaOriginal, string código)` | Entidades con algún código que se llama exactamente `código`. |
| `IEnumerable<T> QueNoTenganElCódigo<T>(this IEnumerable<T> secuenciaOriginal, string código)` | Entidades sin ningún código que se llame exactamente `código`. |
| `IEnumerable<T> QueTenganElCódigoConComodín<T>(this IEnumerable<T> secuenciaOriginal, string código)` | Entidades con algún código que coincide con `código`, con comodines. |
| `IEnumerable<T> QueTenganAlgúnCódigo<T>(this IEnumerable<T> secuenciaOriginal, IEnumerable<string> códigos)` | Entidades con algún código que se llama exactamente como alguno de `códigos`. |
| `IEnumerable<T> QueNoTenganAlgúnCódigo<T>(this IEnumerable<T> secuenciaOriginal, IEnumerable<string> códigos)` | Entidades sin ningún código que se llame como alguno de `códigos`. |
| `IEnumerable<T> QueTenganAlgúnCódigoConComodín<T>(this IEnumerable<T> secuenciaOriginal, IEnumerable<string> códigos)` | Entidades con algún código que coincide con alguno de `códigos`, con comodines. |

### Filtros por estado

| Método | Descripción |
| :--- | :--- |
| `IEnumerable<T> Eliminadas<T>(this IEnumerable<T> secuenciaOriginal)` | Entidades con `Deleted` a `true`. |
| `IEnumerable<T> NoEliminadas<T>(this IEnumerable<T> secuenciaOriginal)` | Entidades con `Deleted` a `false`. |
| `IEnumerable<T> Visibles<T>(this IEnumerable<T> secuenciaOriginal)` | Entidades con algún código cuya propiedad `Visible` es distinta de `0`, según [AlgúnCódigoVisible](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesentity.md). No se consulta la propiedad `Hidden` de la entidad. |

### Conversión a líneas

| Método | Descripción |
| :--- | :--- |
| `IEnumerable<ReadOnlyLine> ExplotaAReadOnlyLine<T>(this IEnumerable<T> secuenciaOriginal)` | Concatena el resultado de convertir cada entidad en líneas, con las mismas reglas que [UtilidadesEntity.ExplotaAReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesentity.md#explotaareadonlyline). `T` no tiene restricción: los elementos que no son líneas, polígonos ni complejos se ignoran. |

## Ejemplo

Este programa lee un archivo `.bin` y muestra cuántas entidades no eliminadas de los códigos `02*` hay dentro de una ventana, y la longitud total de las líneas que se obtienen al convertirlas en líneas:

```csharp
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;
using Digi21.Utilities;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Altimetría <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);
var ventana = new Window2D(440000, 4470000, 441000, 4471000);

var seleccionadas = archivo
    .NoEliminadas()
    .QueTenganElCódigoConComodín("02*")
    .QueSolapanCon(ventana)
    .ToList();

var longitud = seleccionadas.ExplotaAReadOnlyLine().Sum(línea => línea.Perimeter);

Console.WriteLine($"{seleccionadas.Count} entidades, {longitud:F2} m de líneas.");
return 0;
```
