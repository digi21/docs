# Midiendo la orientación relativa manualmente
<!-- id: midiendo-orientacion-relativa-manualmente -->

El proceso de medir la orientación relativa consiste en medir puntos homólogos en ambas imágenes. Mide un punto en la imagen izquierda y, a continuación, el punto homólogo en la imagen derecha. Repite este proceso varias veces para realizar la orientación relativa.

Los puntos donde se mide la orientación relativa se eligen siguiendo el esquema de _Von Grouber_ que Digi3D.AI es capaz de calcular de forma automática, así que será Digi3D.AI quien se encargue de indicarte la zona donde debes medir los puntos.

Si los algoritmos de correlación de Digi3D.AI localizan correctamente los puntos homólogos, únicamente tienes que aceptar las medidas automáticas.

Es necesario que finalices los pasos de [Orientación interna](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-interna/) antes de ejecutar los siguientes pasos para realizar la orientación relativa manual:

1. Pulsa el botón **R** de la barra de herramientas de la ventana fotogramétrica.
2. Comprueba que en la barra de mensajes aparece una barra de progreso indicando que se está calculando el recubrimiento de las imágenes.
3. Si todo ha ido bien, deberías ver ambas imágenes en la misma posición.
4. Comprueba que aparece el panel **Orientación relativa**.
5. Digitaliza el punto 1 en la imagen izquierda, como solicita la parte inferior del panel **Orientación relativa**. Digi3D.AI ha ubicado la imagen izquierda en la posición aproximada del punto 1. Puedes elegir el punto que quieras medir dentro de esa zona. Una vez localizado el punto que quieres medir, pulsa cualquier botón del dispositivo de entrada.
6. Digitaliza el punto homólogo en la imagen derecha, como solicita Digi3D.AI. El programa ya ha buscado el punto, por lo que, si la posición es correcta, solo tienes que confirmar la medida pulsando cualquier botón. Si la posición del punto homólogo que ha localizado Digi3D.AI no es correcta, puedes localizar el punto manualmente. Para localizar el punto manualmente, desplaza la ventana derecha hasta que el cursor de la ventana derecha coincida con el cursor de la ventana izquierda. Si quieres liberar la imagen izquierda para cambiar el punto en la cámara izquierda, **pulsa** la tecla **Esc.,** para volver al paso 5. Cuando hayas localizado el punto en la imagen derecha, **pulsa cualquier botón** para aceptar el punto.
7. Repite este proceso las seis veces que te solicita Digi3D.AI.
8. Comprueba los residuos una vez finalizada la medida. Para medir de nuevo un punto, selecciona el punto y pulsa el botón **Remedir punto**.
9. Si observas este panel no tiene un botón titulado **Peor** como el de la orientación interna. Esto es así porque no se puede calcular de forma automática cual es el peor de los puntos si nos fijamos únicamente en sus resíduos, pues en una orientación absoluta un error en la medida de un punto puede provocar que otro completamente distinto dispare sus residuos, de modo que si quieres comprobar el punto que está cometiendo el error, tendrás que revisarlos uno por uno y comprobar que están bien posados estereoscópicamente.
10. Una vez finalizada la medida de los seis puntos, puedes desplazarte por el modelo y comprobar que no tienes paralajes. Si localizas paralaje en alguna zona, puedes añadir un punto mediante el botón **Añadir,** pero si la cámara está bien calibrada no debería ser necesario.
11. Pulsa el botón **Aceptar** cuando la orientación relativa sea satisfactoria. El panel **Orientación relativa.** desaparecerá.
12. Comprueba que el botón **R** de la barra de herramientas de la ventana fotogramétrica se queda pulsado indicando que la orientación relativa está realizada.
13. Modifica la coordenada **Z** mediante el dispositivo de entrada y comprueba que las imágenes se mueven una vez realizada la orientación relativa.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Midiendo%20la%20orientacion%20relativa%20manualmente.mp4" caption="" type="video/mp4"></video>

