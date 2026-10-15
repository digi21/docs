# ActiveParameters
<!-- id: activeparameters -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Parámetros activos de Digi3D.AI: ángulo activo, distancias activas, altura de texto, equidistancia y escala activa. Las órdenes de Digi3D.AI usan estos valores al digitalizar.

```csharp
public sealed class ActiveParameters
```

La clase no tiene constructores públicos. El objeto se obtiene con la propiedad estática [DigiNG.ActiveParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), que devuelve `null` si no hay ninguna ventana de dibujo abierta. El objeto queda ligado a la ventana de dibujo activa en el momento de obtenerlo: cuando esa ventana se cierra, todas las propiedades lanzan `ObjectDisposedException`.

Todas las propiedades, salvo `Scale`, leen y escriben variables de Digi3D.AI que comparten todas las ventanas de dibujo. `Scale` es de la ventana de dibujo.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `double ActiveAngle` | Ángulo activo, en radianes. Digi3D.AI guarda el valor en grados sexagesimales: es la variable [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md). Si la variable no existe, devuelve el equivalente de 10°. |
| `double PrincipalActiveDistance` | Distancia activa. Es el primer valor de la variable [DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md). Si la variable no existe, devuelve 1. |
| `double SecondaryActiveDistance` | Distancia activa secundaria. Es el segundo valor de la variable [DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md). Si la variable no existe, devuelve 1. |
| `double TextHeight` | Altura de los textos. Es la variable [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md). Si la variable no existe, devuelve 1. |
| `double Equidistance` | Equidistancia de las curvas de nivel. Es la variable [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md). Si la variable no existe, devuelve 1. |
| [`Point3D`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) `Scale` | Escala activa en X, Y y Z de la ventana de dibujo, la que usan órdenes como [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md) e [INSR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insr.md). |

## Ejemplo

Esta orden gira 90° el ángulo activo y escribe el nuevo valor en grados en la ventana de resultados:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "GIRA_ANGULO_ACTIVO")]
public class GiraAnguloActivo : Command
{
    public GiraAnguloActivo()
    {
        Initialize += (sender, e) =>
        {
            var parámetros = DigiNG.ActiveParameters;

            // ActiveAngle está en radianes.
            parámetros.ActiveAngle = (parámetros.ActiveAngle + Math.PI / 2) % (2 * Math.PI);

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Ángulo activo: {parámetros.ActiveAngle * 180 / Math.PI:F2}°");
            Dispose();
        };
    }
}
```
