# Digi21.DigiNG.Plugin
<!-- id: digi21.diging.plugin -->

El paquete [NuGet](https://www.nuget.org/packages/Digi21.DigiNG.Plugin) `Digi21.DigiNG.Plugin` contiene el ensamblado de referencia `Digi21.DigiNG.Plugin.dll`: las clases estáticas que comunican una extensión con Digi3D.AI (ventana de dibujo, archivo de dibujo, paneles, barra de estado) y los tipos para escribir extensiones: órdenes, opciones de menú, buscadores y propiedades dinámicas de base de datos. El paquete depende de [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/README.md) 26.0.0.

El paquete solo contiene el ensamblado de referencia, para compilar. En ejecución se usa el ensamblado que instala Digi3D.AI. El [tutorial de extensiones](/digi3d-ai/programacion/.net/tutorial-extension.md) explica cómo se crea y se carga una extensión.

### Package manager
```bash
Install-Package Digi21.DigiNG.Plugin -Version 26.0.0
```

### .NET Cli
```
dotnet add package Digi21.DigiNG.Plugin --version 26.0.0
```

### Package reference
```markup
<PackageReference Include="Digi21.DigiNG.Plugin" Version="26.0.0" />
```

## Espacios de nombres

| Espacio de nombres | Contenido |
| :--- | :--- |
| [Digi21.Digi3D](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/README.md) | Aplicación Digi3D.AI: ventana de resultados, barra de estado, paneles, sonidos y globos de notificación. |
| [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/README.md) | Ventana de dibujo activa: archivo de dibujo, archivos de referencia, pila de órdenes y selección de entidades. |
| [Digi21.DigiNG.Plugin.Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/README.md) | Órdenes: clase base `Command`, atributos de registro y datos de los eventos. |
| [Digi21.DigiNG.Plugin.Databases](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/README.md) | Propiedades dinámicas: valores por defecto de campos de base de datos calculados por la extensión. |
| [Digi21.DigiNG.Plugin.Menu](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/README.md) | Opciones del menú de la ventana de dibujo que ejecutan órdenes de la extensión. |
| [Digi21.DigiNG.Plugin.QualityControl](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/README.md) | Interfaz y excepciones de control de calidad. Digi3D.AI no las usa en la versión 26.0.0. |
| [Digi21.DigiNG.Plugin.Search](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/README.md) | Buscadores del panel de búsqueda. |
| [Digi21.DigiNG.Plugin.TaskPanel](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/README.md) | Tareas del panel de tareas. |

## Tipos de extensión y dónde se registran

| Tipo de extensión | Tipo .NET | Cómo la carga Digi3D.AI |
| :--- | :--- | :--- |
| Orden | Clase derivada de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) con [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md) | Al arrancar, desde la clave `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\Commands`, o con la orden `CARGA_ENSAMBLADO`. |
| Opción de menú | [CommandInMenuAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/atributos/commandinmenuattribute.md) en una orden | Con la orden. |
| Buscador | Clase que implementa [ISearcher](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/interfaces/isearcher.md) con [SearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/searcherattribute.md) | Al arrancar, desde la clave `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\SearchProviders`. |
| Propiedad dinámica | Clase que implementa [IDynamicProperty](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/interfaces/idynamicproperty.md) con [DynamicPropertyAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/atributos/dynamicpropertyattribute.md) | Al arrancar, desde la clave `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\DynamicPropertyProviders`. |

En las tres claves, el nombre de cada valor de tipo cadena es la ruta completa de la DLL. `CARGA_ENSAMBLADO` solo registra órdenes: los buscadores y las propiedades dinámicas solo se cargan al arrancar.
