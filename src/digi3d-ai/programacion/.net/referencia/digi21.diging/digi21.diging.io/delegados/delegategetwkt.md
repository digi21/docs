# DelegateGetWkt
<!-- id: delegategetwkt -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Función sin parámetros que devuelve el WKT (*Well-Known Text*, el texto que define un [sistema de referencia de coordenadas](/digi3d-ai/sistemas-referencia-coordenadas/)) que se asigna a un archivo de dibujo cuando el archivo no tiene uno.

```csharp
public delegate string DelegateGetWkt();
```

Los constructores de los archivos de dibujo reciben este delegado en el parámetro `GetWkt` y solo lo llaman si el archivo no tiene sistema de referencia de coordenadas. Cada formato decide cuándo:

| Clase | Cuándo llama al delegado |
| :--- | :--- |
| [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md) | Si no existe el archivo `.prj`. |
| [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md) | Si no existe el archivo `.bind`. |
| [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md) | Si la carpeta no tiene capas. |
| [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md) | No lo llama: el sistema de referencia de coordenadas sale del archivo. |

Una expresión lambda que devuelve un `string` se convierte en este delegado, por ejemplo `() => entrada.Wkt`.

## Ejemplo

El [ejemplo de IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/#ejemplo) crea un archivo `.bin` con el sistema de referencia de coordenadas de otro archivo mediante un `DelegateGetWkt`.
