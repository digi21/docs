# Valid
<!-- id: valid-2 -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si la ventana está inicializada y sus límites están ordenados.

```csharp
bool Valid { get; }
```

## Valor de la propiedad

`bool`. En [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md), `true` si `Xmin` no es `null`, `Xmin <= Xmax`, `Ymin <= Ymax` y `Zmin <= Zmax`. La propiedad no lanza excepciones.

Una `Window3D` con `Xmin` distinto de `null` y un mínimo mayor que su máximo tiene `Valid` a `false`, pero `Width`, `Height`, `Depth` y los puntos cardinales no lanzan excepción: devuelven los valores calculados con esos límites, por ejemplo un ancho negativo.

Volver a [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).
