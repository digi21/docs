# Midiendo la aerotriangulación del modelo 107-108

En este ejemplo vamos a aerotriangular los modelos _107-108_ y _108-109_. Como es un proyecto formado por una única pasada, mediremos al menos _5_ puntos por foto, que serán los siguientes: _1070, 1071, 1072, 1073, 1074, 1080, 1081, 1082, 1083, 1084, 1090, 1091, 1092, 1093, 1094._

Estos puntos tendremos que medirlos en todos los modelos en los que solapen.

Para poder continuar es necesario que sigas los pasos de [Midiendo automáticamente orientaciones internas y relativas](MidiendoAutomaticamenteOrientacionesInternasYRelativas.html).

1. Si has seguido todos los pasos de este tutorial, es posible que tengas en el directorio del proyecto dos subcarpetas: una denominada _Aerotriangulación_ y otra denominada _Instantáneas_. Si es así, **elimínalas**.
2. Si tienes archivos de orientación absoluta \(archivos con extensión _.abs.xml_\), **elimínalos**
3. Muestra el [Panel Proyecto fotogramétrico](PanelProyectoFotogrametrico.html) mediante la opción del menú **Ventana/Otras ventanas/Proyecto fotogramétrico**.
4. Pulsa el segundo botón de la barra de herramientas del _panel de cambio automático de modelos._ Aparecerá el cuadro de diálogo **Abrir**.
5. Selecciona el archivo _Proyecto de Bronchales.d3dprj_ y pulsa el botón **Abrir.**
6. Despliega la sección _Pasada: 1_ del [panel de proyecto fotogramétrico](PanelProyectoFotogrametrico.html)_._
7. Selecciona la opción _107-108._ Se abrirá una ventana fotogramétrica mostrando el modelo _107-108_.
8. Pulsa el botón _T_ de la barra de herramientas de la ventana fotogramétrica. Aparecerá el [Panel medida de aerotriangulación](PanelMedidaDeAerotriangulacion.html).
9. Este panel es muy parecido al panel de orientación absoluta \(de echo es el mismo, únicamente se le añade el desplegable _Esquema_.
10. Selecciona el esquema **Una pasada con porcentajes.**
11. Comprueba que el programa te está solicitando que digitalices el punto 1070 y ha desplazado la ventana fotogramétrica al centro de la foto 107. Localiza un punto donde quieras medir el punto 1070 y pulsa cualquier botón de tu dispositivo de entrada.
12. El programa ahora solicita que digitalces el punto 1071. Esta vez ha desplazado la ventana fotogramétrica a la parte superior de la foto 107. Digitaliza el punto.
13. Mide todos los puntos que te solicite el programa.
14. Una vez medidos todos los puntos, aparece el [Cuadro de diálogo Introduce un punto terreno del archivo de puntos](CuadroDeDialogoIntroduceUnPuntoTerrenoDelArchivoDePuntos.html) tal y como sucedía al hacer una orientación absoluta. Pulsa el botón **Cancelar** para cerrar el cuadro de diálogo.
15. En **Archivo de puntos** del panel _Medida de aerotriangulación_ pulsa el botón de los tres puntos. Aparecerá el [Cuadro de diálogo Archivo de puntos de apoyo](CuadroDeDialogoArchivoDePuntosDeApoyo.html).
16. Pulsa el botón de los tres puntos para  cambiar el archivo de puntos de apoyo. Aparecerá el cuadro de diálgo **Abrir**.
17. Localiza el archivo **Puntos de apoyo de Bronchales para aerotriangular.xyz** y pulsa el botón **Abrir**. Este es un archivo de puntos de apoyo reducido que únicamente dispone de 4 puntos de apoyo.
18. Si el sistema de referencia de coordenadas asociado no es _WGS 84 / UTM Zone 30N + EGM08\_REDNAP Península_, selecciónalo.
19. Pulsa el botón **Aceptar**.
20. Vamos a medir ahora los puntos 7 y 6. Para ello, pulsa el botón **Añadir** del _panel de Medida de aerotriangulación_. Aparecerá el _cuadro de diálogo Introduce un punto terreno del archivo de puntos_.
21. Selecciona el punto 7 y mídelo \([recuerda donde estaba](MidiendoLaPrimeraOrientacionAbsolutaDeUnProyecto.html)\).
22. Volverá a aparecer el _cuadro de diálogo Introduce un punto terreno del archivo de puntos_. Selecciona ahora el punto número 6 y mídelo.
23. Volverá a aparecer el _cuadro de diálogo Introduce un punto terreno del archivo de puntos_.

    Ya no hay más puntos de apoyo en este modelo, y hemos medido todos los puntos que han aportado las dos fotos, pero somos libres de añadir más puntos si queremos.

    Teclea el número _1075_ y pulsa **Aceptar**.

24. El programa solicitará que digitalices el punto _1075_. En la orientación absoluta, no podríamos haber hecho esto, pues la orientación absoluta nos obliga a que seleccionemos un punto que existe en el archivo de puntos de apoyo, sin embarlo la medida de aerotriangulación permite que nos inventemos puntos al vuelo.
25. Mide el punto _1075_ donde te interese.
26. Volverá a aparecer el _cuadro de diálogo Introduce un punto terreno del archivo de puntos_. Pulsa el botón **Cancelar** porque ya no queremos medir más puntos.
27. Pulsa el botón **Aceptar** del _panel Medida de aerotriangulación**.**_

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Midiendo%20la%20aerotriangulacion%20del%20modelo%20107-108.mp4" %}



