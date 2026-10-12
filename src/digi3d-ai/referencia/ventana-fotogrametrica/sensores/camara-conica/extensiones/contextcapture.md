# ContextCapture
<!-- id: contextcapture -->

La extensión **ContextCapture** lee la calibración de las cámaras y las orientaciones exteriores de los archivos XML en formato *BlocksExchange* que exporta ContextCapture.

## Archivo de aerotriangulación

En el campo **Archivo de aerotriangulación**, selecciona el tipo **Archivos de proyecto de ContextCapture** (`*.xml`). La extensión solo lee archivos con extensión `.xml` que contienen un nodo `BlocksExchange`. Si el XML no está bien formado, Digi3D.AI muestra el mensaje «Error en la línea: *n*, columna: *n*» con el motivo.

La extensión no proporciona orientación absoluta.

## Imágenes

Digi3D.AI busca cada imagen del modelo en un nodo `Photo` cuyo nodo `ImagePath` contiene exactamente la ruta de la imagen del modelo. La comparación es de texto: la ruta del modelo y la del archivo deben coincidir carácter a carácter, incluidas las mayúsculas y el separador de carpetas. Si no hay ningún nodo con esa ruta, Digi3D.AI muestra el mensaje «No se han localizado los parámetros para la imagen: *imagen*».

## Cámara

El archivo contiene la calibración de la cámara. Si el modelo no tiene archivo de cámara, Digi3D.AI la lee del grupo de fotografías (nodo padre de `Photo`) de cada imagen (consulta [Cámara](../README.md#cámara)):

* Focal: `FocalLength` en milímetros, convertida a píxeles con `SensorSize` y el lado mayor de `ImageDimensions` (`Width`, `Height`); si no hay `FocalLength`, `FocalLengthPixels`.
* Punto principal: `PrincipalPoint/x` y `PrincipalPoint/y`.
* Distorsión: `Distortion/K1`, `K2` y `K3` (radial) y `Distortion/P1` y `P2` (tangencial).

## Orientaciones exteriores

Para cada imagen, Digi3D.AI lee el centro de proyección de `Pose/Center` (`x`, `y`, `z`) y los giros de `Pose/Rotation`:

* Si existe `Pose/Rotation/Omega`, lee `Omega`, `Phi` y `Kappa` en grados sexagesimales y construye la matriz de rotación con el orden omega, phi, kappa.
* Si no, lee la matriz de rotación de `M_00` a `M_22`.

## Sistema de referencia de coordenadas

La extensión usa el sistema de `SpatialReferenceSystems/SRS/Definition`, el primer nodo `SRS` del archivo. No lee archivos `.prj` ni muestra los cuadros de [Modelo sin sistema de referencia de coordenadas](../sistema-de-referencia-del-modelo.md), tampoco si el sistema no tiene componente vertical.
