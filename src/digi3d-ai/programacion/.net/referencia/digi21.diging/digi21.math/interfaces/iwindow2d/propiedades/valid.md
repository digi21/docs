# Valid
<!-- id: valid -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si la ventana está inicializada y sus límites están ordenados.

```csharp
bool Valid { get; }
```

## Valor de la propiedad

`bool`. En [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md), `true` si `Xmin` no es `null`, `Xmin <= Xmax` e `Ymin <= Ymax`. La propiedad no lanza excepciones.

Una `Window2D` con `Xmin` distinto de `null` y `Xmin > Xmax` tiene `Valid` a `false`, pero `Width`, `Height` y los puntos cardinales no lanzan excepción: devuelven los valores calculados con esos límites, por ejemplo un ancho negativo.

Volver a [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/).
