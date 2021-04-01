# Preparando los archivos .f para un programa de cálculo

Los programas de cálculo de aerotriangulaciones requieren **un único archivo** con las fotocoordenadas los puntos medidos en cada una de las fotos del proyecto.

Digi3D.NET no ha creado un único archivo con las fotocoordenadas de todos los puntos medidos, sino que ha creado tantos archivos _.f_ como fotos formen parte del proyecto, de modo que tendremos que almacenar en un único archivo la información proporcionada por todos esos archivos _.f_ independientes.

Es necesario que finalices el paso [Aerotriangulando el segundo modelo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/aerotriangulacion-manual/AerotriangulandoElSegundoModelo.html) para poder continuar con este tutorial.

1. Abre una consola de _DOS_ en el directorio **Aerotriangulación**. Para ello existe un truco muy sencillo:
   * Localiza la carpeta _Aerotriangulación_ en un explorador de archivos.
   * **Pulsa** la tecla **Mayúsculas** de tu teclado.
   * Sin soltar la tecla _Mayúsculas_, pulsa con el **botón secundario** del ratón \(botón derecho\) sobre el nombre de la carpeta _Aerotriangulación_. Aparecerá un menú contextual.
   * Selecciona la opción **Abrir ventana de comandos aquí**. Se abrirá una ventana de _DOS_ ya ubicada en ese directorio.
2. Ejecuta el comando: copy \*.f bronchales.f Con esto se creará un archivo llamado _Bronchales.f_ con el contenido de todos los archivos .f que existían en la carpeta Aerotriangulación.
3. Cierra la consola de _DOS_.

El archivo _Bronchales.f_ será el que tienes que utilizar en tu programa de cálculo de aerotriangulaciones junto con el archivo de puntos de apoyo Puntos de apoyo de _Bronchales para aerotriangular.xyz_.

No forma parte del ámbito de este manual explicarte el manejo de tu programa de cálculo de aerotriangulación. Sigue los pasos de la ayuda de tu programa de cálculo para aprender a calcular la aerotriangulación.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Preparando%20los%20archivos%20.f%20para%20un%20programa%20de%20calculo.mp4" caption="" %}

