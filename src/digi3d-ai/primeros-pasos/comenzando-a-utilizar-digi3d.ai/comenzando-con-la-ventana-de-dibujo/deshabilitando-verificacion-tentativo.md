# Deshabilitando la verificación de tentativo
<!-- id: deshabilitando-verificacion-tentativo -->

Para deshabilitar la verificación de tentativo, sigue estos pasos:

1. **Dibuja** una línea haciendo **clic** sobre la ventana de dibujo con el [Botón de dato](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) del ratón. **Finaliza la línea** pulsando sobre el [botón de cancelar](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) del ratón.
2. **Tentativa** sobre esa línea con el [botón de tentativo](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) del ratón. **Digi3D.AI** muestra mediante una animación la línea que has seleccionado y en la esquina inferior izquierda solicita confirmación para hacer tentativo en dicha línea. Para **aceptar**, pulsa el [botón de dato](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) del ratón; para **cancelar**, pulsa el [botón de cancelar](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón).
3. **Visualiza** la [Barra de herramientas Tentativo](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md).
4. **Localiza** el botón correspondiente a la variable **Verificar** en la [Barra de herramientas Tentativo](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) (su icono es una V). El botón normalmente está activo, por lo que Digi3D.AI pide confirmación al seleccionar una entidad para tentativarla.
5. **Deshabilita** la variable Verificar pulsando su botón correspondiente en la [Barra de herramientas Tentativo](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md).
6. **Tentativa** sobre una línea con el [botón de tentativo](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) del ratón. Con la variable Verificar deshabilitada, **Digi3D.AI** no pedirá confirmación e insertará automáticamente el primer vértice tentativado con el modo de búsqueda activo en ese momento.

Uno de los inconvenientes de tener deshabilitada la variable Verificar es que los tentativos y las búsquedas son lo mismo:

* Desencadenas un tentativo cuando dibujas una [línea](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) o cuando **Digi3D.AI** está en [modo preparado](/digi3d-ai/referencia/ordenes/formas-de-ejecutar-una-orden/de-manera-automatica/modo-preparado.md) y quieres insertar un vértice en una determinada coordenada. Para desencadenar el tentativo, pulsa el [botón de tentativo](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) del ratón.
* Si Verificar está deshabilitada y ejecutas la orden [Eliminar las entidades seleccionadas](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-e.md), la orden solicita que **selecciones** la entidad que quieres borrar. Para seleccionar la entidad, sitúa el cursor sobre la entidad que quieres eliminar y pulsa el [botón de dato](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) del ratón o el [botón de tentativo](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón), para realizar la búsqueda de la entidad. **Digi3D.AI** eliminará la primera entidad que encuentre y puede que la entidad encontrada no sea la que deseas borrar, por lo que tendrías que [Deshacer](/digi3d-ai/referencia/barras-de-herramientas/deshacer.md) y buscar la entidad que quieres borrar manualmente.
* Con el botón de **Verificar** activado, puedes elegir la entidad que quieres borrar pulsando sobre el [botón de tentativo](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#números-de-los-botones-del-ratón) hasta que se seleccione la entidad deseada.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Deshabilitando%20la%20verificacion%20de%20tentativo.mp4" type="video/mp4"></video>
