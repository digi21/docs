# PatB
<!-- id: patb -->

La extensión **PatB** lee las orientaciones exteriores de archivos de orientaciones `.ori` en formato PAT-B.

## Archivo de aerotriangulación

En el campo **Archivo de aerotriangulación**, selecciona el tipo **Orientaciones de PatB (\*.ori)** (`*.ori`). La extensión solo lee archivos con extensión `.ori`.

El archivo no contiene la calibración de la cámara. Indica un archivo de cámara en el modelo o selecciónalo cuando Digi3D.AI lo pida (consulta [Cámara](../README.md#cámara)).

La extensión no proporciona orientación absoluta.

## Formato del archivo

Cada imagen ocupa un bloque de tres líneas:

1. Nombre de la imagen, un valor que Digi3D.AI no lee y las coordenadas X, Y y Z del centro de proyección.
2. Los cinco primeros elementos de la matriz de rotación.
3. Los cuatro elementos restantes de la matriz de rotación.

Digi3D.AI recorre el archivo en bloques de tres líneas desde la primera línea, así que el archivo no puede tener líneas de cabecera ni líneas adicionales entre bloques. Digi3D.AI compara el nombre de la imagen con el nombre del archivo de imagen del modelo sin extensión, sin distinguir mayúsculas de minúsculas.

Ejemplo:

```
107 153.000 445210.123 4485012.456 2345.678
0.999998 -0.001234 0.001111 0.001230 0.999997
-0.002000 -0.001114 0.002001 0.999998
108 153.000 445890.321 4485020.654 2346.012
0.999997 -0.002100 0.001010 0.002098 0.999996
-0.001900 -0.001013 0.001898 0.999998
```

## Sistema de referencia de coordenadas

La extensión lee el sistema del archivo `.prj` con el mismo nombre que el archivo de aerotriangulación (`vuelo.prj` para `vuelo.ori`). Si el `.prj` no existe, Digi3D.AI muestra el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal). La extensión no pregunta por el sistema vertical.

## Mensajes de error

* «Se ha localizado el siguiente error al abrir el archivo *archivo*: *error*»: Digi3D.AI no puede abrir el archivo de aerotriangulación.
* «No se ha localizado la orientación de la imagen: *imagen* en el archivo: *archivo*»: ningún bloque del archivo corresponde a la imagen izquierda o a la imagen derecha del modelo.
* «El bloque de la imagen: *imagen* en el archivo: *archivo* está incompleto: la línea *n* tiene *n* valores y se esperaban *m*»: la primera línea del bloque tiene menos de cinco palabras, la segunda menos de cinco valores, la tercera menos de cuatro, o el archivo termina antes de la tercera línea.
