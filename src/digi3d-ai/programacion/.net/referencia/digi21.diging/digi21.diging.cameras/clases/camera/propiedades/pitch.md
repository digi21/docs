# Pitch
<!-- id: pitch -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Giro de la cámara sobre el eje X, en grados sexagesimales.

```csharp
public float Pitch { get; set; }
```

## Valor de la propiedad

`float`. Con `Pitch`, `Yaw` y `Roll` a 0, la cámara mira en la dirección −Z. La ventana de dibujo aplica `Pitch` antes que `Roll` y `Yaw`, por lo que `Pitch` gira la cámara sobre su propio eje horizontal: 90 inclina la dirección de la vista desde −Z hasta el horizonte. Lee el apartado de los giros en [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).
