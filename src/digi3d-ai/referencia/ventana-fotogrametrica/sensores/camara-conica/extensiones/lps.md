# LPS
<!-- id: lps -->

La extensión **LPS** lee la calibración de las cámaras y las orientaciones exteriores de los archivos de bloque `.blk` de LPS (Leica Photogrammetry Suite).

## Archivo de aerotriangulación

En el campo **Archivo de aerotriangulación**, selecciona el tipo **Archivos de proyecto de LPS** (`*.blk`). La extensión solo lee archivos con extensión `.blk`.

El archivo `.blk` es un archivo binario con estructura HFA. Digi3D.AI comprueba la cabecera `EHFA_HEADER_TAG` y que el diccionario del archivo define las estructuras `Camera_DataV4` o `Camera_DataV3`, `Triangulation_Parameters`, `Camera_InfoV4` o `Camera_Info`, `InitExt_Info` y `ROImg_Info` con la definición que conoce. Si una estructura no existe o tiene otra definición, Digi3D.AI muestra un mensaje que la nombra, por ejemplo «El formato de la estructura "Camera_DataV4" no es compatible con esta implementación».

Digi3D.AI busca cada imagen en las estructuras `Image_data` por el nombre del archivo de imagen, sin carpeta y sin distinguir mayúsculas de minúsculas. Compara el nombre sin extensión, tanto para la orientación exterior como para la cámara.

La extensión no proporciona orientación absoluta.

## Cámara

El archivo contiene la calibración de la cámara. Si el modelo no tiene archivo de cámara, Digi3D.AI la lee del archivo de aerotriangulación (consulta [Cámara](../README.md#cámara)). Para cada imagen lee:

* De la cámara que indica la imagen (`CameraIndex`): la focal, el punto principal y las marcas fiduciales. Las marcas fiduciales se leen por pares x, y; si el archivo tiene un número impar de valores, Digi3D.AI ignora el último.
* De la imagen: la transformación de imagen a placa (`ImageToFilm`) y el tamaño de la imagen en píxeles.

Digi3D.AI no aplica corrección de distorsión a las cámaras de LPS.

## Orientaciones exteriores

Digi3D.AI lee de `FinalExterior` de cada imagen el centro de proyección y los giros omega, phi y kappa en radianes, y construye la matriz de rotación con el orden omega, phi, kappa. Digi3D.AI no lee el tipo de rotación del bloque (`RotationType`).

## Sistema de referencia de coordenadas

La extensión lee el sistema del archivo `.prj` con el mismo nombre que el archivo de aerotriangulación (`bloque.prj` para `bloque.blk`). Si el `.prj` no existe, Digi3D.AI muestra el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal). La extensión no pregunta por el sistema vertical.

## Mensajes de error

* «No se ha podido cargar el archivo: *archivo*. Windows informó de la siguiente cadena de error: *error*»: Digi3D.AI no puede abrir el archivo.
* «Se localizó un error desconocido al crear el modelo para las imágenes: *izquierda* y *derecha* en el archivo *archivo*»: Digi3D.AI no encuentra la orientación exterior de alguna de las dos imágenes o no puede leerla.
* «No se ha localizado la orientación de la imagen: *imagen* en el archivo: *archivo*.»: Digi3D.AI no encuentra la imagen al leer la cámara.
* «El archivo HFA declara una matriz de *n* elementos que no cabe en el archivo; posiblemente esté corrupto: *archivo*»: el número de elementos de una lista del archivo es negativo o mayor que los datos que quedan en el archivo.
