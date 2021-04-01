# Orientación interna de la cámara izquierda

Comenzaremos realizando la orientación interna de la imagen izquieda y continuaremos con el de la imagen derecha. El de la imagen derecha se realizará de forma automática pues Digi3D.NET se basará en la orientación de la cámara izquierda para localizar las marcas fiduciales en la cámara derecha.

1. Asegúrate de que no tienes abierto ningún modelo fotogramétrico ni ninguna ventana de dibujo. Si es así, ciérralas.
2. Abre el menú **Archivo** y selecciona la opción **Nuevo/Abrir modelo fotogramétrico o archivo de dibujo**.
3. Se muestra el cuadro de diálogo **Nuevo Proyecto**.
4. Selecciona la pestaña **Sensores Fotogramétricos**.
5. En el campo **Directorio de trabajo** selecciona la ruta **%EjemplosDigi3D%\Bronchales**.
6. En el campo **Tipo de sensor** selecciona **Cónico \(estereoscópico\)**. Comprobarás que la sección titulada **Propiedades del sensor** varía para solicitar los archivos requeridos para cargar un modelo estereoscópico de cámara cónica.      
7. El campo **Archivo de aerotriangulación** déjalo vacío, pues no disponemos de ningún archivo de aerotriangulación. Este es un campo opcional que rellenaremos únicamente si disponemos de un archivo de aerotriangulación.
8. En el campo **Imagen izquierda** indica la ruta al archivo %EjemplosDigi3D%\Bronchales\107.tif
9. En el campo **Imagen derecha** indica la ruta al archivo %EjemplosDigi3D%\Bronchales\108.tif
10. En el campo **Cámara izquierda** indica la ruta al archivo %EjemplosDigi3D%\Bronchales\RMK15.cam
11. En el campo **Cámara derecha** indica la ruta al archivo %EjemplosDigi3D%\Bronchales\RMK15.cam
12. Pulsa el botón **Aceptar**. Se abrirá la ventana fotogramétrica mostrando el modelo _107-108_. Si has eliminado correctamente los archivos tal y como se explica en [Orientando modelos fotogramétricos de sensor de cámara cónica](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/untitled-11/orientacion-interna/OrientandoModelosFotogrametricosDeSensorDeCamaraConica.html) no debería de estar pulsado ninguno de los botones de la barra de herramientas de la ventana fotogramétrica.
13. **Pulsa** el botón **I**. Con esto ejecutamos la orden [ORI\_INTERNA\_I](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/untitled-11/orientacion-interna/ORI_INTERNA_I.html). Aparecerá el panel acoplable **Orientación interna**.
14. En la parte inferior del panel **Orientación interna** el programa nos invita a digitalizar el punto número 1. Haz _clic_ en la ventana fotogramétrica para capturar el ratón y localiza la marca fiducial con el número **1,** centra el cursor en el centro de la marca fiducial y **pulsa cualquier** botón del ratón. Recuerda \([Cambiando la velocidad de movimiento en la ventana fotogramétrica](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/untitled-11/orientacion-interna/CambiandoLaVelocidadDeMovimientoEnLaVentanaFotogram-trica.html)\) que puedes cambiar la velocidad de la ventana para tener más precisión y que puedes \([Cambiando el tipo de índice en la ventana fotogramétrica](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/untitled-11/orientacion-interna/CambiandoElTipoDeIndiceEnLaVentanaFotogrametrica.html)\) cambiar el tipo de índice para medir mejor la marca fiducial. ¡Acabas de medir tu primera marca fiducial!
15. El panel de **Orientación interna** solicitará ahora que digitalices la segunda marca fiducial. Localízala y y digitalízala. Continúa así con las ocho marcas fiduciales de la imagen.
16. Una vez medidas todas las marcas fiduciales, el panel **Orientación interna** mostrará el error medio cuadrático de las medidas que has realizado. El tamaño de píxel del escaneo del proyecto de _Bronchales_ es de 20 micras, de modo que los valores aceptables son entre 0 y 10 micras.
17. Si haces clic en una determinada medida, la ventana fotogramétrica mostrará dónde realizaste esa medida. Si no te gusta donde la mediste y quieres remedirla, tan solo tienes que pulsar el botón **Remedir**.
18. Puedes pulsar el botón **¿Peor?** para que el panel **Orientación Interna** seleccione automáticamente el punto con un error mayor.
19. Una vez finalizada la orientación, puedes pulsar el botón **Aceptar**. Se cerrará el panel **Orientación Interna** y él botón **I** de la barra de herramientas de la ventana fotogramétrica permanecerá encendido.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Orientacion%20interna%20de%20la%20camara%20izquierda.mp4" caption="" %}

