# DigiNG.IO.Gps
<!-- id: ejemplo-net-gps -->

`DigiNG.IO.Gps` es una **extensión** de Digi3D.AI que usa un receptor GPS como dispositivo de entrada. Añade dos órdenes:

| Orden | Opción de menú | Cómo lee el GPS |
|---|---|---|
| `GPS` | **GPS por API de localización** | Con la API de localización de Windows (`System.Device.Location`). |
| `GPS_CLASICO` | **GPS Clásico** | Con el paquete NuGet `DotSpatial.Positioning`, que lee las frases NMEA de un receptor conectado al equipo. |

Código: [DigiNG.IO.Gps en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/DigiNG.IO.Gps).

> [!WARNING]
> Este ejemplo **no compila** con los paquetes 24.0.0 ni con los paquetes 26.0.0. La sección [Qué haría falta para compilarlo](#qué-haría-falta-para-compilarlo) enumera los errores.

## Qué hace

Cada orden añade a Digi3D.AI un panel llamado **Gps**, acoplado a la izquierda, y termina. El panel tiene:

- **Conectar con GPS**: crea la transformación de coordenadas entre el sistema de referencia del GPS (EPSG:4979, coordenadas geográficas 3D sobre WGS 84) y el de la ventana de dibujo, y empieza a leer el GPS. Si la transformación no se puede crear, muestra un mensaje con el error. Con el GPS conectado, el botón muestra **Desconectar**.
- **Longitud**, **Latitud** y **Altitud**: las últimas coordenadas recibidas del GPS.
- **Dato**: botón que queda pulsado o sin pulsar. Mientras está pulsado, cada posición del GPS se envía a Digi3D.AI como una pulsación del botón de dato.
- **Tentativo**: envía la última posición como una pulsación del botón de tentativo.
- **Cancelar**: envía la última posición como una pulsación del botón de cancelar.

Mientras **Dato** no está pulsado, cada posición se envía sin botón. **Tentativo** y **Cancelar** dejan **Dato** sin pulsar antes de enviar la posición. Cada cambio de estado de **Dato** envía también la última posición, con el botón que corresponde al nuevo estado. La barra de estado de Digi3D.AI muestra el número de satélites (`GPS_CLASICO`) o el estado del GPS (`GPS`).

## Cómo funciona

Las dos órdenes solo se diferencian en el proveedor de GPS que pasan al panel. Las dos clases de proveedor implementan la interfaz `IProveedorGps` del ejemplo.

```csharp
[Command(Name ="gps_clasico", Description ="Activa el panel de GPS")]
[CommandInMenu("GPS Clásico", MenuItemGroup.WindowGroup1)]
public class GpsClasico : Command
{
    public GpsClasico()
    {
        this.Initialize += ConectaGps_Initialize;
    }

    private void ConectaGps_Initialize(object sender, EventArgs e)
    {
        // Añade el panel acoplado a la izquierda y termina la orden.
        Digi3D.Panes.Add(new FormularioGps(new ProveedorDotSpatial()), PaneDock.Left, false);
        Dispose();
    }
}
```

El panel transforma cada posición al sistema de referencia de la ventana de dibujo y la envía con `SendInputDeviceEvent`:

```csharp
// La transformación recibe latitud, longitud y altura, en ese orden.
últimasCoordenadas = transformación.MathTransform.Transform(new[]
{
    e.Coordenadas.Y,
    e.Coordenadas.X,
    e.Coordenadas.Z
});

...

// El botón depende del control del panel que ha provocado el envío.
Digi21.DigiNG.DigiNG.SendInputDeviceEvent(
    new Digi21.Math.Point3D(
        últimasCoordenadas[0],
        últimasCoordenadas[1],
        últimasCoordenadas[2]),
    button);
```

`button` vale `InputDeviceButton.Snap` (tentativo), `InputDeviceButton.Cancel`, `InputDeviceButton.Data` si **Dato** está pulsado, o `InputDeviceButton.None`. En el código del ejemplo, la llamada a `SendInputDeviceEvent` está dentro de un `BeginInvoke`, que la ejecuta en el hilo del panel, y dentro de un bloque `try` con un `catch` vacío: si la llamada produce una excepción, el panel no avisa.

Para añadir paneles y opciones de menú desde una extensión, consulta en el curso de programación en C# las lecciones [Paneles acoplables](../curso-de-programacion-en-c/paneles-acoplables.md) y [Añadiendo órdenes al menú de Digi3D.AI](../curso-de-programacion-en-c/anadiendo-ordenes-al-menu-de-digi3d.ai.md).

## Qué haría falta para compilarlo

El proyecto del repositorio usa `net8.0-windows`, Windows Forms y los paquetes `Digi21.DigiNG` y `Digi21.DigiNG.Plugin` 24.0.0 y `DotSpatial.Positioning` 1.9.0. Al compilarlo, con los paquetes 24.0.0 o con los 26.0.0, se producen estos errores:

| Error | Causa |
|---|---|
| `CS0234: The type or namespace name 'OpenGis' does not exist in the namespace 'Digi21'` en `FormularioGps.cs` | El proyecto no referencia ningún paquete con los espacios de nombres `Digi21.OpenGis.*`. |
| `CS0234: The type or namespace name 'Device' does not exist in the namespace 'System'` en `ProveedorLocation.cs` | `System.Device.Location` solo existe en .NET Framework. |
| `CS0103: The name 'SelectTransformationHelper' does not exist in the current context` y lo mismo con `CreateVerticalTransformationHelper` | Esas clases no están en los paquetes que referencia el proyecto. Aparecen al resolver el primer error. |

Para compilarlo contra Digi3D.AI para .NET 10:

1. Migra el proyecto como una extensión: `TargetFramework` a `net10.0-windows`, las referencias `Digi21.DigiNG.*` a `26.0.0` y la propiedad `Digi21DisableAssemblyResolver` a `true`. Ver [Migrar una extensión](../migracion-a-net-10.md#migrar-una-extensión). Añade también la propiedad `EnableDynamicLoading` con valor `true`, como en el [tutorial de extensiones](../tutorial-extension.md#2-configurar-el-proyecto): sin ella, `dotnet build` no copia `DotSpatial.Positioning.dll` a la carpeta de salida.
2. Sustituye `System.Device.Location` en `ProveedorLocation.cs` por una API de localización disponible en .NET 10, por ejemplo `Windows.Devices.Geolocation`, o elimina la orden `GPS` y su proveedor.
3. Añade referencias a paquetes que contengan `Digi21.OpenGis.CoordinateSystems`, `Digi21.OpenGis.CoordinateTransformations`, `Digi21.OpenGis.Epsg`, `SelectTransformationHelper` y `CreateVerticalTransformationHelper`.

El paso 3 no tiene solución con los paquetes 26.0.0:

- `Digi21.DigiNG` y `Digi21.DigiNG.Plugin` 26.0.0 no contienen ninguna API de transformación de coordenadas. La clase `GeographicCalculator` solo calcula áreas, distancias y perímetros.
- Digi3D.AI para .NET 10 no instala ensamblados .NET con los espacios de nombres `Digi21.OpenGis.*`. Las transformaciones de coordenadas de Digi3D.AI están en bibliotecas nativas sin API .NET.
- Los paquetes `Digi21.OpenGis` 22.0.0 y `Digi21.Epsg` 22.0.0 de nuget.org contienen ensamblados de referencia para .NET Framework 4.6 (`lib\net46`). Con ellos el proyecto compila, con el aviso `warning NU1701`, pero al ejecutarse no hay ningún ensamblado que implemente esos tipos.

Por eso el proyecto del repositorio sigue sin migrar. Para compilarlo hace falta un paquete 26.0.0 con una API .NET de transformación de coordenadas, y que Digi3D.AI instale su implementación.

`DotSpatial.Positioning` 1.9.0 también contiene solo ensamblados para .NET Framework, y la restauración avisa igualmente con `warning NU1701`.
