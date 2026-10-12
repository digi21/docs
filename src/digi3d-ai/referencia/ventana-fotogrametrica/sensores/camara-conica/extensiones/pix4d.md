# Pix4D
<!-- id: pix4d -->

La extensión **Pix4D** lee las orientaciones exteriores y la calibración de la cámara de dos archivos de texto que genera Pix4D:

* `*_calibrated_external_camera_parameters.txt`: orientaciones exteriores de las imágenes.
* `*_pix4d_calibrated_internal_camera_parameters.cam`: calibración de la cámara.

## Archivo de aerotriangulación

En el campo **Archivo de aerotriangulación**, selecciona el tipo **Archivos de calibración externa de Pix4D (\*_calibrated_external_camera_parameters.txt)**. La extensión solo lee archivos cuyo nombre termina en `_calibrated_external_camera_parameters.txt`.

Cada línea del archivo contiene el nombre del archivo de imagen, las coordenadas X, Y y Z del centro de proyección y los giros omega, phi y kappa. Digi3D.AI compara la primera palabra de cada línea con el nombre del archivo de imagen del modelo, con extensión, sin distinguir mayúsculas de minúsculas. Las líneas que no coinciden, como la de cabecera, no se leen.

Los giros están en grados sexagesimales y Digi3D.AI construye la matriz de rotación con el orden omega, phi, kappa. Esta extensión no usa la configuración del importador de centros de proyección y giros.

Ejemplo:

```
imageName X Y Z Omega Phi Kappa
IMG_0107.JPG 445210.123 4485012.456 245.678 0.1234 -0.5678 90.1234
IMG_0108.JPG 445230.321 4485013.654 246.012 0.2345 -0.4567 90.2345
```

La extensión no proporciona orientación absoluta.

## Cámara

El archivo de orientaciones exteriores no contiene la calibración de la cámara. Indica como archivo de cámara del modelo el archivo `*_pix4d_calibrated_internal_camera_parameters.cam` del mismo proyecto de Pix4D, o selecciónalo cuando Digi3D.AI lo pida (consulta [Cámara](../README.md#cámara)). En el cuadro de selección de cámara aparece como **Archivos de cámara Pix4D**.

Digi3D.AI lee del archivo de cámara:

* La primera línea, que debe empezar por `Pix4D camera calibration file`.
* La línea que empieza por `#Focal`, con el tamaño del sensor en milímetros escrito como *ancho*`x`*alto*`mm` (por ejemplo, `#Focal Length mm assuming a sensor width of 12.83x8.55mm`). Digi3D.AI calcula el tamaño del píxel dividiendo el ancho y el alto del sensor entre el ancho y el alto de la imagen en píxeles.
* Las líneas que empiezan por `F` (focal en milímetros), `Px` y `Py` (punto principal), `K1`, `K2` y `K3` (distorsión radial) y `T1` y `T2` (distorsión tangencial), con el valor a continuación. Digi3D.AI no distingue mayúsculas de minúsculas en estos nombres.

Ejemplo:

```
Pix4D camera calibration file 0
#Focal Length mm assuming a sensor width of 12.83x8.55mm
F 10.5
Px 6.41
Py 4.27
K1 -0.003
K2 0.01
K3 -0.008
T1 0.0001
T2 -0.0002
```

## Sistema de referencia de coordenadas

La extensión lee el sistema del archivo `.prj` con el mismo nombre que el archivo de orientaciones exteriores (`proyecto_calibrated_external_camera_parameters.prj`). Si el `.prj` no existe, Digi3D.AI muestra el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal). La extensión no pregunta por el sistema vertical.

## Mensajes de error

* «No se pudo abrir el archivo: *archivo*»: Digi3D.AI no puede abrir el archivo de orientaciones exteriores, o ninguna línea del archivo corresponde a la imagen izquierda o a la imagen derecha del modelo.
* «La primera línea del archivo no es "Pix4D camera calibration file"»: el archivo de cámara no es de Pix4D.
* «No se ha localizado la línea que comienza por "#Focal Length mm assuming a sensor width of" en el archivo *archivo*» y «La línea que comienza por "#Focal" no tiene el formato esperado (ancho x alto mm) en el archivo *archivo*»: falta el tamaño del sensor o no tiene el formato *ancho*`x`*alto*`mm`.
* «No se ha localizado la línea que indica…»: falta una de las líneas `F`, `Px`, `Py`, `K1`, `K2`, `K3`, `T1` o `T2` del archivo de cámara.
