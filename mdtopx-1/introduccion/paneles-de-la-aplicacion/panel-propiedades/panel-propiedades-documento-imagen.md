# Panel Propiedades Documento Imagen

[Panel Propiedades](./)

En este panel aparece la información referente a la imagen actual. En él se pueden observar las siguientes características:

* **Filas**: Cantidad de filas de píxeles de la imagen, es decir, el "alto" de la imagen.
* **Columnas**: Cantidad de columnas de píxeles de la imagen, es decir, el "ancho" de la imagen.
* **Prof. Color**: Profundidad de color de la imagen, es decir, cantidad de bytes por cada píxel.
* **Georref**.: Tipo de georreferenciación de la imagen. Para cambiar los valores de georreferenciación de la imagen se puede utilizar la herramienta [Editar Orientación](../../../herramientas-para-imagenes/editar-orientacion-de-imagen.md) de la cinta [Herramientas Imagen ](../../../fichas-de-herramientas/ficha-de-herramientas-imagen/)Los valores que puede tomar son los siguientes:
  * _No_: En caso de no tener orientación. Si es así, en los valores de los límites de la imagen se mostrarán el número de filas y columnas.
  * _Ortogonal_: En caso de tener una orientación ortogonal, mostrándose en los valores de los límites de las imágenes las coordenadas que abarcan.
  * _Cónica_: Si es una orientación cónica. En este caso, a continuación se muestran los parámetros de orientación, en lugar de los límites que abarca la imagen.
  * _Panorámica_: Si es una imagen esférica.
* **Límites**: Las coordenadas máximas y mínimas en las que está encuadrada la imagen.
* **Parámetros de orientación**: Si la imagen posee una orientación cónica, se muestran los parámetros que la definen, que son:
  * _Píxel_: Tamaño del píxel en micras
  * _Focal_: Distancia principal en milímetros.
  * _PP X y PP Y_: Posición del punto principal en milímetros.
  * _Omega, Phi, Kappa_: ángulos de orientación de la imagen.
  * X CP, Y CP y Z CP: Coordenadas del centro de proyección, desde donde se tomó la imagen.
  * _Z Media_: Altitud media del terreno.

