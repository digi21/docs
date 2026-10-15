# FieldOfView
<!-- id: fieldofview -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Ángulo de visión vertical de la perspectiva, en grados sexagesimales.

```csharp
public double FieldOfView { get; set; }
```

## Valor de la propiedad

`double`. La ventana de dibujo pasa este valor como ángulo vertical a `gluPerspective`; el ángulo horizontal resulta de la proporción de la ventana de dibujo. Al leer la cámara de la ventana de dibujo con `DigiNG.Camera`, el objeto devuelto no rellena esta propiedad: vale 0. Asígnala antes de volver a asignar la cámara a la ventana de dibujo.
