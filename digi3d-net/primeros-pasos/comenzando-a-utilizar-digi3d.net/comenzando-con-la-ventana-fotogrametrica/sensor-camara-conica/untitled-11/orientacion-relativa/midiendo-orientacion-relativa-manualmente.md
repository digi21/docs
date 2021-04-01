# Midiendo la orientación relativa manualmente

El proceso de medir la orientación relativa consiste en medir puntos homólogos en ambas imágenes. Mediremos un punto en la imagen izquierda y a continuación el punto homólogo en la imagen derecha. Repetiremos este proceso varias veces y al final tendremos realizada la orientación relativa.

Los puntos donde se mide la orientación relativa no son al azar, siguen el esquema de _Von Grouber_ que Digi3D.NET es capaz de calcular de forma automática, así que será Digi3D.NET quien se encargue de indicarnos la zona en la cual tendremos que medir puntos.

Como Digi3D.NET dispone de algoritmos de [correlación](midiendo-orientacion-relativa-manualmente.md) es posible que los puntos homólogos se localicen automáticamente y que tan solo tengamos que aceptar las medidas que va realizando automáticamente Digi3D.NET por nosotros.

Es necesario que finalices los pasos de [Orientación interna](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/untitled-11/orientacion-relativa/OrientacionInterna.html) antes de ejecutar los siguientes pasos para realizar la orientación relativa manual:

1. Pulsa el botón **R** de la barra de herramientas de la ventana fotogramétrica.
2. Comprueba que en la barra de mensajes aparece una barra de progreso indicando que se está calculando el recubrimiento de las imágenes.
3. Si todo ha ido bien, deberías ver ambas imágenes en la misma posición.
4. Aparecerá el panel **Orientación relativa**.
5. En la parte inferior del panel **Orientación relativa** se muestra un texto indicándote que digitalices el punto 1 en la imagen izquierda. Digi3D.NET ha ubicado la imagen izquierda en una posición, pero nadie te obliga a medir el punto exáctamente en dicha posición. Puedes desplazar la imagen izquierda al punto que te interese, pero no te desplaces demasiado, pues debería estar por la misma zona. Una vez localizado el punto que quieres corregir, pulsa cualquier botón del dispositivo de entrada.
6. Comprobarás que Digi3D.NET te solicita que digitalices el punto homólogo en la imagen derecha, pero él ya se ha encargado de buscarlo previamente, de modo que si no se ha equivocado tan solo tienes que confirmar su medida pulsando cualquier botón. Si no te gusta donde ha localizado el punto homólogo Digi3D.NET, eres libre de localizarlo tú manualmente. Para ello desplaza la ventana derecha hasta que el cursor de esta coincida con el cursor de la ventana izquierda. Si quieres liberar la imagen izquierda para cambiar el punto en la cámara izquierda, **pulsa** la tecla **Esc.,** De esta manera estarás en el punto 5. Cuando lo tengas localizado el punto en la imagen derecha, **pulsa cualquier botón** para aceptar el punto.
7. Repite este proceso las seis veces que te solicita Digi3D.NET.
8. Una vez finalizado, se mostrarán los resíduos. Si no te gusta algún punto, puedes remedirlo seleccionándolo y pulsando el botón **Remedir punto**.
9. Si observas este panel no tiene un botón titulado **Peor** como el de la orientación interna. Esto es así porque no se puede calcular de forma automática cual es el peor de los puntos si nos fijamos únicamente en sus resíduos, pues en una orientación absoluta un error en la medida de un punto puede provocar que otro completamente distinto dispare sus residuos, de modo que si quieres comprobar el punto que está cometiendo el error, tendrás que revisarlos uno por uno y comprobar que están bien posados estereoscópicamente.
10. Una vez finalizada la medida de los seis puntos, puedes desplazarte por el modelo y comprobar que no tienes paralajes. Si localizas paralaje en alguna zona, puedes añadir un punto mediante el botón **Añadir,** pero si la cámara está bien calibrada no debería ser necesario.
11. Cuando estés contento con tu orientación relativa, pulsa el botón **Aceptar** y desaparecerá el panel **Orientación relativa.**
12. Comprueba que el botón **R** de la barra de herramientas de la ventana fotogramétrica se queda pulsado indicando que la orientación relativa está realizada.
13. A partir de este momento si modificas la coordenada **Z** mediante el dispositivo de entrada, se deben mover las imágenes.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Midiendo%20la%20orientacion%20relativa%20manualmente.mp4" caption="" %}

