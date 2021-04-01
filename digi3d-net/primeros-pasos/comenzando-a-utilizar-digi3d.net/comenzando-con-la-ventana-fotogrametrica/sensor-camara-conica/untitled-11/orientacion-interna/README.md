# Orientación interna

La orientación interna es la que le permite a Digi3D.NET relacionar las coordenadas fiduciales que aparecen en el certificado de calibración de la cámara con las coordenadas píxel de dichas marcas fiduciales en la imagen.

Ya no es habitual el tener que realizar orientaciones internas, pues la inmensa mayoría de imágenes que vas a utilizar son digitales y Digi3D.NET calcula de forma automática las orientaciones internas si la cámara es digital, pero las imágenes del ejemplo **Bronchales** son analógicas, de modo que Digi3D.NET requiere que realicemos una orientación interna pues no sabe cómo se ubicó el negativo en el escáner a la hora de escanear las imágenes.

Podemos saber rápidamente si el modelo que tenemos cargado tiene realizada o no la orientación interna fijándonos en la barra de herramientas de la ventana fotogramétrica. Si los botones **I** y **D** están pulsados, significa que las orientaciones Interna **I**zquierda e interna **D**erecha están realizadas y cargadas. Si los botones aparecen sin pulsar, no estarán realizadas dichas orientaciones.



