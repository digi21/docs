# Orientación interna de la cámara izquierda
<!-- id: orientacion-interna-camara-izquierda -->

Realiza la orientación interna de la imagen izquierda antes de realizar la de la imagen derecha. La orientación interna de la imagen derecha se realizará de forma automática pues Digi3D.AI se basará en la orientación de la cámara izquierda para localizar las marcas fiduciales en la cámara derecha.

1. Asegúrate de que no tienes abierto ningún modelo fotogramétrico ni ninguna ventana de dibujo. Si tienes algún modelo o alguna ventana de dibujo abiertos, cierra los modelos y las ventanas de dibujo.
2. Abre el menú **Archivo** y selecciona la opción **Nuevo/Abrir modelo fotogramétrico o archivo de dibujo**.
3. Comprueba que se muestra el cuadro de diálogo **Nuevo Proyecto**.
4. Selecciona la pestaña **Sensores Fotogramétricos**.
5. Selecciona en el campo **Directorio de trabajo** la ruta **%EjemplosDigi3D%\Bronchales**.
6. Selecciona en el campo **Tipo de sensor** **Cónico \(estereoscópico\)**. Comprobarás que la sección titulada **Propiedades del sensor** varía para solicitar los archivos requeridos para cargar un modelo estereoscópico de cámara cónica.      
7. Deja vacío el campo **Archivo de aerotriangulación**, pues no dispones de ningún archivo de aerotriangulación. Este campo es opcional; rellénalo únicamente si dispones de un archivo de aerotriangulación.
8. Indica en el campo **Imagen izquierda** la ruta al archivo %EjemplosDigi3D%\Bronchales\107.tif.
9. Indica en el campo **Imagen derecha** la ruta al archivo %EjemplosDigi3D%\Bronchales\108.tif.
10. Indica en el campo **Cámara izquierda** la ruta al archivo %EjemplosDigi3D%\Bronchales\RMK15.cam.
11. Indica en el campo **Cámara derecha** la ruta al archivo %EjemplosDigi3D%\Bronchales\RMK15.cam.
12. Pulsa el botón **Aceptar**. Se abrirá la ventana fotogramétrica mostrando el modelo _107-108_. Si has eliminado correctamente los archivos tal y como se explica en [Orientando modelos fotogramétricos de sensor de cámara cónica](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/) en el menú **Ventana fotogramétrica** no debería aparecer marcada ninguna opción de orientación.
13. Selecciona la opción **Ventana fotogramétrica/Orientación interna (izquierda)**. Esta opción ejecuta la orden [ORI\_INTERNA\_I](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-i.md). Aparecerá el panel acoplable **Orientación interna**.
14. Haz _clic_ en la ventana fotogramétrica para capturar el ratón y localiza la marca fiducial con el número **1,** que solicita el programa con el mensaje **Digitaliza la marca fiducial 1.** en la parte inferior del panel **Orientación interna**. Sitúa el cursor en el centro de la marca fiducial y **pulsa cualquier** botón del ratón. Recuerda \(/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/cambiando-la-velocidad-ventana-foto.md)\) que puedes cambiar la velocidad de la ventana para tener más precisión y que puedes \([Cambiando el tipo de índice en la ventana fotogramétrica](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/cambiando-indice-ventana-foto.md) cambiar el tipo de índice para medir mejor la marca fiducial. Has medido tu primera marca fiducial.
15. Localiza y digitaliza la segunda marca fiducial que solicita el panel **Orientación interna**. Continúa así con las ocho marcas fiduciales de la imagen.
16. A partir de la cuarta marca medida, el panel **Orientación interna** muestra bajo la lista la **Desviación estándar** del ajuste, en las unidades de las coordenadas fiduciales del certificado de calibración (milímetros en el ejemplo). El tamaño de píxel del escaneo del proyecto de _Bronchales_ es de 20 micras, de modo que los valores aceptables son entre 0 y 0,010 mm.
17. Haz clic en una medida para que la ventana fotogramétrica muestre dónde realizaste la medida. Si quieres medir de nuevo el punto en otra posición, pulsa el botón **Remedir**.
18. Pulsa el botón **¿Peor?** para que el panel **Orientación Interna** seleccione automáticamente el punto con el mayor error.
19. Una vez finalizada la orientación, pulsa el botón **Aceptar**. Se cerrará el panel **Orientación interna** y la opción **Orientación interna (izquierda)** del menú **Ventana fotogramétrica** aparecerá marcada. Si las marcas medidas están alineadas, Digi3D.AI muestra un mensaje y el panel sigue abierto: remide u omite las marcas que haga falta.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Orientacion%20interna%20de%20la%20camara%20izquierda.mp4" caption="" type="video/mp4"></video>

