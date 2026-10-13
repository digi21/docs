# comprimir
<!-- id: ejemplo-net-comprimir -->

`comprimir` es una **aplicación de consola** que elimina de un archivo `.bind` las entidades que tienen la marca de borrado. La orden [COMPRIMIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md) elimina las mismas entidades del archivo de dibujo activo; el programa trabaja sobre un archivo indicado en la línea de órdenes y no abre Digi3D.AI.

Código: [comprimir en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/comprimir). El desarrollo del programa está explicado en el vídeo [Desarrollando una aplicación de consola para comprimir archivos .bind](https://youtu.be/6YrmK-p0FEw).

## Compilar

El proyecto del repositorio usa .NET 8 y los paquetes `Digi21.DigiNG.IO.BinDouble` 24.0.0 y `Digi21.Digi3D.App` 24.0.1. Para compilarlo contra Digi3D.AI para .NET 10, sigue los pasos de [Compilar un ejemplo para .NET 10](README.md#compilar-un-ejemplo-para-net-10). El proyecto queda con:

```xml
<TargetFramework>net10.0</TargetFramework>
...
<PackageReference Include="Digi21.DigiNG.IO.BinDouble" Version="26.0.0" />
```

Compila el proyecto desde la carpeta del repositorio:

```
dotnet build comprimir\comprimir.csproj -c Release -o C:\Herramientas\comprimir
```

## Ejecutar

```
C:\Herramientas\comprimir\comprimir.exe <archivo .bind>
```

| Argumento | Descripción |
|---|---|
| `<archivo .bind>` | Ruta del archivo que se comprime. El programa sustituye este archivo por el archivo comprimido. |

Si falta el argumento, el programa escribe `Se esperaban parámetros: [archivo a comprimir]`. Si el archivo no existe, escribe `El archivo <ruta> no existe`. Los dos mensajes van a la salida de error.

## Cómo funciona

1. Crea un archivo `.bind` en la carpeta temporal del usuario, con el mismo sistema de referencia que el archivo de entrada.
2. Copia a ese archivo las entidades que no tienen la marca de borrado.
3. Borra el archivo original y mueve el archivo temporal a la ruta del original.

```csharp
// Ruta de un archivo .bind en la carpeta temporal.
var rutaTemporal = Path.Combine(Path.GetTempPath(), Path.ChangeExtension(Path.GetTempFileName(), "bind"));

using (var entrada = new BinDouble(args[0]))
{
    // El delegado devuelve el WKT del archivo de entrada: la salida se crea con el mismo sistema de referencia.
    using var salida = new BinDouble(rutaTemporal, () => entrada.Wkt);

    foreach (var geometría in entrada)
    {
        // Las entidades borradas siguen en el archivo con la propiedad Deleted a true.
        if (geometría.Deleted)
            continue;

        salida.Add(geometría.Clone());
    }
}

// Los dos archivos ya están cerrados al salir del bloque using.
File.Delete(args[0]);
File.Move(rutaTemporal, args[0]);
```

`Path.GetTempFileName` crea un archivo vacío con extensión `.tmp` en la carpeta temporal. El programa usa ese nombre con la extensión `.bind` y no borra el archivo `.tmp`.

El programa borra el archivo original antes de mover el temporal. Si `File.Move` falla, el archivo comprimido queda en la carpeta temporal.
