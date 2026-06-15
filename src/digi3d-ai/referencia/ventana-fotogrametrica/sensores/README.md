# Sensores

La ventana fotogramétrica puede mostrar modelos obtenidos con distintos sensores.

Tienes que seleccionar el sensor con el que se han obtenido las imágenes o las nubes de puntos. Si el sensor con el que se han obtenido es una cámara Leica ADS100, tendrás que seleccionar el sensor `ADS`.

Cada sensor necesita un conjunto de datos distintos. La pestaña **Proyecto Fotogramétrico** del cuadro de diálogo **Nuevo Proyecto** adapta el interfaz de usuario en función del sensor seleccionado.

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

La columna **Sintético** indica que el modelo no se forma a partir de imágenes reales, sino que se genera de forma sintética (por ejemplo, a partir de una nube de puntos o de una ortofotografía y un modelo digital de superficies).

La columna **Cámara libre** indica que la cámara puede situarse en cualquier punto del espacio y apuntar en cualquier dirección (frente a una cámara fija que únicamente puede cambiar su posición pero no su orientación).
