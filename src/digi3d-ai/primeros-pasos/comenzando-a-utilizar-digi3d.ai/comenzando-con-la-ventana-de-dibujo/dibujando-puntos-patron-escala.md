# Dibujando puntos, patrón y escala de dibujo
<!-- id: dibujando-puntos-patron-escala -->

1. Pulsa los prismáticos en la [Barra de herramientas Código](/digi3d-ai/referencia/barras-de-herramientas/codigo.md). Aparece el cuadro de diálogo **Seleccione códigos**, que muestra los códigos de la tabla que seleccionaste al crear el archivo de dibujo:

| Columna | Descripción |
| :--- | :--- |
| Código | Nombre del código |
| Color | Color de visualización del código en la ventana de dibujo |
| Tipo |Lineal<br>Puntual<br>Virtual|
| Descripción | Descripción del código |

* Si Digi3D.AI está en [modo preparado](/digi3d-ai/referencia/ordenes/formas-de-ejecutar-una-orden/de-manera-automatica/modo-preparado.md) y el código activo es un [código lineal](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md#tipo), al pulsar el [botón de dato](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) sobre la ventana de dibujo, Digi3D.AI ejecutará de manera automática la orden [**LINEA**](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) y dibujará una polilínea.
* Si Digi3D.AI está en **modo preparado** y el código activo es un [código puntual](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md#tipo), al pulsar el **botón de dato** sobre la ventana de dibujo, Digi3D.AI ejecutará la orden [**PUNTO**](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto.md).

Sigue estos pasos para digitalizar un punto:

1. Asegúrate de que Digi3D.AI está en **modo preparado**. Si no es así, pulsa la tecla **Esc** del teclado o el [botón de cancelar](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) hasta que Digi3D.AI esté en **modo preparado**. 
2. Selecciona un **código puntual**.
3. Pulsa con el **botón de dato** sobre la ventana de dibujo. Digi3D.AI insertará un punto en las coordenadas en las que has pulsado el botón de dato.

Sigue estos pasos para activar la representación gráfica \(patrón\) del punto que acabas de dibujar:

1. Ejecuta la orden [**PATRON**](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/patron.md) para visualizar la representación del código del punto que acabas de dibujar. Para ejecutar la orden, selecciona el botón correspondiente en la [Barra de herramientas Parámetros de visualización](/digi3d-ai/referencia/barras-de-herramientas/parametros-visualizacion.md).

La escala de representación de los patrones varía en función de la **Escala activa** en la pestaña **Archivo de dibujo** del cuadro de diálogo [Nuevo Proyecto](/digi3d-ai/referencia/cuadros-de-dialogo/nuevo-proyecto/).

Sigue estos pasos para modificar la escala de representación del punto que acabas de digitalizar:

1. **Cierra** la ventana de dibujo.
2. Selecciona la opción de menú **Archivo/Nuevo/Abrir modelo fotogramétrico o archivo de dibujo...** Aparecerá el cuadro de diálogo **Nuevo Proyecto**.
3. Selecciona la pestaña **Archivo de dibujo**.
4. Modifica el valor de **Parámetros de configuración/Registro/Escala** para cambiar la escala.
5. Pulsa el botón **Aceptar**.
6. Activa la visualización de patrones pulsando el botón correspondiente a la orden Patrón en la **Barra de herramientas Parámetros de visualización**.
7. Repite el proceso varias veces con distintos valores de escala para que veas la diferencia de utilizar una escala u otra.

El valor de la **Escala** afecta únicamente a la representación; no afecta al registro de entidades.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Dibujando%20puntos%20y%20activacion%20de%20patron%20y%20funcion%20del%20parametro%20escala.mp4" caption="" type="video/mp4"></video>

