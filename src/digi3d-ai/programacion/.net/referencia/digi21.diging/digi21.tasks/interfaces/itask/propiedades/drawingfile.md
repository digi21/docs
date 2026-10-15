# DrawingFile
<!-- id: drawingfile -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Ruta del archivo de dibujo al que se refiere la tarea.

```csharp
string DrawingFile { get; }
```

## Valor de la propiedad

`string`: ruta del archivo de dibujo. El panel de tareas la muestra en la columna del archivo. Las tareas que generan los archivos de dibujo ([Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md) y el resto de implementaciones de [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) llevan en esta propiedad la ruta del archivo que las generó.
