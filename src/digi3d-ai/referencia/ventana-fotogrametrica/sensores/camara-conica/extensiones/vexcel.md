# Vexcel
<!-- id: vexcel -->

La extensión **Vexcel** lee la calibración de la cámara de la cabecera de las imágenes TIFF (Tag Image File Format, formato de archivo de imagen con etiquetas) de las cámaras UltraCam de Vexcel. La extensión Vexcel proporciona únicamente la cámara; otra extensión proporciona las orientaciones exteriores, por ejemplo [IMU](imu.md).

## Qué lee

La extensión no usa el archivo de cámara del modelo: lee la propia imagen. Funciona con imágenes con extensión `.tif`, `.tiff`, `.smti` o `.pyr` cuya descripción (etiqueta TIFF *ImageDescription*) empieza por `Vexcel` o `UltraCam`. Con otras imágenes, y con las que Digi3D.AI no puede abrir como TIFF, Digi3D.AI prueba con las demás extensiones (consulta [Cámara](../README.md#cámara)).

De la descripción, Digi3D.AI lee el valor que sigue a cada una de estas claves:

| Clave | Contenido |
|---|---|
| `PRINCIPLE_DISTANCE:` o `PRINCIPAL_DISTANCE:` | Focal. |
| `PRINCIPLE_POINT_X:` o `PRINCIPAL_POINT_X:` | Coordenada X del punto principal. |
| `PRINCIPLE_POINT_Y:` o `PRINCIPAL_POINT_Y:` | Coordenada Y del punto principal. |
| `PIXEL_SIZE_WIDTH:` | Ancho del píxel en micras. |
| `PIXEL_SIZE_HEIGTH:` o `PIXEL_SIZE_HEIGHT:` | Alto del píxel en micras. |

La cámara no tiene corrección de distorsión.

## Mensajes de error

* «Error al intentar obtener los parámetros de la cámara desde el archivo .tiff: *imagen* No se localizó *clave*»: la descripción de la imagen no contiene una de las claves de la tabla.
