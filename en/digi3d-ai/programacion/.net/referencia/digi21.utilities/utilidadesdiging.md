# UtilidadesDigiNG
<!-- id: digi21.utilities.utilidadesdiging -->
<!-- origen: 85c73534cd07e5bd801c982fe49e3c0877d83b30 -->

Namespace: `Digi21.Utilities`  
Assembly: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Methods for entities loaded in Digi3D.AI's active drawing window.

```csharp
public static class UtilidadesDigiNG
```

Both methods use `DigiNG.DrawingFile` and `DigiNG.ReferenceFiles` from the [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) class in `Digi21.DigiNG.Plugin`. They therefore only work in an extension running inside Digi3D.AI with a drawing window open. Without a drawing window, `DigiNG.DrawingFile` throws `NullReferenceException`.

## Static methods

### EnumeraTodasLasEntidades

```csharp
public static IEnumerable<Entity> EnumeraTodasLasEntidades()
```

Returns entities from the active drawing file (`DigiNG.DrawingFile`), followed by those from each reference file (`DigiNG.ReferenceFiles`), in that order. The sequence is evaluated when iterated. Includes deleted entities: filter them through `NoEliminadas` from [UtilidadesSecuenciaEntity](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciaentity.md).

### ArchivoPropietarioDeEntidad

```csharp
public static int ArchivoPropietarioDeEntidad(Entity entidad)
```

Returns `0` if `entidad` belongs to the active drawing file, and `1 + i` if it belongs to the reference file at index `i` in `DigiNG.ReferenceFiles`. Membership is checked in this order:

1. If `entidad.Owner` is `DigiNG.DrawingFile` ([IReadOnlyDrawingFileExtension.Contains](/digi3d-ai/programacion/.net/referencia/digi21.utilities/ireadonlydrawingfileextension.md)), returns `0`.
2. If `entidad.Owner` is not `null`, returns `1 + i` for the first reference file whose `Path` equals `entidad.Owner.Path`, case-insensitively.
3. If `entidad.Owner` is `null`, iterates each reference file's entities and then the active file's entities, returning the position of the first file containing the same `entidad` instance.

Throws `Exception` with the message "The entity does not belong to any file" if none of the checks succeeds.

## Example

This extension command counts non-deleted entities in the active drawing file and reference files, and writes the result to the results window:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;
using Digi21.Utilities;

namespace Ejemplos;

[Command(Name = "CUENTA_TODAS_LAS_ENTIDADES")]
public class CuentaTodasLasEntidades : Command
{
    public CuentaTodasLasEntidades()
    {
        Initialize += (sender, e) =>
        {
            var total = UtilidadesDigiNG.EnumeraTodasLasEntidades().NoEliminadas().Count();
            var activo = Digi21.DigiNG.DigiNG.DrawingFile.NoEliminadas().Count();

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Archivo activo: {activo} entidades.");
            Digi3D.OutputWindow.WriteLine($"Archivos de referencia: {total - activo} entidades.");
            Dispose();
        };
    }
}
```
