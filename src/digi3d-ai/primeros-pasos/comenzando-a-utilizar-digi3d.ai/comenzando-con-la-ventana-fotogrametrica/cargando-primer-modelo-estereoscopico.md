# Cargando el primer par estereoscópico
<!-- id: cargando-primer-modelo-estereoscopico -->

Una de las funcionalidades principales de Digi3D.AI consiste en cargar y visualizar modelos fotogramétricos de distintos sensores.  
Sigue estos pasos para cargar un par estereoscópico e interactuar con la ventana fotogramétrica:

1. Abre el menú **Archivo** y selecciona la opción **Nuevo/Abrir modelo fotogramétrico o archivo de dibujo**.
2. Comprueba que se muestra el cuadro de diálogo **Nuevo Proyecto**.
3. Selecciona la pestaña **Sensores Fotogramétricos**.
4. Selecciona en el campo **Directorio de trabajo** la ruta %EjemplosDigi3D%\Pumarín.
5. Selecciona en el campo **Tipo de sensor** **Cónico \(estereoscópico\)**. Comprobarás que la sección titulada **Propiedades del sensor** varía para solicitar los archivos requeridos para cargar un modelo estereoscópico de cámara cónica.      
6. Indica en el campo **Archivo de aerotriangulación** la ruta al archivo %EjemplosDigi3D%\Pumarín\Pumarín.eo. Este es un archivo de aerotriangulación en [formato PatB](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/camara-conica/extensiones/patb.md).
7. Indica en el campo **Imagen izquierda** la ruta al archivo %EjemplosDigi3D%\Pumarín\126.tif.
8. Indica en el campo **Imagen derecha** la ruta al archivo %EjemplosDigi3D%\Pumarín\127.tif.
9. Indica en el campo **Cámara izquierda** la ruta al archivo %EjemplosDigi3D%\Pumarín\120mm.cam.
10. Indica en el campo **Cámara derecha** la ruta al archivo %EjemplosDigi3D%\Pumarín\120mm.cam.
11. Pulsa el botón **Aceptar**.

Se abrirá una ventana con título 126-127.d3d con las imágenes indicadas. La imagen derecha aparecerá negra porque la ventana fotogramétrica aún no está situada en unas coordenadas correctas.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Cargando%20el%20primer%20modelo%20fotogrametrico.mp4" caption="" type="video/mp4"></video>

