# Orientación interna de la cámara derecha
<!-- id: orientacion-interna-camara-derecha -->

Si ya disponemos de la orientación interna de una cámara podemos realizar la orientación interna de la otra cámara de forma totalmente automática.

Es necesario que finalices los pasos de [Orientación interna de la cámara izquierda](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-interna/orientacion-interna-camara-izquierda.md) antes de ejecutar los siguientes pasos que realizarán la orientación interna de la cámara derecha:

1. Selecciona la opción **Ventana fotogramétrica/Orientaciones/Orientación interna (derecha)**. Se ejecutará la orden [ORI\_INTERNA\_D](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-d.md) que es la encargada de realizar orientaciones internas en la cámara derecha.
2. Nada más ejecutarse la orden, esta se dará cuenta de que la cámara izquierda ya tiene una orientación interna realizada, de modo que se basará en esta orientación para medir de forma automática la orientación de la cámara derecha. En la barra de estado de Digi3D.AI se muestra la frase **Correlando marca fiducial: N** con la marca que se busca y una barra de progreso que avanza con cada marca. Cuando se muestra el panel **Orientación interna**, las marcas encontradas ya están medidas y solo hay que verificarlas. Si la correlación no encuentra una marca, se detiene y el panel pide esa marca y las siguientes para medirlas a mano. Si encuentra todas, el panel pulsa el botón **¿Peor?** y muestra la peor medida.
3. Si todo está bien, pulsa el botón **Aceptar** para finalizar la orientación interna de la cámara derecha. Si no es así remide el punto que te interese.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Orientacion%20interna%20de%20la%20camara%20derecha.mp4" caption="" type="video/mp4"></video>

