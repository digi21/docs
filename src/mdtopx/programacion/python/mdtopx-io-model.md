# Paquete `mdtopx.io.model`

Formatos de **modelos BIM**.

| Módulo | Formato | Lee | Escribe | Opciones |
|---|---|:-:|:-:|---|
| `ifc` | IFC 4.3 (`.ifc`) | — | ✔ | `write`: `origin` ((0, 0, 0)) |

## IFC

`ifc.write` convierte la escena en un modelo IFC 4.3:

| En la escena | En el IFC |
|---|---|
| Mallas (`scene.meshes`) | Terreno (`IfcGeographicElement` de tipo `TERRAIN`), con las normales de las caras hacia arriba. |
| Polilíneas cerradas con `normal` distinta de cero | Muros (`IfcWall`) si la normal es casi horizontal (`abs(normal.z) < 0.1`) o losas (`IfcSlab`) en otro caso, extruidos en la dirección de la normal. |
| Resto de polilíneas | Anotaciones 3D (`IfcAnnotation`). |

`origin` es un punto `(x, y, z)` que se resta a todas las coordenadas. Por defecto se mantienen las
coordenadas terreno (por ejemplo UTM); algunos visores trabajan mejor con coordenadas cercanas a 0.

## Ejemplo

Exportar a IFC el terreno de un modelo digital de MDTopX:

```python
import mdtopx
from mdtopx.io.malla import mdt
from mdtopx.io.model import ifc

escena = mdt.read(r"C:\datos\Terreno.mdt")

terreno = mdtopx.Scene()
terreno.meshes = [escena.meshes[0]]
ifc.write(r"C:\datos\Terreno.ifc", terreno)
```
