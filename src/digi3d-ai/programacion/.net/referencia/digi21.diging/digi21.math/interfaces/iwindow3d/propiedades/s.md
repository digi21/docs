# S
<!-- id: s-6 -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Punto medio del lado sur de la ventana.

```csharp
Point3D S { get; }
```

## Valor de la propiedad

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md): (`(Xmin + Xmax) / 2`, `Ymin`, `Zmin`).

La coordenada Z de los ocho puntos cardinales es `Zmin`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) lanza la excepción si `Xmin` es `null`. |

Volver a [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).
