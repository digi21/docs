# PhotoScan
<!-- id: photoscan -->

El sensor Cónico puede obtener las calibraciones de cámara y las orientaciones de los modelos fotogramétricos a partir de archivos de **PhotoScan**.

## Sistema de referencia de coordenadas

El archivo XML de cámaras de PhotoScan indica el sistema de referencia de coordenadas en el nodo `<reference>` del bloque (*chunk*). Si ese nodo no existe, indica un sistema local (**Local Coordinates** en PhotoScan) o indica un sistema que Digi3D.AI no reconoce, Digi3D.AI lee el sistema del archivo `.prj` con el mismo nombre que el XML (`orientaciones.prj` para `orientaciones.xml`). Si el `.prj` no existe, Digi3D.AI muestra el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md).

Si el nodo `<reference>` indica un sistema que Digi3D.AI no reconoce, el bloque está georreferenciado: Digi3D.AI transforma las coordenadas del bloque al sistema del `.prj` o al seleccionado en el cuadro, igual que con un sistema reconocido.

Sin nodo `<reference>` o con un sistema local, las coordenadas del modelo son las que resultan de aplicar la transformación del bloque (nodo `<transform>`) a las coordenadas internas de PhotoScan, sin transformación entre sistemas de referencia. El sistema seleccionado solo indica en qué sistema están esas coordenadas, así que debe ser el sistema de las coordenadas de referencia (puntos de apoyo o posiciones de las cámaras) del proyecto de PhotoScan.
