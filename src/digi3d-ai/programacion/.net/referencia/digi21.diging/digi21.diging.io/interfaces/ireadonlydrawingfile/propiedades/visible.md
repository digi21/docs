# Visible
<!-- id: visible-3 -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Visibilidad del archivo de dibujo en la ventana de dibujo de Digi3D.AI.

```csharp
bool Visible { get; set; }
```

## Valor de la propiedad

`bool`: `true` si la ventana de dibujo muestra las entidades del archivo. La propiedad no afecta a la lectura ni a la escritura de entidades.

Es la única propiedad de la interfaz con descriptor de acceso `set`. El comportamiento depende de la implementación:

| Clase | Comportamiento |
| :--- | :--- |
| [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md) | Guardan el valor en el objeto y lo devuelven en `get`. No lanzan excepciones. |
| [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md) | Muestra u oculta el archivo cargado en la ventana de dibujo. `get` y `set` lanzan `MissingMethodException` si el formato del archivo no permite ocultarlo. |
