---
description: 'Cuadro de diálogo Exportar archivos BIN, DXF o DGN'
---

# Exportar archivos BIN, DXF o DGN

La aplicación permite exportar el modelo digital a formato de archivo de dibujo para DIGI, AutoCad o MicroStation. Cuando se exporta a alguno de estos formatos transforma la información en entidades de dibujo, por ello, se perderán las condiciones para poder ser utilizado posteriormente en cálculos con modelos digitales, ya que se tratarán sólo de dibujos.

El programa muestra un cuadro de diálogo con el explorador de Windows y opciones adicionales en la parte posterior. En él se puede indicar el nombre del archivo y de la carpeta y el tipo de información que se desea exportar:

* **Vértices**: Se salvarán los puntos que conforman el modelo digital como entidades puntuales.
* **Triángulos**: Si se exporta a formato DIGI o MicroStation, se salvarán los triángulos como entidades cerradas de cuatro puntos. Si se exporta a formato AutoCad, se salvará los triángulos como entidades 3DFACE.
* **Límite**: Se salvarán como entidades los límites interiores o exteriores.
* **Líneas de ruptura**: Se salvarán como entidades las líneas de ruptura que fueron conservadas en el momento de realizar el modelo digital.

