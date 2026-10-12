# AeroOffice
<!-- id: aerooffice -->

La extensión **AeroOffice** lee las orientaciones exteriores de los archivos de exportación `.exp` de AEROoffice.

## Archivo de aerotriangulación

En el campo **Archivo de aerotriangulación**, selecciona el tipo **Archivos de aerotriangulación de AeroOffice** (`*.exp`). La extensión solo lee archivos con extensión `.exp`.

El archivo no contiene la calibración de la cámara. Indica un archivo de cámara en el modelo o selecciónalo cuando Digi3D.AI lo pida (consulta [Cámara](../README.md#cámara)).

La extensión no proporciona orientación absoluta.

## Formato del archivo

Digi3D.AI comprueba y lee el archivo en este orden:

1. La segunda palabra de la segunda línea debe ser `AEROoffice`.
2. Digi3D.AI busca la primera línea cuya segunda palabra es `Format:`.
3. La línea siguiente contiene los nombres de las columnas. La primera palabra de esa línea no cuenta como columna: la segunda palabra es el nombre de la primera columna de los datos, la tercera el de la segunda, y así sucesivamente. Digi3D.AI busca estas columnas:

   | Columna | Contenido |
   |---|---|
   | `ID` | Nombre de la imagen sin extensión. |
   | `Easting` | Coordenada X del centro de proyección. |
   | `Northing` | Coordenada Y del centro de proyección. |
   | `Height` o `HeightORTO` | Coordenada Z del centro de proyección. |
   | `Omega`, `Phi`, `Kappa` | Giros en grados sexagesimales. Digi3D.AI construye la matriz de rotación con el orden omega, phi, kappa. |

4. Las líneas siguientes contienen los datos, una imagen por línea. Digi3D.AI no lee las líneas que tienen menos columnas de las necesarias.

Digi3D.AI distingue mayúsculas de minúsculas en `AEROoffice`, `Format:`, los nombres de las columnas y la comparación de la columna `ID` con el nombre del archivo de imagen del modelo sin extensión.

## Sistema de referencia de coordenadas

La extensión lee el sistema del archivo `.prj` con el mismo nombre que el archivo de aerotriangulación (`vuelo.prj` para `vuelo.exp`). Si el `.prj` no existe, Digi3D.AI muestra el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal). La extensión no pregunta por el sistema vertical.

## Mensajes de error

* «Se ha localizado el siguiente error al abrir el archivo *archivo*: *error*»: Digi3D.AI no puede abrir el archivo de aerotriangulación.
* «Error al analizar el archivo: *archivo*. No se ha localizado la palabra: *palabra*»: falta `AEROoffice`, `Format:` o una de las columnas.
* «No se ha localizado la orientación de la imagen: *imagen* en el archivo: *archivo*»: ninguna línea de datos corresponde a la imagen izquierda o a la imagen derecha del modelo.
