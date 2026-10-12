# Deshabilitando la verificación de tentativo
<!-- id: deshabilitando-verificacion-tentativo -->

Aprende a deshabilitar la verificación de tentativo siguiendo los siguientes pasos:

1. **Dibuja** una línea haciendo **clic** sobre la ventana de dibujo con el [Botón de dato](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) del ratón. **Finalizala** pulsando sobre el [botón de cancelar](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) del ratón.
2. **Tentativa** sobre esa línea con el **\*\***[**botón de tentativo**](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) **del ratón, verás que** Digi3D.AI **muestra mediante una animación la línea que has seleccionado y en la esquina inferior izquierda solicita confirmación para hacer tentativo en dicha línea. Para** aceptar **pulsa sobre el** [**botón de dato**](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) **del ratón y para** cancelar\*\* sobre el [botón de cancelar](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón).
3. **Visualiza** la [Barra de herramientas Tentativo](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md).
4. **Localiza** el botón correspondiente a la variable **Verificar** en la [Barra de herramientas Tentativo](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) (el botón normalmente se encuentra activo, su icono es una V, por esta razón al seleccionar una entidad Digi3D.AI pedirá confirmación para tentativarla).
5. **Deshabilita** la variable Verificar, pulsando su botón correspondiente en la [Barra de herramientas Tentativo](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md).
6. **Tentativa** sobre una línea con el [botón de tentativo](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) del ratón, verás que ahora **Digi3D.AI** no pedirá confirmación y de forma automática se inserta el primer vértice tentativando con el modo de búsqueda activo en ese momento.

Uno de los inconvenientes de tener deshabilitada la variable Verificar es que los tentativos y las búsquedas son lo mismo:

* Un tentativo lo desencadenamos cuando al dibujar una [línea](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) o **Digi3D.AI** está en [modo preparado](/digi3d-ai/referencia/ordenes/formas-de-ejecutar-una-orden/de-manera-automatica/modo-preparado.md) y queremos insertar un vértice en una determinada coordenada. Lo hacemos pulsando el [botón de tentativo](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) del ratón.
* Al ejecutar una orden que solicita que selecciones una entidad, por ejemplo la orden [Eliminar las entidades seleccionadas](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-e.md), la orden solicita que **seleccione** la entidad a borrar, para ello situándome sobre la entidad a eliminar pulsaré sobre el botón de data del ratón o sobre [botón de tentativo](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón), para realizar la búsqueda de la entidad. **Digi3D.AI** eliminará la primera entidad que encuentre y puede que esa no sea la que desee borrar, por lo que tendría de [Deshacer](/digi3d-ai/referencia/barras-de-herramientas/deshacer.md) y buscar la entidad a borrar manualmente.
* Si hubieses tenido el botón de **Verificar** activado, podrías haber elegido la entiad a borrar pulsando sobre el [botón de tentativo](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) hasta que se seleccionase la entidad deseada.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Deshabilitando%20la%20verificacion%20de%20tentativo.mp4" type="video/mp4"></video>
