# SnappingOptions
<!-- id: snappingoptions -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Clase estática con las opciones del tentativo: el enganche del cursor a una entidad con el botón de tentativo.

```csharp
public static class SnappingOptions
```

Cada propiedad lee y escribe una variable booleana de Digi3D.AI. Las variables son de la aplicación: un cambio afecta a todas las ventanas de dibujo. Todas las propiedades lanzan `NullReferenceException` si no hay ninguna ventana de dibujo abierta. Si la variable no está definida, la propiedad devuelve `false`.

## Propiedades estáticas

| Propiedad | Variable | Descripción |
| :--- | :--- | :--- |
| `bool FinalizeLineWhenSnap` | [TENTATIVO_FIN](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-fin.md) | Finaliza la línea que se está digitalizando al aceptar un tentativo sobre otra entidad. |
| `bool CutLinesWhenSnap` | [TENTATIVO_CORTA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-corta.md) | Corta la línea sobre la que se acepta el tentativo, en el punto del tentativo. |
| `bool InsertVertexWhenSnap` | [TENTATIVO_INSERTA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-inserta.md) | Inserta un vértice en la línea sobre la que se hace el tentativo al digitalizar líneas. |
| `bool AutosearchMode` | [AUTOMODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md) | Modo de búsqueda automático. |
| `bool ExhaustiveAutosearchMode` | [AUTOMODOB_EXHAUSTIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md) | Modo de búsqueda exhaustivo: impide el tentativo sobre entidades cuyo código no está en la tabla de búsqueda. |
| `bool Verify` | [VER](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) | Pide al usuario que confirme la entidad localizada por el tentativo. |
| `bool GoToSnap` | [IR_TENTATIVO](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) | Desplaza el cursor a las coordenadas del tentativo. |

## Ejemplo

Esta orden activa o desactiva a la vez el corte y la inserción de vértices al hacer tentativo, y escribe el estado en la ventana de resultados:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "ALTERNA_TENTATIVO_CORTA_INSERTA")]
public class AlternaTentativoCortaInserta : Command
{
    public AlternaTentativoCortaInserta()
    {
        Initialize += (sender, e) =>
        {
            var activar = !SnappingOptions.CutLinesWhenSnap;
            SnappingOptions.CutLinesWhenSnap = activar;
            SnappingOptions.InsertVertexWhenSnap = activar;

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine(activar ? "TENTATIVO_CORTA y TENTATIVO_INSERTA activados." : "TENTATIVO_CORTA y TENTATIVO_INSERTA desactivados.");
            Dispose();
        };
    }
}
```
