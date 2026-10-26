# Midiendo automáticamente orientaciones internas y relativas
<!-- id: midiendo-automaticamente-internas-relativas -->

Puedes configurar Digi3D.AI para que realice las siguientes comprobaciones cada vez que cargas un archivo de _proyecto fotogramétrico_:

1. Comprobación de que las imágenes son compatibles con Digi3D.AI.
2. Comprobación de que las imágenes tienen una orientación interna asociada.
3. Comprobación de que los modelos tienen una orientación relativa.

La comprobación de que las imágenes del proyecto son compatibles con Digi3D.AI requiere que Digi3D.AI abra cada imagen; la duración depende del número de imágenes y del dispositivo donde estén almacenadas. Digi3D.AI no realiza esta comprobación por defecto.

La comprobación de que las imágenes tienen una orientación interna asociada puede requerir que Digi3D.AI abra cada imagen para consultar la información de la cámara en los metadatos. Digi3D.AI no realiza esta comprobación por defecto.

Digi3D.AI tampoco comprueba por defecto si los modelos tienen orientación relativa, para mantener la misma configuración que en las otras dos comprobaciones.

Sigue estos pasos para configurar Digi3D.AI de modo que realice las tres comprobaciones y genere automáticamente las orientaciones internas y relativas del proyecto:

Es necesario que finalices los pasos de [Creando un proyecto fotogramétrico para Bronchales](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/proyectos-de-proyecto-fotogrametrico/creando-proyecto-fotogrametrico-bronchales.md) antes de continuar.

1. Abre un explorador de archivos y elimina las orientaciones _internas_, _relativas_ y _absolutas_ del proyecto **exceptuando** la orientación interna de una de las imágenes.
2. En Digi3D.AI, selecciona la opción del menú **Herramientas/Configuración...**. Aparecerá el cuadro de diálogo [Configuración](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/).
3. Localiza y despliega la sección **Proyecto fotogramétrico**.
4. Cambia el valor de los parámetros _Comprobar imágenes, Correlar internas y Correlar relativas_ a **Si**.
5. Pulsa el botón **Aceptar**.
6. Pulsa el segundo botón de la barra de herramientas del panel de [Proyecto fotogramétrico](/digi3d-ai/referencia/paneles/proyecto-fotogrametrico.md). Este botón permite cargar un archivo de proyecto fotogramétrico. Aparecerá el cuadro de diálogo **Abrir**. Selecciona el archivo _Proyecto de Bronchales.d3dprj_ y pulsa el botón **Abrir**.
7. Aparecerá un cuadro de diálogo indicando que se han localizado imágenes sin orientación interna asociada y preguntándote si las quieres medir automáticamente. Esta operación se puede realizar **porque se ha localizado al menos una imagen con orientación interna**. Se va a utilizar esta orientación interna como base para medir el resto automáticamente. Pulsa el botón **Si.** Comprueba en la barra de estado de la aplicación que aparecen una serie de barras de progreso indicando que se están midiendo las orientaciones internas.
8. Pulsa el botón **Sí** cuando el cuadro de diálogo indique que se han localizado dos modelos sin orientación relativa y pregunte si quieres medir las orientaciones relativas automáticamente.
9. Aparece el [Cuadro de diálogo Orientación Relativa Automática por Correlación Extendido](/digi3d-ai/referencia/cuadros-de-dialogo/orientacion-relativa-automatica-por-correlacion-extendido.md).
10. Selecciona en el desplegable **Esquema** la opción _Von gruber calculado con porcentajes_.
11. Selecciona en **Configuración** la opción _Grosera \(si no se dispone de una orientación relativa aproximada previa_.
12. Pulsa el botón **Comenzar.**
13. Comprueba en la barra de estado de la aplicación que aparecen una serie de barras de progreso indicando que se están midiendo las orientaciones relativas.
14. Selecciona la opción del menú **Ventana/Resultados/Resultados**. Aparecerá el panel de resultados.
15. Comprueba que se muestran los residuos tanto de las orientaciones internas como de las orientaciones relativas que se han medido automáticamente. Si los residuos indican un fallo en la orientación de un modelo, puedes abrir directamente el modelo afectado.
16. Recuperar archivos.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Creando%20%20orientaciones%20internas%20y%20relativas%20automaticas%20mediante%20CRM.mp4" caption="" type="video/mp4"></video>

