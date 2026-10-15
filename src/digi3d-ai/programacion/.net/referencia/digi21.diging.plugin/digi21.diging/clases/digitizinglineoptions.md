# DigitizingLineOptions
<!-- id: digitizinglineoptions -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Clase estática con las opciones que Digi3D.AI aplica a las líneas que se digitalizan: cierre, generalización, paralela y suavizado al finalizar, y los parámetros del registro en modo continuo.

```csharp
public static class DigitizingLineOptions
```

Cada propiedad lee y escribe una variable de Digi3D.AI. Las variables son de la aplicación: un cambio afecta a todas las ventanas de dibujo. Todas las propiedades lanzan `NullReferenceException` si no hay ninguna ventana de dibujo abierta. El valor por defecto de la tabla es el que devuelve la propiedad si la variable no está definida.

## Propiedades estáticas

| Propiedad | Variable | Por defecto | Descripción |
| :--- | :--- | :--- | :--- |
| `bool CloseLineWhenFinish` | [C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md) | `false` | Cierra la línea al finalizarla. |
| `bool GeneralizeLineWhenFinish` | [G](/digi3d-ai/referencia/ventana-de-dibujo/variables/g/g.md) | `false` | Generaliza la línea al finalizarla. |
| `bool ParalelizeLineWhenFinish` | [P](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/p.md) | `false` | Dibuja una paralela a la línea al finalizarla. |
| `bool SmoothLineWhenFinish` | [S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) | `false` | Suaviza la línea al finalizarla. |
| `double GeneralizationTolerance` | [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) | 0,004 | Factor de tolerancia de la generalización. |
| `double AngularTolerance` | [TOL_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) | 4,58 | Tolerancia angular de la generalización, en grados. |
| `double ContinuousModeIncrement` | [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) | 0,004 | Incremento de registro: distancia entre los vértices que se registran en modo continuo. |

## Ejemplo

Esta orden prepara la digitalización de líneas generalizadas: activa la generalización al finalizar, desactiva el suavizado y asigna la tolerancia de la generalización:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "PREPARA_GENERALIZACION")]
public class PreparaGeneralizacion : Command
{
    public PreparaGeneralizacion()
    {
        Initialize += (sender, e) =>
        {
            DigitizingLineOptions.GeneralizeLineWhenFinish = true;
            DigitizingLineOptions.SmoothLineWhenFinish = false;
            DigitizingLineOptions.GeneralizationTolerance = 0.5;

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"TOL = {DigitizingLineOptions.GeneralizationTolerance}, TOL_ANG = {DigitizingLineOptions.AngularTolerance}");
            Dispose();
        };
    }
}
```
