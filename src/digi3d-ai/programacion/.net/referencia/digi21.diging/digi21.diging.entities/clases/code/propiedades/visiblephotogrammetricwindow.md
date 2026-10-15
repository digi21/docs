# VisiblePhotogrammetricWindow
<!-- id: visiblephotogrammetricwindow -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Máscara de bits de los tipos de entidad que se muestran con este código en la ventana fotogramétrica.

```csharp
public uint VisiblePhotogrammetricWindow { get; set; }
```

## Valor de la propiedad

Los bits tienen el mismo significado que en [Visible](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/visible.md). Los constructores asignan `0xFFFFFFFF`, salvo `Code(string, int?, int?)`, que asigna `1`.

`Code` es una estructura: asignar la propiedad en un elemento de `Entity.Codes` modifica una copia. Asigna después la copia a `Entity.Codes[i]`.
