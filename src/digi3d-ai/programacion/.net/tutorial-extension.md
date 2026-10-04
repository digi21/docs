# Tutorial: crear una extensión
<!-- id: tutorial-extension -->

En este tutorial crearás una extensión de Digi3D.AI con una orden, `HOLA_MUNDO`, que escribe un mensaje en la ventana de resultados. Una extensión es una biblioteca (`.dll`) que Digi3D.AI carga al arrancar. Sus órdenes se ejecutan dentro del programa, con acceso al archivo de dibujo abierto, a los archivos de referencia y a las ventanas de Digi3D.AI.

## Requisitos

- Digi3D.AI para .NET 10 instalado en el equipo.
- El SDK de .NET 10. Viene con Visual Studio 2026; también se puede instalar por separado desde [dot.net](https://dotnet.microsoft.com/download).

## 1. Crear el proyecto

Abre una consola en la carpeta donde quieras crear el proyecto y ejecuta:

```
dotnet new classlib -n HolaMundo -f net10.0
cd HolaMundo
dotnet add package Digi21.DigiNG.Plugin --version 26.0.0
```

Borra el archivo `Class1.cs` que crea la plantilla.

`Digi21.DigiNG.Plugin` contiene los tipos para crear órdenes y para usar las ventanas de Digi3D.AI, y depende de `Digi21.DigiNG`, que NuGet añade también.

## 2. Configurar el proyecto

Sustituye el contenido de `HolaMundo.csproj` por:

```xml
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <TargetFramework>net10.0-windows</TargetFramework>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
    <EnableDynamicLoading>true</EnableDynamicLoading>
    <Digi21DisableAssemblyResolver>true</Digi21DisableAssemblyResolver>
  </PropertyGroup>

  <ItemGroup>
    <PackageReference Include="Digi21.DigiNG.Plugin" Version="26.0.0" />
  </ItemGroup>

</Project>
```

- `net10.0-windows`: las extensiones usan tipos de Windows, como los paneles de Digi3D.AI.
- `EnableDynamicLoading`: prepara la biblioteca para cargarse desde otro programa. Si la extensión usa otros paquetes NuGet, sus DLL se copian a la carpeta de salida y Digi3D.AI las encuentra al cargarla.
- `Digi21DisableAssemblyResolver`: deja fuera el archivo que el paquete añade para que las aplicaciones de consola encuentren los ensamblados de Digi3D.AI. Una extensión no lo necesita, porque Digi3D.AI ya tiene cargados esos ensamblados.

## 3. Escribir la orden

Crea el archivo `OrdenHolaMundo.cs` con este contenido:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;

namespace HolaMundo;

[Command(Name = "HOLA_MUNDO")]
public class OrdenHolaMundo : Command
{
    public OrdenHolaMundo()
    {
        Initialize += (sender, e) =>
        {
            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine("Hola mundo desde una extensión .NET 10.");
            Dispose();
        };
    }
}
```

- El atributo `[Command]` indica a Digi3D.AI que la clase es una orden, y `Name` es el nombre que se teclea para ejecutarla. Digi3D.AI no distingue mayúsculas y minúsculas en el nombre.
- La clase hereda de `Command` y tiene un constructor público sin parámetros. Digi3D.AI crea un objeto de la clase con ese constructor cada vez que se ejecuta la orden; si la clase no lo tiene, muestra un error al ejecutarla.
- El evento `Initialize` se produce al empezar la orden. Aquí muestra la ventana de resultados, escribe una línea y termina la orden con `Dispose()`. Una orden que espera a que el usuario marque puntos o seleccione entidades no llama a `Dispose()` hasta terminar; esas órdenes están explicadas en el [curso de programación en C#](curso-de-programacion-en-c/README.md).

## 4. Compilar la extensión

```
dotnet build -c Release -o C:\MisExtensiones\HolaMundo
```

La carpeta de destino contiene `HolaMundo.dll` y sus archivos de configuración, pero ninguna DLL de Digi21: Digi3D.AI ya las tiene cargadas.

## 5. Cargar la extensión en Digi3D.AI

### Para probarla

En la línea de órdenes de Digi3D.AI, ejecuta la orden `CARGA_ENSAMBLADO` con la ruta de la DLL. Si la ruta tiene espacios, escríbela entre comillas. En la interfaz en inglés, la orden se llama `LOAD_ASSEMBLY`.

```
CARGA_ENSAMBLADO=C:\MisExtensiones\HolaMundo\HolaMundo.dll
```

La ventana de resultados muestra las órdenes que ha cargado:

```
Ensamblado C:\MisExtensiones\HolaMundo\HolaMundo.dll cargado. Órdenes: hola_mundo.
```

A continuación, ejecuta la orden:

```
HOLA_MUNDO
```

La ventana de resultados muestra `Hola mundo desde una extensión .NET 10.`

La extensión queda cargada hasta que cierras Digi3D.AI. Si vuelves a cargar la misma DLL, Digi3D.AI conserva las órdenes que ya tenía y lo indica en la ventana de resultados. Para probar una versión nueva de la DLL, cierra Digi3D.AI, compila y vuelve a cargarla.

Si la DLL no tiene ninguna clase pública con el atributo `[Command]`, la ventana de resultados lo indica y no se carga ninguna orden. Si la DLL no se puede cargar, Digi3D.AI muestra un mensaje con la causa del error.

### Para cargarla siempre al arrancar

Digi3D.AI carga al arrancar las extensiones registradas en la clave `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\Commands`. Cada extensión es un valor de tipo cadena: el **nombre** del valor es la ruta completa de la DLL y el **dato** es una descripción. Para registrar la extensión, ejecuta en una consola **como administrador**:

```
reg add "HKLM\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\Commands" /v "C:\MisExtensiones\HolaMundo\HolaMundo.dll" /t REG_SZ /d "Orden Hola mundo" /reg:64 /f
```

Reinicia Digi3D.AI y ejecuta `HOLA_MUNDO`. Para dejar de cargarla, borra el valor:

```
reg delete "HKLM\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\Commands" /v "C:\MisExtensiones\HolaMundo\HolaMundo.dll" /reg:64 /f
```

Si la DLL no se puede cargar, Digi3D.AI muestra al arrancar un mensaje con la ruta y la causa del error.

## Siguientes pasos

- Para añadir la orden al menú de Digi3D.AI, consulta [Añadiendo órdenes al menú de Digi3D.AI](curso-de-programacion-en-c/anadiendo-ordenes-al-menu-de-digi3d.ai.md).
- Para responder a los puntos que marca el usuario o a las entidades que selecciona, consulta en el [curso de programación en C#](curso-de-programacion-en-c/README.md) las lecciones *Eventos de ratón* y *Selección de entidades*.
- Si tienes extensiones compiladas con los paquetes 24.0.0, lee [Migración a .NET 10](migracion-a-net-10.md#migrar-una-extensión).
