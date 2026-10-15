# Xmin
<!-- id: xmin-2 -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Coordenada X mínima de la ventana.

```csharp
double? Xmin { get; }
```

## Valor de la propiedad

`double?`: la coordenada X mínima, o `null` si la ventana no está inicializada. Una [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) no está inicializada cuando se crea con `new Window3D()`.

`Window3D` lanza `InvalidOperationException` al leer `Width`, `Height`, `Depth`, `Center` o uno de los ocho puntos cardinales si `Xmin` es `null`.

Volver a [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).
