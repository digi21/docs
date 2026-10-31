# DigiNG.IO.Gps
<!-- id: ejemplo-net-gps -->
<!-- origen: a35c0495a0cab484a4c6cdf5c77fd0732e29b46a -->

`DigiNG.IO.Gps` is a Digi3D.AI **extension** that uses a GPS receiver as an input device. It adds two commands:

| Command | Menu option | How it reads GPS |
|---|---|---|
| `GPS` | **GPS via location API** | Using the Windows location API (`Windows.Devices.Geolocation`). |
| `GPS_CLASICO` | **Classic GPS** | Using the `DotSpatial.Positioning` NuGet package, which reads NMEA sentences from a receiver connected to the computer. |

Code: [DigiNG.IO.Gps on GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/DigiNG.IO.Gps).

## What it does

Each command adds a pane named **Gps**, docked on the left, to Digi3D.AI and then ends. The pane has:

- **Connect to GPS**: reads the drawing window's reference system and starts reading GPS. When connected, the button shows **Disconnect**.
- **Longitude**, **Latitude** and **Altitude**: the latest coordinates received from GPS.
- **Data**: a button that stays pressed or released. While pressed, each GPS position is sent to Digi3D.AI as a data button press.
- **Snap**: sends the latest position as a snap button press.
- **Cancel**: sends the latest position as a cancel button press.

While **Data** is not pressed, each position is sent without a button. **Snap** and **Cancel** release **Data** before sending the position. Each change in **Data** state also sends the latest position with the button corresponding to the new state. The Digi3D.AI status bar shows the satellite count (`GPS_CLASICO`) or GPS status (`GPS`).

## Project

The project is a .NET 10 extension:

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

- `net10.0-windows10.0.19041.0` provides access to `Windows.Devices.Geolocation`.
- `Digi21DisableAssemblyResolver` removes the assembly resolver from the `Digi21.DigiNG` package, which an extension does not need (see [Migrating an extension](../migracion-a-net-10.md#migrating-an-extension)).
- `EnableDynamicLoading` makes `dotnet build` copy `DotSpatial.Positioning.dll` and `System.IO.Ports.dll` to the output folder.
- `DotSpatial.Positioning` 4.0.656 is the first version for .NET; version 1.9.0 contains only .NET Framework assemblies.

## How it works

The two commands differ only in the GPS provider they pass to the pane. Both provider classes implement the example's `IProveedorGps` interface, which delivers each position with longitude, latitude and altitude, along with the altitude reference:

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
        // Add the pane docked on the left and end the command.
        Digi3D.Panes.Add(new FormularioGps(new ProveedorDotSpatial()), PaneDock.Left, false);
        Dispose();
    }
}
```

`ProveedorLocation` reads the altitude reference from `Geocoordinate.Point.AltitudeReferenceSystem`. `ProveedorDotSpatial` always specifies the geoid, because the NMEA GGA sentence gives altitude above mean sea level.

### Coordinate transformation

The pane transforms each position to the drawing window's reference system using the [Digi21.CoordinateSystems](../referencia/digi21.coordinatesystems/README.md) package. The source system depends on the altitude reference:

| Altitude reference | Source system |
|---|---|
| Ellipsoid (`AltitudeReferenceSystem.Ellipsoid`) | EPSG:4979, WGS 84 with ellipsoidal height. |
| Geoid (`AltitudeReferenceSystem.Geoid` and NMEA) | EPSG:4326 + EPSG:5773, WGS 84 with altitude above the EGM96 geoid. |
| Unspecified (`Unspecified`, `Terrain`, `Surface`) | EPSG:4979. The pane reports in the status bar that it treats altitude as ellipsoidal height. |

```csharp
var origen = referencia == ReferenciaAltitud.Geoide
    ? CoordinateSystem.FromEpsg(4326, 5773)
    : CoordinateSystem.FromEpsg(4979);

// Providers supply longitude before latitude.
var transformación = CoordinateTransformation.Create(origen.WithEastNorthAxes(), sistemaVentana, TransformationOptions.Interactive);
```

`sistemaVentana` is `CoordinateSystem.FromWkt(Digi21.DigiNG.DigiNG.Wkt)`, which the pane reads when **Connect to GPS** is clicked. Transformations are created when the first position with each altitude reference arrives and released on disconnection.

`TransformationOptions.Interactive` displays Digi3D.AI dialog boxes if several operations exist between the systems or a vertical transformation is missing. These dialog boxes can only be displayed from the main thread, and providers raise their events from other threads, so the pane creates and uses transformations inside a `BeginInvoke`:

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

If the transformation cannot be created or you cancel a dialog box, the pane disconnects GPS and displays an error message.

### Sending the position

```csharp
// The button depends on the pane control that triggered the send.
Digi21.DigiNG.DigiNG.SendInputDeviceEvent(coordenadas, button);
```

`button` is `InputDeviceButton.Snap` (snap), `InputDeviceButton.Cancel`, `InputDeviceButton.Data` if **Data** is pressed, or `InputDeviceButton.None`. In the example code, the `SendInputDeviceEvent` call is inside a `BeginInvoke`, which runs it on the pane's thread, and inside a `try` block with an empty `catch`: if the call throws an exception, the pane does not report it.

To add panes and menu options from an extension, see the [Dockable panes](../curso-de-programacion-en-c/paneles-acoplables.md) and [Adding commands to the Digi3D.AI menu](../curso-de-programacion-en-c/anadiendo-ordenes-al-menu-de-digi3d.ai.md) lessons in the C# programming course.
