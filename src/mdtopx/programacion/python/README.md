# Python
<!-- id: python-4 -->

El paquete de Python **`mdtopx`** da acceso, desde programas de Python **normales** (fuera de MDTopX),
al mismo motor que usa MDTopX:

- **Leer y escribir archivos** de nubes de puntos, dibujo, rejillas (MDE), mallas, imágenes y modelos
  BIM con los mismos plugins de importación y exportación que carga MDTopX.
- **Procesar** la geometría: triangular, tetraedrizar, generar mapas de pendientes o de sombreado,
  filtrar y trocear nubes, cubicar…

> Versión de Python: **3.11 (x64)**. Toda la API está **en inglés**: clases en `PascalCase`; funciones,
> propiedades y argumentos en `snake_case`. Las coordenadas son siempre **coordenadas terreno** en
> `double` (por ejemplo UTM, en metros).

> El panel de Python que hay **dentro** de MDTopX tiene su propio módulo, que también se llama
> `mdtopx`. Este paquete es para programas de Python externos; no lo importes desde ese panel.

## Paquetes

| Paquete | Contenido |
|---|---|
| [`mdtopx`](mdtopx.md) | El motor: la escena (`Scene`) y sus entidades, [triangulación y volúmenes](mdtopx-triangulacion.md), [modelos digitales de elevaciones](mdtopx-mde.md), [nubes de puntos](mdtopx-nubes.md) y [cubicación de acopios](mdtopx-acopios.md). |
| [`mdtopx.io`](mdtopx-io.md) | Carga de plugins, interfaz común de lectura y escritura, troceado de nubes. |
| [`mdtopx.io.pointcloud`](mdtopx-io-pointcloud.md) | Nubes de puntos: LAS/LAZ, E57, PTS, PTX, PCD, XYZ, PCAP y trayectorias. |
| [`mdtopx.io.vector`](mdtopx-io-vector.md) | Dibujo: BIN, BIND, ASCII DIGI, DGN, DWG, DXF, Shapefile, GeoPackage, KML, GeoMedia. |
| [`mdtopx.io.raster`](mdtopx-io-raster.md) | Rejillas de cotas (MDE): GeoTIFF, ESRI ASCII Grid, GTOPO30, MTN25, SGE, Socet Set, ArcInfo, INGR. |
| [`mdtopx.io.malla`](mdtopx-io-malla.md) | Mallas trianguladas: STL y el **MDT nativo de MDTopX** (`.mdt`). |
| [`mdtopx.io.image`](mdtopx-io-image.md) | Imágenes en color: BMP, TIFF, JPEG, ECW/JPEG2000. |
| [`mdtopx.io.model`](mdtopx-io-model.md) | Modelos BIM: IFC 4.3. |

## Instalación

El paquete es una carpeta `mdtopx` que contiene el motor compilado (`_core`) y, en
`mdtopx/io/plugins`, las DLL de los plugins. Para usarlo, añade la carpeta **que contiene** a `mdtopx`
a la ruta de búsqueda de Python, con la variable de entorno `PYTHONPATH` o desde el propio programa:

```python
import sys
sys.path.insert(0, r"C:\ruta\a\la\carpeta\que\contiene\mdtopx")

import mdtopx
```

Los plugins se buscan en `mdtopx/io/plugins`. Para usar otra carpeta, indícala en la variable de
entorno `MDTOPX_PLUGINS`.

## Primer programa

Lee un modelo digital de MDTopX y muestra su tamaño:

```python
from mdtopx.io.malla import mdt

escena = mdt.read(r"C:\datos\Terreno.mdt")
terreno = escena.meshes[0]
print(len(terreno.mesh.vertices), "puntos,", len(terreno.mesh.triangles), "triángulos")
```

Todos los formatos siguen el mismo esquema: se lee el archivo a una [`Scene`](mdtopx.md#la-escena)
(una colección de puntos, polilíneas, textos, nubes, mallas, rejillas e imágenes), se trabaja con
ella y, si hace falta, se escribe en otro formato:

```python
from mdtopx.io.pointcloud import las, xyz

escena = las.read(r"C:\datos\vuelo.laz")
xyz.write(r"C:\datos\vuelo.xyz", escena, write_intensity=True)
```
