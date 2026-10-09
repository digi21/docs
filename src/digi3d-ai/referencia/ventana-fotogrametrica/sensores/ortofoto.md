# Ortofoto
<!-- id: ortofoto-2 -->

El sensor Ortofoto permite medir sobre una ortofotografía. El modelo tiene una sola imagen y no admite estereoscopía. En la configuración del modelo, la propiedad **Ortofoto** indica la ruta de la imagen. Los formatos son los que admite la ventana fotogramétrica.

## Georreferenciación de la imagen

Al abrir el modelo, el sensor toma la georreferenciación de la propia imagen: las etiquetas GeoTIFF, la cabecera del ECW o el world file que está junto a la imagen: _.tfw_ para TIFF, _.eww_ para ECW, _.j2w_ para JPEG 2000 y _.sdw_ para MrSID.

Si la imagen no tiene georreferenciación, el modelo se abre igualmente en coordenadas de píxel. Para georreferenciarla, ejecuta **Orientación afín**. Si el world file existe pero no se puede leer, Digi3D.AI muestra el error y no abre el modelo.

## Orientación afín

La opción **Orientación afín** del menú de la ventana fotogramétrica abre el panel [Orientación](../../paneles/orientacion.md), en el que se miden al menos tres puntos de apoyo. Al aceptar, el sensor guarda la transformación como world file y su sistema de referencia como archivo _.prj_ en la carpeta del proyecto, con el nombre de la imagen. La opción aparece marcada cuando el modelo tiene una orientación afín. Al aceptar, los vectores de la ventana de dibujo se transforman al sistema de referencia elegido sin volver a abrir el modelo.

Al abrir el modelo, si la carpeta del proyecto tiene ese world file, el sensor aplica la orientación afín sobre la georreferenciación de la imagen. Si el proyecto está en la carpeta de la imagen, ese world file es el de la propia imagen y el sensor lo aplica una sola vez.

Los modelos de ortofoto se pueden abrir sin el módulo de fotogrametría, para orientar la ortofoto.
