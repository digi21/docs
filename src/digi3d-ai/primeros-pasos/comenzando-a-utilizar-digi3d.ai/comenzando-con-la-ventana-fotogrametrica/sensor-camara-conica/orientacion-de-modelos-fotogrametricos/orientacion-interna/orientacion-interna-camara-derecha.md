# Orientación interna de la cámara derecha
<!-- id: orientacion-interna-camara-derecha -->

Si ya dispones de la orientación interna de una cámara, puedes realizar la orientación interna de la otra cámara de forma totalmente automática.

Es necesario que finalices los pasos de [Orientación interna de la cámara izquierda](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-interna/orientacion-interna-camara-izquierda.md) antes de ejecutar los siguientes pasos que realizarán la orientación interna de la cámara derecha:

1. Selecciona la opción **Ventana fotogramétrica/Orientación interna (derecha)**. Se ejecutará la orden [ORI\_INTERNA\_D](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-d.md) que es la encargada de realizar orientaciones internas en la cámara derecha.
2. Comprueba que la orden utiliza la orientación interna de la cámara izquierda para medir automáticamente la orientación interna de la cámara derecha. En la barra de estado de Digi3D.AI se muestra la frase **Correlando marca fiducial: N** con la marca que se busca y una barra de progreso que avanza con cada marca. Cuando se muestra el panel **Orientación interna**, las marcas encontradas ya están medidas y solo hay que verificarlas. Si la correlación no encuentra una marca, se detiene y el panel solicita la marca que la correlación no ha encontrado y las siguientes para medirlas a mano. Si la correlación encuentra todas las marcas, Digi3D.AI ejecuta la acción del botón **¿Peor?** del panel y muestra la medida con mayor error.
3. Pulsa, si las medidas de las marcas son correctas, el botón **Aceptar** para finalizar la orientación interna de la cámara derecha. Si alguna medida es incorrecta, remide el punto que te interese.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Orientacion%20interna%20de%20la%20camara%20derecha.mp4" caption="" type="video/mp4"></video>

