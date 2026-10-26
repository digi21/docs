# El patrón también afecta a las líneas
<!-- id: patron-afecta-lineas -->

La orden [PATRON](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/patron.md) representa en Digi3D.AI las entidades almacenadas en el archivo de dibujo con la representación indicada en la tabla de códigos. La representación afecta tanto a entidades puntuales como lineales.

Para ver distintos ejemplos, sigue estos pasos:

1. Ejecuta la orden **PATRON=1** en la Barra de comandos o pulsando el botón correspondiente a esta variable en la [Barra de herramientas Parámetros de visualización](/digi3d-ai/referencia/barras-de-herramientas/parametros-visualizacion.md).
2. Selecciona en la [Barra de herramientas Código](/digi3d-ai/referencia/barras-de-herramientas/codigo.md) el código _010123 LIMITE PROVINCIAL_.
3. Dibuja una **línea** con ese código para que veas qué representación tiene este código al estar la variable PATRON activa.
4. Selecciona ahora en la **Barra de herramientas Códigos** el código _060142 SENDA_ y dibuja otra **línea**.
5. Cambia ahora al código _050146 EDIFICIO PRIVADO_, de la misma forma que has cambiado con anterioridad de código.
6. Dibuja una **línea** con el código _050146 EDIFICIO PRIVADO_. El código no tiene asignada ninguna representación, por lo que activar o desactivar la orden **PATRON** no modifica la representación de la línea.

**Digi3D.AI** no almacena la representación ni el color en el archivo de dibujo. Digi3D.AI almacena únicamente puntos y polilíneas, los códigos de las entidades y los vértices que definen las entidades. Digi3D.AI calcula la representación al visualizar las entidades según la [tabla de códigos](/digi3d-ai/referencia/editor-de-tablas-de-codigos/) activa. Si cambias la configuración de la representación en la tabla de códigos, cambiará la representación de las entidades del archivo de dibujo.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/El%20patron%20tambien%20afecta%20a%20las%20lineas.mp4" caption="" type="video/mp4"></video>

