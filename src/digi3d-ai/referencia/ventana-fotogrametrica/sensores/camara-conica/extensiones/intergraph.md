# Intergraph
<!-- id: intergraph -->

La extensión **Intergraph** lee la calibración de las cámaras y las orientaciones exteriores de los proyectos de Intergraph, formados por los archivos de texto `project`, `photo`, `camera` y `model` de una misma carpeta. También abre esos proyectos en el panel [Proyecto fotogramétrico](../../../../paneles/proyecto-fotogrametrico.md).

## Archivo de aerotriangulación

En el campo **Archivo de aerotriangulación**, selecciona el archivo `project` del proyecto con el tipo **Archivos de proyecto de Intergraph (project)** (`*project*`). La extensión solo lee el archivo cuyo nombre es exactamente `project`, sin extensión. Digi3D.AI no lee el contenido de `project`: lee los archivos `photo`, `camera` y `model` de su misma carpeta.

La extensión no proporciona orientación absoluta.

## Formato de los archivos

Los tres archivos se dividen en bloques que empiezan por una línea `begin` y terminan en una línea `end`. Dentro de cada bloque, cada línea empieza por un nombre de campo terminado en `:` seguido de sus valores.

**`photo`**: un bloque por imagen con la línea `begin photo_parameters` *número* `strip_id` *pasada*. Digi3D.AI lee estos campos:

| Campo | Contenido |
|---|---|
| `camera_name:` | Nombre de la cámara en el archivo `camera`. |
| `image_id:` | Ruta de la imagen. |
| `image_size:` | Ancho y alto de la imagen en píxeles. |
| `EO_parameters:` | X, Y y Z del centro de proyección y giros omega, phi y kappa. |
| `IO_parameters:` | Orientación interna de las cámaras analógicas. |

**`camera`**: un bloque por cámara con la línea `begin camera_parameters` *nombre*. Digi3D.AI lee `focal_length:`, `ppac:` (punto principal) y `film_format:` (ancho y alto del formato).

**`model`**: un bloque por modelo con la línea `begin model` *pasada*`~`*foto*`+`*pasada*`~`*foto*. Digi3D.AI lee `AO_parametersL:` y `AO_parametersR:` (centro de proyección y giros de la imagen izquierda y de la derecha) y, de la primera línea `AO_obs:`, un punto del terreno.

Ejemplo de bloque del archivo `photo`:

```
begin photo_parameters 107 strip_id 1
camera_name: RMK
image_id: D:\vuelo\107.tif
image_size: 11500 11500
EO_parameters: 445210.123 4485012.456 2345.678 0.1234 -0.5678 90.1234
end
```

## Imágenes y modelos

Digi3D.AI busca cada imagen del modelo en el archivo `photo` por el nombre del archivo de `image_id:`, con extensión y sin distinguir mayúsculas de minúsculas. Con la pasada y el número de las dos imágenes forma el nombre del modelo (`1~107+1~108`), que debe existir en el archivo `model`. Si no existe, Digi3D.AI muestra el mensaje «No se ha localizado el modelo *modelo*».

## Orientaciones exteriores

Si las dos imágenes tienen `EO_parameters:` en el archivo `photo`, Digi3D.AI usa los `EO_parameters:` de las dos imágenes. Si no, usa `AO_parametersL:` y `AO_parametersR:` del modelo. Los giros están en grados sexagesimales y Digi3D.AI construye la matriz de rotación con el orden omega, phi, kappa.

## Cámara

Si el modelo no tiene archivo de cámara, Digi3D.AI lee la cámara del proyecto (consulta [Cámara](../README.md#cámara)): la de `camera_name:` de la imagen. Calcula el tamaño del píxel dividiendo `film_format:` entre `image_size:`. Las cámaras de Intergraph no tienen corrección de distorsión.

Al cargar un modelo con el archivo de aerotriangulación, Digi3D.AI crea siempre una cámara digital. Al abrir el proyecto en el panel Proyecto fotogramétrico, si la imagen tiene `IO_parameters:`, Digi3D.AI crea una cámara analógica con esa orientación interna.

## Sistema de referencia de coordenadas

La extensión lee el sistema del archivo `project.prj` de la carpeta del proyecto. Si no existe, Digi3D.AI muestra el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal). La extensión no pregunta por el sistema vertical.

## Proyecto fotogramétrico

Al abrir el archivo `project` en el panel [Proyecto fotogramétrico](../../../../paneles/proyecto-fotogrametrico.md), Digi3D.AI crea un modelo por cada bloque del archivo `model` y agrupa los modelos por pasada. Si una imagen no existe, Digi3D.AI no crea los modelos que la usan y escribe en la ventana [Resultados](../../../../paneles/resultados.md) el mensaje «No se ha localizado la imagen: *imagen*».

## Mensajes de error

* «No se ha localizado el archivo "photo" en el directorio *carpeta*», y los equivalentes para `camera` y `model`: falta uno de los archivos del proyecto.
* «No se han localizado los datos de la foto *imagen*»: el archivo `photo` no contiene la imagen.
* «No se ha encontrado la cámara «*cámara*» en el archivo de cámaras del proyecto.»: el archivo `camera` no contiene la cámara de `camera_name:`.
