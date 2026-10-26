# DigiNG.IO.Gps
<!-- id: ejemplo-net-gps -->

`DigiNG.IO.Gps` es una **extensión** de Digi3D.AI que usa un receptor GPS como dispositivo de entrada. Añade dos órdenes:

| Orden | Opción de menú | Cómo lee el GPS |
|---|---|---|
| `GPS` | **GPS por API de localización** | Con la API de localización de Windows (`Windows.Devices.Geolocation`). |
| `GPS_CLASICO` | **GPS Clásico** | Con el paquete NuGet `DotSpatial.Positioning`, que lee las frases NMEA de un receptor conectado al equipo. |

Código: [DigiNG.IO.Gps en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/DigiNG.IO.Gps).

## Qué hace

Cada orden añade a Digi3D.AI un panel llamado **Gps**, acoplado a la izquierda, y termina. El panel tiene:

- **Conectar con GPS**: lee el sistema de referencia de la ventana de dibujo y empieza a leer el GPS. Con el GPS conectado, el botón muestra **Desconectar**.
- **Longitud**, **Latitud** y **Altitud**: las últimas coordenadas recibidas del GPS.
- **Dato**: botón que queda pulsado o sin pulsar. Mientras está pulsado, cada posición del GPS se envía a Digi3D.AI como una pulsación del botón de dato.
- **Tentativo**: envía la última posición como una pulsación del botón de tentativo.
- **Cancelar**: envía la última posición como una pulsación del botón de cancelar.

Mientras **Dato** no está pulsado, cada posición se envía sin botón. **Tentativo** y **Cancelar** dejan **Dato** sin pulsar antes de enviar la posición. Cada cambio de estado de **Dato** envía también la última posición, con el botón que corresponde al nuevo estado. La barra de estado de Digi3D.AI muestra el número de satélites (`GPS_CLASICO`) o el estado del GPS (`GPS`).

## Proyecto

El proyecto es una extensión para .NET 10:

```markup
<TargetFramework>net10.0-windows10.0.19041.0</TargetFramework>
<UseWindowsForms>true</UseWindowsForms>
<Digi21DisableAssemblyResolver>true</Digi21DisableAssemblyResolver>
<EnableDynamicLoading>true</EnableDynamicLoading>
...
<PackageReference Include="Digi21.CoordinateSystems" Version="26.0.0" />
<PackageReference Include="Digi21.DigiNG" Version="26.0.0" />
<PackageReference Include="Digi21.DigiNG.Plugin" Version="26.0.0" />
<PackageReference Include="DotSpatial.Positioning" Version="4.0.656" />
```

- `net10.0-windows10.0.19041.0` da acceso a `Windows.Devices.Geolocation`.
- `Digi21DisableAssemblyResolver` quita el resolvedor de ensamblados del paquete `Digi21.DigiNG`, que una extensión no necesita (ver [Migrar una extensión](../migracion-a-net-10.md#migrar-una-extensión)).
- `EnableDynamicLoading` hace que `dotnet build` copie `DotSpatial.Positioning.dll` y `System.IO.Ports.dll` a la carpeta de salida.
- `DotSpatial.Positioning` 4.0.656 es la primera versión para .NET; la 1.9.0 solo contiene ensamblados para .NET Framework.

## Cómo funciona

Las dos órdenes solo se diferencian en el proveedor de GPS que pasan al panel. Las dos clases de proveedor implementan la interfaz `IProveedorGps` del ejemplo, que entrega cada posición con la longitud, la latitud y la altitud, y con la referencia de la altitud:

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

`ProveedorLocation` lee la referencia de la altitud de `Geocoordinate.Point.AltitudeReferenceSystem`. `ProveedorDotSpatial` indica siempre el geoide, porque la frase GGA de NMEA da la altitud sobre el nivel medio del mar.

### Transformación de coordenadas

El panel transforma cada posición al sistema de referencia de la ventana de dibujo con el paquete [Digi21.CoordinateSystems](../referencia/digi21.coordinatesystems/README.md). El sistema de origen depende de la referencia de la altitud:

| Referencia de la altitud | Sistema de origen |
|---|---|
| Elipsoide (`AltitudeReferenceSystem.Ellipsoid`) | EPSG:4979, WGS 84 con altura elipsoidal. |
| Geoide (`AltitudeReferenceSystem.Geoid` y NMEA) | EPSG:4326 + EPSG:5773, WGS 84 con altitud sobre el geoide EGM96. |
| Sin indicar (`Unspecified`, `Terrain`, `Surface`) | EPSG:4979. El panel avisa en la barra de estado de que toma la altitud como altura elipsoidal. |

```csharp
var origen = referencia == ReferenciaAltitud.Geoide
    ? CoordinateSystem.FromEpsg(4326, 5773)
    : CoordinateSystem.FromEpsg(4979);

// Los proveedores dan la longitud antes que la latitud.
var transformación = CoordinateTransformation.Create(origen.WithEastNorthAxes(), sistemaVentana, TransformationOptions.Interactive);
```

`sistemaVentana` es `CoordinateSystem.FromWkt(Digi21.DigiNG.DigiNG.Wkt)`, que el panel lee al pulsar **Conectar con GPS**. Las transformaciones se crean la primera vez que llega una posición con cada referencia de altitud y se liberan al desconectar.

`TransformationOptions.Interactive` muestra los cuadros de diálogo de Digi3D.AI si hay varias operaciones entre los dos sistemas o si falta una transformación vertical. Esos cuadros de diálogo solo se pueden mostrar desde el hilo principal, y los proveedores lanzan sus eventos desde otros hilos, así que el panel crea y usa las transformaciones dentro de un `BeginInvoke`:

```csharp
private void Gps_Coordenada(object sender, CoordenadasEventArgs e)
{
    BeginInvoke(new MethodInvoker(() =>
    {
        ...
        var transformación = Transformación(e.Altitud);
        if (transformación == null)
            return;

        try
        {
            últimasCoordenadas = transformación.Transform(e.Coordenadas);
        }
        catch (CoordinateSystemException ex)
        {
            Digi21.Digi3D.Digi3D.StatusBar.Text = ex.Message;
            return;
        }

        EnvíaEvento(false, false);
    }));
}
```

Si la transformación no se puede crear o cancelas un cuadro de diálogo, el panel desconecta el GPS y muestra un mensaje con el error.

### Envío de la posición

```csharp
// El botón depende del control del panel que ha provocado el envío.
Digi21.DigiNG.DigiNG.SendInputDeviceEvent(coordenadas, button);
```

`button` vale `InputDeviceButton.Snap` (tentativo), `InputDeviceButton.Cancel`, `InputDeviceButton.Data` si **Dato** está pulsado, o `InputDeviceButton.None`. En el código del ejemplo, la llamada a `SendInputDeviceEvent` está dentro de un `BeginInvoke`, que la ejecuta en el hilo del panel, y dentro de un bloque `try` con un `catch` vacío: si la llamada produce una excepción, el panel no avisa.

Para añadir paneles y opciones de menú desde una extensión, consulta en el curso de programación en C# las lecciones [Paneles acoplables](../curso-de-programacion-en-c/paneles-acoplables.md) y [Añadiendo órdenes al menú de Digi3D.AI](../curso-de-programacion-en-c/anadiendo-ordenes-al-menu-de-digi3d.ai.md).
