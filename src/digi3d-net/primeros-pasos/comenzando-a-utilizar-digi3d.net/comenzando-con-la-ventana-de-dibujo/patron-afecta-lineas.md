# El patrón también afecta a las líneas

La orden [PATRON](/digi3d-net/referencia/ventana-de-dibujo/variables/p/patron.md), representa en Digi3D.NET las entidades almacenadas en el archivo de dibujo con la representaicón indicada en la tabla de códigos, esto va a afectar tanto a entidades puntuales como lineales.

Para ver distintos ejemplos sigue estos pasos:

1. Ejecuta la orden **PATRON=1** en la Barra de comandos o pulsando el botón correspondiente a esta variable en la [Barra de herramientas Parámetros de visualización](/digi3d-net/referencia/barras-de-herramientas/parametros-visualizacion.md).
2. Selecciona en la [Barra de herramientas Código](/digi3d-net/referencia/barras-de-herramientas/codigo.md) el código _010123 LIMITE PROVINCIAL_.
3. Dibuja una **línea** con ese código para que veas qué representación tiene este código al estar la variable PATRON activa.
4. Selecciona ahora en la **Barra de herramientas Códigos** el código _060142 SENDA_ y dibuja otra **línea**.
5. Cambia ahora al código _050146 EDIFICIO PRIVADO_, de la misma forma que has cambiado con anterioridad de código.
6. Dibuja una **línea** con éste código, como puedes ver, éste código no tiene asignada ninguna representación, por lo que activando o desactivando la orden **PATRON** no se ve afectada su representación.

**Digi3D.NET** no almacena la representación en el archivo de dibujo, como tampoco almacena el color, solo almacena puntos y polilíneas, los códigos de las entidades y cada uno de los vértices que las definen. La representación se calcula de manera virtual y depende de la [tabla de códigos](/digi3d-net/referencia/editor-de-tablas-de-codigos/) activa, si cambias la configuración de la representación en la tabla de códigos, cambiará la representación en el archivo de dibujo.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/El%20patron%20tambien%20afecta%20a%20las%20lineas.mp4" caption="" type="video/mp4"></video>

