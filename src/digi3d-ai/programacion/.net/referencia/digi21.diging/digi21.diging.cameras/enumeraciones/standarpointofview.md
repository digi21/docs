# StandarPointOfView
<!-- id: standarpointofview -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Orientaciones predefinidas de una cámara respecto al modelo.

```csharp
public enum StandarPointOfView
```

Ningún miembro público de Digi3D.AI recibe ni devuelve este tipo: la orientación de una [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/) se indica con `Pitch`, `Yaw` y `Roll`.

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Top` | 0 | Cámara encima del modelo, mirando hacia abajo. |
| `Bottom` | 1 | Cámara debajo del modelo, mirando hacia arriba. |
| `Left` | 2 | Cámara a la izquierda del modelo, mirando hacia la derecha. |
| `Right` | 3 | Cámara a la derecha del modelo, mirando hacia la izquierda. |
| `Front` | 4 | Cámara delante del modelo, mirando hacia atrás. |
| `Back` | 5 | Cámara detrás del modelo, mirando hacia delante. |
| `SW` | 6 | Cámara al suroeste del modelo, mirando hacia su centro. |
| `SE` | 7 | Cámara al sureste del modelo, mirando hacia su centro. |
| `NE` | 8 | Cámara al noreste del modelo, mirando hacia su centro. |
| `NW` | 9 | Cámara al noroeste del modelo, mirando hacia su centro. |
| `Free` | 10 | Orientación distinta de las anteriores. |
