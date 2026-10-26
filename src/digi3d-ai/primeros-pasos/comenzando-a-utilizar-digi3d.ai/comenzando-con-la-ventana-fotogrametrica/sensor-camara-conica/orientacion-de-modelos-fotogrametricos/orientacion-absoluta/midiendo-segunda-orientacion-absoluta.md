# Midiendo la segunda orientación absoluta
<!-- id: midiendo-segunda-orientacion-absoluta -->

La segunda orientación absoluta es más sencilla que la primera, pues el programa ya sabe la posición de algunos puntos en una de las imágenes.

Una vez indicado el punto que quieres medir, el programa comprueba si el punto seleccionado está ya medido en alguna foto. Si el punto seleccionado ya se midió en una foto, el programa bloqueará esa foto de modo que aunque muevas tu dispositivo de entrada \(ratón, topomouse, manivelas\) en _X,Y_ las imágenes no se moverán. Solo podrás mover la imagen en la que no se haya medido el punto, modificando la coordenada _Z,_ de modo que el punto seleccionado no se mida en la misma foto en otra posición.

Es necesario que finalices los pasos de [Archivos De Orientacion Absoluta](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-absoluta/archivos-orientacion-absoluta.md) antes de ejecutar los siguientes pasos para comprobar los archivos que se han generado:

A continuación tienes la posición \(en la foto 107\) de los puntos que vas a medir en este modelo \(son los que aparecen en color rojo\):

La siguiente tabla muestra los puntos que debes medir con más detalle \(y por orden de medida\). Puedes hacer clic en las fotos para verlas a tamaño real.

| Orden | Número de punto | Coordenadas píxel en la imagen 108 | Captura |
| :--- | :--- | :--- | :--- |
| 1 | 7 | 5080.5, 7565.0 | Punto 7 en la foto 107 |
| 2 | 6 | 4605.1, 5155.6 | Punto 6 en la foto 107 |
| 3 | 5 | 6357.8, 2301.4 | Punto 5 en la foto 107 |
| 4 | 8 | 9986.2, 2338.0 | Punto 8 en la foto 108 |
| 5 | 9 | 10269.1, 5557.6 | Punto 9 en la foto 108 |
| 6 | 10 | 9707.6, 10124.8 | Punto 10 en la foto 108 |

1. Cierra la ventana fotogramétrica que tienes abierta con el modelo _107-108_.
2. Abre el menú **Archivo** y selecciona la opción **Nuevo/Abrir modelo fotogramétrico o archivo de dibujo**.
3. Comprueba que se muestra el cuadro de diálogo **Nuevo Proyecto**.
4. Selecciona la pestaña **Sensores Fotogramétricos**.
5. Selecciona en el campo **Directorio de trabajo** la ruta **%EjemplosDigi3D%\Bronchales**.
6. Selecciona en el campo **Tipo de sensor** **Cónico \(estereoscópico\)**. Comprobarás que la sección titulada **Propiedades del sensor** varía para solicitar los archivos requeridos para cargar un modelo estereoscópico de cámara cónica.      
7. Deja vacío el campo **Archivo de aerotriangulación**, pues no dispones de ningún archivo de aerotriangulación. Este campo es opcional; rellénalo únicamente si dispones de un archivo de aerotriangulación.
8. Indica en el campo **Imagen izquierda** la ruta al archivo %EjemplosDigi3D%\Bronchales\108.tif.
9. Indica en el campo **Imagen derecha** la ruta al archivo %EjemplosDigi3D%\Bronchales\109.tif.
10. Indica en el campo **Cámara izquierda** la ruta al archivo %EjemplosDigi3D%\Bronchales\RMK15.cam.
11. Indica en el campo **Cámara derecha** la ruta al archivo %EjemplosDigi3D%\Bronchales\RMK15.cam.
12. Pulsa el botón **Aceptar**. Se abrirá la ventana fotogramétrica mostrando el modelo _108-109_.
13. Comprueba que el botón **I** de la **Barra de herramientas** de la ventana fotogramétrica está pulsado y los demás botones aparecen sin pulsar. Por ahora solo dispones de la orientación interna de la cámara izquierda. Aún no has realizado la orientación interna de la cámara derecha, ni la orientación relativa.
14. Genera la [orientación interna de la cámara derecha](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-interna/orientacion-interna-camara-derecha.md).
15. Genera la [orientación relativa](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-relativa/midiendo-orientacion-relativa-automaticamente.md) del modelo.
16. Pulsa el botón **Orientación absoluta** para comenzar a medir la orientación absoluta.
17. Selecciona en el [cuadro de diálogo Introduce un punto terreno del archivo de puntos](/digi3d-ai/referencia/cuadros-de-dialogo/introduce-punto-terreno.md) el punto número **7**. Recuerda que el punto número _7_ ya había sido medido en la foto _108_ \(en el modelo 107-108 era la foto derecha y en el modelo 108-109 es la foto izquierda\), de modo que al seleccionar el punto 7 el programa mueve la cámara izquierda a las coordenadas donde se midió el punto 7 en la foto 108 y **bloquea** la cámara izquierda. No puedes mover las imágenes en _X,Y_ con tu dispositivo de entrada. El movimiento en _Z_ del dispositivo de entrada solo desplaza la imagen en la que aún no se ha medido el punto. De esta manera, el punto _7_ se va a medir en la foto _108_ exactamente en el mismo punto en el que se midió en el modelo 107-108. Además puedes comprobar que el programa va a localizar automáticamente la otra imagen por correlación, de manera que si la correlación localiza correctamente el punto 7, solo tendrás que confirmar que el punto se ha medido bien.
18. Digitaliza el punto número **7** pulsando cualquier botón de tu dispositivo de entrada.
19. Selecciona en el _cuadro de diálogo Introduce un punto terreno del archivo de puntos._ el punto número **6**. El programa bloquea la imagen en la que ya se midió el punto, como al medir el punto anterior.
20. Mide el punto número **6** pulsando cualquier botón de tu dispositivo de entrada.
21. Mide los puntos 5, 8, 9 y 10 siguiendo las indicaciones del programa.
22. Confirma la orientación absoluta pulsando el botón **Aceptar**.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Orientacion%20absoluta%20del%20segundo%20modelo.mp4" caption="" type="video/mp4"></video>

