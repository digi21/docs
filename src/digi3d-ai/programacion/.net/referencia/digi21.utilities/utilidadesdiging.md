# UtilidadesDigiNG
<!-- id: digi21.utilities.utilidadesdiging -->

Espacio de nombres: `Digi21.Utilities`  
Ensamblado: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Métodos para las entidades cargadas en la ventana de dibujo activa de Digi3D.AI.

```csharp
public static class UtilidadesDigiNG
```

Los dos métodos usan las propiedades `DigiNG.DrawingFile` y `DigiNG.ReferenceFiles` de la clase [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) del paquete `Digi21.DigiNG.Plugin`. Por eso solo funcionan en una extensión que se ejecuta dentro de Digi3D.AI, con una ventana de dibujo abierta. Sin ventana de dibujo, `DigiNG.DrawingFile` lanza `NullReferenceException`.

## Métodos estáticos

### EnumeraTodasLasEntidades

```csharp
public static IEnumerable<Entity> EnumeraTodasLasEntidades()
```

Devuelve las entidades del archivo de dibujo activo (`DigiNG.DrawingFile`) y, a continuación, las de cada archivo de referencia (`DigiNG.ReferenceFiles`), en ese orden. La secuencia se evalúa al recorrerla. Incluye las entidades eliminadas: fíltralas con `NoEliminadas`, de [UtilidadesSecuenciaEntity](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciaentity.md).

### ArchivoPropietarioDeEntidad

```csharp
public static int ArchivoPropietarioDeEntidad(Entity entidad)
```

Devuelve `0` si `entidad` pertenece al archivo de dibujo activo, y `1 + i` si pertenece al archivo de referencia de índice `i` en `DigiNG.ReferenceFiles`. La pertenencia se comprueba en este orden:

1. Si `entidad.Owner` es el archivo `DigiNG.DrawingFile` ([IReadOnlyDrawingFileExtension.Contains](/digi3d-ai/programacion/.net/referencia/digi21.utilities/ireadonlydrawingfileextension.md)), devuelve `0`.
2. Si `entidad.Owner` no es `null`, devuelve `1 + i` para el primer archivo de referencia cuya propiedad `Path` es igual a `entidad.Owner.Path`, sin distinguir mayúsculas de minúsculas.
3. Si `entidad.Owner` es `null`, recorre las entidades de cada archivo de referencia y después las del archivo activo, y devuelve la posición del primer archivo que contiene la misma instancia `entidad`.

Lanza `Exception` con el mensaje «La entidad no pertenece a ningún archivo» si ninguna comprobación es cierta.

## Ejemplo

Esta orden de una extensión cuenta las entidades no eliminadas del archivo de dibujo activo y de los archivos de referencia, y escribe el resultado en la ventana de resultados:

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
