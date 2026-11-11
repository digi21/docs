# Sensores
<!-- id: sensores -->

La ventana fotogramétrica puede mostrar modelos obtenidos con distintos sensores.

Selecciona el sensor con el que se han obtenido las imágenes o las nubes de puntos. Si las imágenes se han obtenido con una cámara Leica ADS100, selecciona el sensor `ADS`.

Cada sensor necesita un conjunto de datos distinto. La pestaña **Proyecto Fotogramétrico** del cuadro de diálogo **Nuevo Proyecto** adapta la interfaz de usuario en función del sensor seleccionado.

Hay sensores monoscópicos (muestran una única imagen), sensores estereoscópicos (muestran siempre un par de imágenes en estereoscopía) y sensores tri-estereoscópicos (que muestran siempre estereoscopía pero que te permiten seleccionar entre tres opciones para ver el modelo con más o menos sensación estereoscópica o con más o menos proyección).

| Nombre | Descripción | Tipo de estéreo | Sintético | Cámara libre |
|---|---|---|---|---|
| [Cónico](camara-conica/README.md) | Modelos de cámara métrica o cónica (fotogrametría aérea y terrestre clásica) | Estereoscópico | No | No |
| [Satélite RPC](rpc/README.md) | Imágenes de satélite con modelo RPC | Tri-estereoscópico | No | No |
| [PointCloud](point-cloud.md) | Nubes de puntos | Estereoscópico | Sí | Sí |
| [Ortofoto](ortofoto.md) | Medición sobre una ortofotografía | Monoscópico | No | No |
| [Ortofoto estereoscópica](ortofoto-estereoscopica.md) | Medición sobre un par de ortofotografías | Estereoscópico | Sí | Sí |
| [ADS](ads.md) | Cámaras de barrido lineal (pushbroom) ADS de Leica | Tri-estereoscópico | No | No |
| [VM Quasi-Panoramic](vm-quasi-panoramic.md) | Imágenes cuasi-panorámicas | Estereoscópico | No | No |
| [Web Map Service](wms.md) | Capas de un servidor WMS | Monoscópico | No | No |
| [Web Map Tile Service](wmts.md) | Capas teseladas de un servidor WMTS | Monoscópico | No | No |

La columna **Sintético** indica que el modelo no se forma a partir de imágenes reales, sino que se genera de forma sintética (por ejemplo, a partir de una nube de puntos o de una ortofotografía y un modelo digital de superficies).

La columna **Cámara libre** indica que la cámara puede situarse en cualquier punto del espacio y apuntar en cualquier dirección (frente a una cámara fija que únicamente puede cambiar su posición pero no su orientación).

## Nombre del modelo

Cada sensor propone un nombre para el archivo `.d3d` que guarda el modelo. El sensor Cónico, por ejemplo, usa los nombres de las imágenes izquierda y derecha separados por un guion. Al crear el modelo puedes escribir otro nombre en el campo **Nombre del archivo .d3d** del cuadro de diálogo [Crear modelo](../../cuadros-de-dialogo/crear-modelo.md) o de la pestaña [Sensores fotogramétricos](../../cuadros-de-dialogo/nuevo-proyecto/sensores-fotogrametricos.md) del cuadro de diálogo Nuevo proyecto.

Si Digi3D.AI abre el modelo desde un archivo `.d3d`, el nombre del modelo es el nombre de ese archivo sin la extensión, también cuando has renombrado el archivo. Al cerrar un modelo abierto desde un archivo `.d3d`, Digi3D.AI guarda los datos del modelo en ese archivo. Para un modelo abierto desde un archivo `.d3d`, la propiedad [`model_name`](../../../programacion/python/referencia/digi3d/photogrammetric-view.md#modelo-cargado) de Python devuelve el nombre del archivo `.d3d` sin la extensión.

Digi3D.AI escribe con el nombre del modelo los archivos de orientación siguientes. Para leerlos, busca primero el archivo con el nombre del modelo y, si ese archivo no existe, busca el archivo con el nombre formado por las imágenes:

* `.abs.xml` de los sensores [ADS](ads.md) y [Satélite RPC](rpc/README.md): `<nombre del modelo>.abs.xml`.
* `.rpcba` del [Ajuste en bloque de RPCs](rpc/ajuste-en-bloque-de-rpcs.md): `<nombre del modelo>.rpcba`.
* `.mod` de la orden [AEROTRI](../ordenes/a/aerotri.md) del sensor Cónico: `<nombre del modelo>.mod`.

El sensor Cónico lee y escribe su orientación absoluta (`.abs.xml`) siempre con el nombre formado por las imágenes.
