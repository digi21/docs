# Midiendo automáticamente orientaciones internas y relativas

Podemos configurar Digi3D.NET para que realice las siguientes comprobaciones cada vez que cargamos un archivo de _proyecto fotogramétrico_:

1. Comprobación de que las imágenes son compatibles con Digi3D.NET.
2. Comprobación de que las imágenes tienen una orientación interna asociada.
3. Comprobación de que los modelos tienen una orientación relativa.

La primera comprobación puede llevar tiempo, pues requiere que Digi3D.NET abra todas las imágenes del proyecto, y eso puede demorar si son muchas o si el dispositio donde están almacenadas las imágenes es lento, de modo que por defecto Digi3D.NET viene configurado de manera que no se realice esta comprobación.

La segunda comprobación también puede ser lenta, pues si las imágenes llevan incorporada en sus metadatos la información de la cámara Digi3D.NET tendrá que abrir las imágenes para comprobar que todas ellas proporcionan esa información, y eso, como en el párrafo anterior puede tardas, de modo que por defecto Digi3D.NET viene configurado de manera que no se realice esta comprobación.

La tercera comprobación es muy rápida, pero para mentener uniformidad con las opciones anteriores, también viene deshabilitada por defecto.

En este tema vamos a aprender a configurar Digi3D.NET para que realice las tres comprobaciones y vamos a generar automáticamente las orientaciones internas y las orientaciones relativas del proyecto.

Es necesario que finalices los pasos de [Creando un proyecto fotogramétrico para Bronchales](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/proyectos-de-proyecto-fotogrametrico/CreandoUnProyectoFotogrametricoParaBronchales.html) antes de continuar.

1. Abre un explorador de archivos y elimina las orientaciones _internas_, _relativas_ y _absolutas_ del proyecto **exceptuando** la orientación interna de una de las imágenes.
2. En Digi3D.NET, selecciona la opción del menú **Herramientas/Configuración**. Aparecerá el cuadro de diálogo [Configuración](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/proyectos-de-proyecto-fotogrametrico/CuadroDeDialogoConfiguracion.html).
3. Localiza y despliega la sección **Proyecto fotogramétrico**.
4. Cambia el valor de los parámetros _Comprobar imágenes, Correlar internas y Correlar relativas_ a **Si**.
5. Pulsa el botón **Aceptar**.
6. Pulsa el segundo botón de la barra de herramientas del panel de [Proyecto fotogramétrico](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/proyectos-de-proyecto-fotogrametrico/PanelProyectoFotogrametrico.html). Este botón permite cargar un archivo de proyecto fotogramétrico. Aparecerá el cuadro de diálogo **Abrir**. Selecciona el archivo _Proyecto de Bronchales.d3dprj_ y pulsa el botón **Abrir**.
7. Aparecerá un cuadro de diálogo indicando que se han localizado imágenes sin orientación interna asociada y preguntándote si las quieres medir automáticamente. Esta operación se puede realizar **porque se ha localizado al menos una imagen con orientación interna**. Se va a utilizar esta orientación interna como base para medir el resto automáticamente. Pulsa el botón **Si.** Comprueba en la barra de estado de la aplicación que aparecen una serie de barras de progreso indicando que se están midiendo las orientaciones internas.
8. Aparecerá un cuadro de diálogo indicando que se han localizado dos modelos sin orientación relativa y solicitando si queremos que se midan automáticamente. Pulsa el botón **Sí**.
9. Aparece el [Cuadro de diálogo Orientación Relativa Automática por Correlación Extendido](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/proyectos-de-proyecto-fotogrametrico/CuadroDeDialogoOrientacionRelativaAutomaticaPorCorrelacionExtendido.html).
10. En el desplegable **Esquema** selecciona la opción _Von gruber calculado con porcentajes_.
11. En **Configuración** selecciona la opción _Grosera \(si no se dispone de una orientación relativa aproximada previa_.
12. Pulsa el botón **Comenzar.**
13. Comprueba en la barra de estado de la aplicación que aparecen una serie de barras de progreso indicando que se están midiendo las orientaciones relativas.
14. Selecciona la opción del menú **Ventana/Resultados/Resultados**. Aparecerá el panel de resultados.
15. Comprueba que se muestran los resíduos tanto de las orientaciones internas como de las orientaciones relativas que se han medido automáticamente. De esta manera, si algo ha fallado podemos ir directamente al modelo en cuestión.
16. Recuperar archivos.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Creando%20%20orientaciones%20internas%20y%20relativas%20automaticas%20mediante%20CRM.mp4" caption="" %}

