# Inpho
<!-- id: inpho -->

La extensión **Inpho** lee la calibración de las cámaras y las orientaciones exteriores de los archivos de proyecto `.prj` de Trimble Inpho. También abre esos archivos como proyecto en el panel [Proyecto fotogramétrico](../../../../paneles/proyecto-fotogrametrico.md).

## Archivo de aerotriangulación

En el campo **Archivo de aerotriangulación**, selecciona el tipo **Archivos de cámara Inpho** (`*.prj`). La extensión lee los archivos con extensión `.prj` y comprueba que contienen la marca `$PROJECT`. Si no la contienen, Digi3D.AI muestra el mensaje «No se ha localizado la marca $PROJECT en el archivo: *archivo*. Posiblemente el archivo esté corrupto o no sea un archivo de proyecto de Inpho».

Digi3D.AI busca cada imagen del modelo en las secciones `$PHOTO` por el nombre de `$PHOTO_FILE`, sin carpeta ni extensión y sin distinguir mayúsculas de minúsculas.

La extensión no proporciona orientación absoluta.

## Cámara

El archivo contiene la calibración de la cámara. Si el modelo no tiene archivo de cámara, Digi3D.AI la lee del archivo de aerotriangulación (consulta [Cámara](../README.md#cámara)): busca la cámara que indica `$CAMERA_ID` en la sección `$PHOTO` de la imagen y la lee de la sección `$CAMERA` o `$CAMERA_DEFINITION` con ese `$TYPE` o `$ID`.

* **Cámara analógica** (`$KIND` igual a `FilmFrame`): la orientación interna sale de `$INT_ORI` en la sección `$PHOTO` de la imagen.
* **Cámara digital** (cualquier otro `$KIND`): la orientación interna sale de `$CCD_INTERIOR_ORIENTATION`, y el tamaño de la imagen, de `$CCD_COLUMNS` y `$CCD_ROWS`. Si la cámara tiene varias calibraciones (`$CALIBRATION_SET`), Digi3D.AI usa la que indica `$ACTIVE_CALIBRATION`.

En los dos casos, Digi3D.AI lee la focal de `$FOCAL_LENGTH`, el punto principal de `$PRINCIPAL_POINT_PPS` o `$PRINCIPAL_POINT_PPA`, y el modelo de distorsión de `$DISTORTION_TYPE`:

| `$DISTORTION_TYPE` | Datos que lee |
|---|---|
| (sin `$DISTORTION_TYPE`) | Cámara sin distorsión. |
| `ComplexTable` | Rejilla de correcciones de `$DISTORTION_TABLE`. |
| `SimpleRadial` | Tabla de radio y distorsión de `$DISTORTION`. |
| `Polynomial` | Coeficientes de `$RADIAL_COEFFS` (dos líneas de cuatro valores) y `$DECENTRE_COEFFS`. |

Con otro valor, Digi3D.AI muestra el mensaje «Se ha localizado una cámara con el tipo de distorsión: *tipo* no soportado».

## Orientaciones exteriores

En la sección `$PHOTO` de cada imagen, Digi3D.AI lee:

* `$EXT_ORI`: la primera línea después de la marca contiene el centro de proyección en la segunda, tercera y cuarta palabra, y las tres líneas siguientes contienen la matriz de rotación.
* `$TERRAIN_HEIGHT`: altura del terreno.

## Sistema de referencia de coordenadas

La extensión lee el sistema del propio archivo de Inpho:

1. El texto que sigue a `$COORDINATE_SYSTEM`, hasta la siguiente línea que empieza por `$`.
2. Si no hay `$COORDINATE_SYSTEM`, el sistema de `$COORDINATE_SYSTEM_SET` cuyo `$ID` coincide con `$DELIVERABLES_COORD_SYSTEM`.

Si el archivo indica un sistema `LOCAL_CS` o Digi3D.AI no puede leer el sistema, el modelo usa un sistema local. La extensión no lee archivos `.prj` de sistema de referencia ni muestra el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal).

Si el sistema no tiene componente vertical y la opción [Solicitar sistema vertical para sensores](../../../../cuadros-de-dialogo/configuracion/sistema-de-referencia-de-coordenadas/solicitar-sistema-vertical-para-sensores.md) está en **Sí**, aparece el cuadro [Sistema de referencia de coordenadas vertical desconocido](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-vertical). La respuesta no se guarda y el cuadro aparece cada vez que se carga el modelo.

## Proyecto fotogramétrico

Al abrir el archivo en el panel [Proyecto fotogramétrico](../../../../paneles/proyecto-fotogrametrico.md), Digi3D.AI forma los modelos de cada pasada de la sección `$STRIPS` con fotos consecutivas. En los proyectos con estaciones (`$STATION`) de varias cámaras, cada cámara es un punto de vista del panel.

Diferencias con el archivo de aerotriangulación:

* El sistema de referencia solo se lee de `$COORDINATE_SYSTEM`. Si Digi3D.AI no puede usarlo, carga el proyecto con un sistema local y lo indica en la ventana [Resultados](../../../../paneles/resultados.md) con el mensaje «No se ha podido usar el sistema de referencia de coordenadas del archivo Inpho *archivo*…».
* Si no se forma ningún modelo, Digi3D.AI muestra el mensaje «No se ha localizado ningún modelo».

La categoría [Inpho](../../../../cuadros-de-dialogo/configuracion/inpho/README.md) de la configuración controla cómo se forman los modelos del proyecto:

* [Solicitar salto de fotos](../../../../cuadros-de-dialogo/configuracion/inpho/solicitar-salto-de-fotos.md): muestra el cuadro **¿Saltar fotos?** al abrir el proyecto.
* [Omitir modelos para los cuales no hay foto](../../../../cuadros-de-dialogo/configuracion/inpho/omitir-modelos-para-los-cuales-no-hay-foto.md): no muestra los modelos con alguna foto que no existe.
