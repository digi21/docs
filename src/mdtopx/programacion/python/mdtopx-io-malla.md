# Paquete `mdtopx.io.malla`
<!-- id: mdtopx-io-malla -->

Formatos de **mallas trianguladas** (TIN). Leen a `scene.meshes`: una `MeshEntity` por malla, con la
malla en `mesh` (`vertices` y `triangles`). Siguen la
[interfaz común](mdtopx-io.md#interfaz-común-de-los-formatos) (`info`, `read`, `write`).

| Módulo | Formato | Lee | Escribe | Opciones |
|---|---|:-:|:-:|---|
| `mdt` | MDT nativo de MDTopX (`.mdt`) | ✔ | — | — |
| `stl` | Estereolitografía (`.stl`) | ✔ | ✔ | `write`: `ascii` (False) |
| `obj` | Wavefront OBJ (`.obj`), con texturas al escribir | ✔ | ✔ | `write`: `local_origin` (True), `texture_size` (4096) |

## MDT nativo de MDTopX

El módulo `mdt` lee los modelos digitales del terreno guardados por MDTopX (archivos `.mdt`, de
cualquier versión: de la 3, la de MDTop, a la 9, la actual; la 9 es la 8 con las
[texturas integradas](../../modulo-virtualand/integrar-texturas.md) al final). Solo lee la **geometría**:

| Contenido del `.mdt` | En la escena |
|---|---|
| Triangulación del terreno | `scene.meshes[0]` (`id` = 0) |
| Objetos (edificios, árboles, puentes…), cada uno con su triangulación | `scene.meshes[1:]` (`id` = 1, 2…), en el orden del archivo |
| Código de los triángulos de cada malla | `layer_code` de la malla |
| Códigos de las líneas de ruptura | `scene.layers` (uno por código, sin repetir) |
| Lados de ruptura de cada triángulo | `constraint1`, `constraint2`, `constraint3` del `Triangle`: índice en `scene.layers` del código de ruptura de los lados a-b, b-c y c-a (`-1` = ninguno) |
| Límites del modelo | `scene.polylines` |

Los índices de los triángulos (`a`, `b`, `c`) empiezan en 0 y se refieren a los `vertices` de su
propia malla. Los triángulos borrados no se cargan.

No se leen el sistema de referencia, la configuración de las curvas de nivel, los atributos LiDAR de
los puntos, las texturas ni la base de datos asociada (`.dbf`).

> Este formato no declara extensión, así que un `IoHost` no lo encuentra: léelo siempre con
> `mdt.read()`.

### Ejemplo

```python
from collections import Counter
from mdtopx.io.malla import mdt

escena = mdt.read(r"C:\datos\Triangulación de CAMPUS_SUR.mdt")

print("Mallas:", len(escena.meshes), "| límites:", len(escena.polylines))
print("Objetos por código:", Counter(m.layer_code for m in escena.meshes[1:]))

codigos = [capa.name for capa in escena.layers]
print("Códigos de ruptura:", codigos)

# Terreno. Las listas se copian en cada acceso: se guardan una vez en variables.
terreno = escena.meshes[0]
vertices = terreno.mesh.vertices
triangulos = terreno.mesh.triangles
print(f"Terreno: {len(vertices)} puntos, {len(triangulos)} triángulos")

zs = [v.z for v in vertices]
print(f"Cotas: {min(zs):.3f} a {max(zs):.3f}")

# Lados de ruptura por código
rupturas = Counter()
for t in triangulos:
    for r in (t.constraint1, t.constraint2, t.constraint3):
        if r >= 0:
            rupturas[codigos[r]] += 1
print("Lados de ruptura:", dict(rupturas))

# Límites del modelo
for limite in escena.polylines[:3]:
    print(f"Límite {limite.layer_code}: {len(limite.vertices)} vértices, "
          f"cerrado={limite.closed}, perímetro={limite.perimeter:.2f} m")
```

Para ver el avance de la lectura de un archivo grande, pasa una función en `progress`:

```python
escena = mdt.read(ruta, progress=lambda f: print(f"\r{f:.0%}", end="") or True)
```

## STL

El módulo `stl` lee archivos STL binarios o ASCII (lo detecta solo) y los escribe en binario o, con
`ascii=True`, en ASCII. Al escribir se vuelcan todas las mallas de la escena.

Guardar el terreno de un `.mdt` como STL:

```python
import mdtopx
from mdtopx.io.malla import mdt, stl

escena = mdt.read(r"C:\datos\Terreno.mdt")

solo_terreno = mdtopx.Scene()
solo_terreno.meshes = [escena.meshes[0]]
stl.write(r"C:\datos\Terreno.stl", solo_terreno)
```

## Wavefront OBJ

El módulo `obj` lee la malla de un archivo OBJ (vértices y caras; los polígonos se dividen en
triángulos; no lee texturas, normales ni materiales, y los grupos forman una sola malla) y escribe las
mallas de la escena con las **imágenes en planta georreferenciadas** de `scene.images` como texturas:
el `.obj`, un `.mtl` y un PNG por trozo de textura. Es lo mismo que hace
[Exportar a OBJ con texturas](../../modulo-virtualand/exportar-obj.md) en MDTopX:

- Las imágenes se parten en trozos de `texture_size` píxeles como mucho, y los triángulos que cruzan
  el borde de un trozo se parten por él. Si dos imágenes se solapan, manda la última de
  `scene.images`, salvo donde es transparente (`has_alpha`).
- Con `local_origin=True`, los vértices se escriben respecto al mínimo de la malla redondeado al metro,
  anotado en la línea `# origen X Y Z` del `.obj` y en `<nombre>_origen.txt`. Al leer un OBJ con ese
  origen, se suma.
- El eje Z va hacia arriba.

Exportar el terreno de un `.mdt` con una ortofoto como textura:

```python
import mdtopx
from mdtopx.io.malla import mdt, obj
from mdtopx.io.image import tiff

escena = mdtopx.Scene()
escena.meshes = [mdt.read(r"C:\datos\Terreno.mdt").meshes[0]]
escena.images = tiff.read(r"C:\datos\orto.tif").images  # con su georreferencia en el GeoTIFF
obj.write(r"C:\datos\Terreno.obj", escena)
```
