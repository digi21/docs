# FieldOfView
<!-- id: fieldofview -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Ángulo de visión vertical de la perspectiva, en grados sexagesimales.

```csharp
public double FieldOfView { get; set; }
```

## Valor de la propiedad

`double`. La ventana de dibujo pasa el valor de `FieldOfView` como ángulo vertical a `gluPerspective`; el ángulo horizontal resulta de la proporción de la ventana de dibujo. Al leer la cámara de la ventana de dibujo con `DigiNG.Camera`, `FieldOfView` no se rellena en el objeto devuelto y vale 0 grados. Asigna un valor a `FieldOfView` antes de volver a asignar la cámara a la ventana de dibujo.
