# Orientación interna de la cámara derecha

Si ya disponemos de la orientación interna de una cámara podemos realizar la orientación interna de la otra cámara de forma totalmente automática.

Es necesario que finalices los pasos de [Orientación interna de la cámara izquierda](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/untitled-11/orientacion-interna/OrientacionInternaDeLaCamaraIzquierda.html) antes de ejecutar los siguientes pasos que realizarán la orientación interna de la cámara derecha:

1. Pulsa el botón **D** de la barra de herramientas de la ventana fotogramétrica. Al pulsarlo se ejecutará la orden [ORI\_INTERNA\_D](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/untitled-11/orientacion-interna/ORI_INTERNA_D.html) que es la encargada de realizar orientaciones internas en la cámara derecha.
2. Nada más ejecutarse la orden, esta se dará cuenta de que la cámara izquierda ya tiene una orientación interna realizada, de modo que se basará en esta orientación para medir de forma automática la orientación de la cámara derecha. Puedes comprobar que en la barra de estado de Digi3D.NET se muestra una barra de progreso junto a la frase **Correlando marca fiducial X.** Esta barra de progreso se mostrará tantas veces como marcas fiduciales tenga la imagen. El resultado es que cuando se muestre el panel **Orientación interna,** los puntos ¡**ya estarán medidos!**, tan solo tendremos que verificar que están bien medidos. El panel de **Orientación interna** pulsará de forma automática el botón **Peor** por nosotros, de modo que nos estará mostrando directamente la peor medida que ha realizado.
3. Si todo está bien, pulsa el botón **Aceptar** para finalizar la orientación interna de la cámara derecha. Si no es así remide el punto que te interese.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Orientacion%20interna%20de%20la%20camara%20derecha.mp4" caption="" %}

