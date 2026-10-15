# Xmin
<!-- id: xmin -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Coordenada X mínima de la ventana.

```csharp
double? Xmin { get; }
```

## Valor de la propiedad

`double?`: la coordenada X mínima, o `null` si la ventana no está inicializada. Una [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) no está inicializada cuando se crea con `new Window2D()` o cuando es el resultado de `Intersection` entre dos ventanas que no se solapan.

`Window2D` lanza `InvalidOperationException` al leer `Width`, `Height`, `Center` o uno de los ocho puntos cardinales si `Xmin` es `null`.

Volver a [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/).
