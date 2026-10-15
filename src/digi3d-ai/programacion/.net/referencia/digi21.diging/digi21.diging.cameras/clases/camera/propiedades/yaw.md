# Yaw
<!-- id: yaw -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Giro de la cámara sobre el eje Z del archivo de dibujo, en grados sexagesimales.

```csharp
public float Yaw { get; set; }
```

## Valor de la propiedad

`float`. La ventana de dibujo aplica `Yaw` después de `Pitch` y `Roll`, sobre el eje Z del archivo de dibujo. En una vista cenital (`Pitch` y `Roll` a 0), `Yaw` gira la vista en el plano X, Y. Lee el apartado de los giros en [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).
