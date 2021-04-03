# Introducción a los modos de búsqueda

Conoce algunos de los **modos de búsqueda de Digi3D.NET** siguiendo los siguientes pasos:

1. Dibuja una línea en forma de zigzag haciendo clic con el Botón de dato del ratón sobre la ventana de dibujo.
2. Visualiza la [Barra de herramientas Tentativo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-de-dibujo/BarraDeHerramientasTentativo.html), si no la tienes activa, aprende a activarla pulsando [aquí](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-de-dibujo/PresentacionDeBarrasHerramientasBasicas.html).
3. Pulsa sobre el desplegable de la segunda ventana de la [Barra de herramientas Tentativo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-de-dibujo/BarraDeHerramientasTentativo.html), esta ventana te va apermitir seleccionar entre distintos modos de búsqueda.
4. Cambia el rango de búsqueda del cursor en el desplegable del botón Cambiar tamaño del cursor de la Barra de herramientas Tentativos.

Modo de búsqueda **0. Vértice o proyección en XY**: Localiza un vértice o proyección en el rango de búsqueda del cursor.

1. **Selecciona** el modo de búsqueda **0. Vértice o proyección en XY**, en el desplegable de la [Barra de herramientas Tentativo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-de-dibujo/BarraDeHerramientasTentativo.html).
2. Acércate a un vértice de la línea y seleccionalo con el [botón de tentativo](introduccion-modos-busqueda.md) del ratón
   * Si te acercas a una zona donde no tengas un vértice y pulsas el Botón central del ratón, **Digi3D.NET** localizará la proyección.
   * Si pulsas el Botón central del ratón en una zona donde no tengas ni vértice ni proyección, **Digi3D.NET** mostrará un sonido de error.

Modo de búsqueda **1. Proyección o vértice en XY**: Aunque exista un vértice dentro del rango de búsqueda del tentativo, Digi3D.NET dará prioridad a las proyecciones y las seleccionará.

1. **Selecciona** el modo de búsqueda **1. Proyección o vértice en XY**, en el desplegable de la [Barra de herramientas Tentativo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-de-dibujo/BarraDeHerramientasTentativo.html).
   * Si te acercas a una zona donde tengas un vértice y el rango de búsqueda englobe una proyección, al pulsar el [botón de tentativo](introduccion-modos-busqueda.md) del ratón, Digi3D.NET seleccionará la proyección.
   * Si quieres seleccionar un vértice, tienes que ir con el cursor a una zona dónde solamente pueda seleccionar el vértice.

Modo de búsqueda **2. Vértices extremos de la entidad en XYZ**: Solo selecciona la entidad si dentro del rango de búsqueda del tentativo se encuentra el origen o el final de una entidad.

1. **Selecciona** el modo de búsqueda **2. Vértices extremos de la entidad en XYZ**, en el desplegable de la [Barra de herramientas Tentativo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-de-dibujo/BarraDeHerramientasTentativo.html).
2. **Acércate** al origen o al final de la línea que has dibujado y pulsa el [botón de tentativo](introduccion-modos-busqueda.md) del ratón, comprueba que **Digi3D.NET** selecciona el vértice inicial o final de esa línea.
3. Prueba ahora a tentativar la línea en otra zona distinta, verás como **Digi3D.NET** muestra un **sonido de error**, ya que en esa zona no se encuentran dentro del rango de búsqueda ni el vértice inicial ni el final de la entidad.

Modo de búsqueda **3. Vértice o proyección en XYZ**: Es el equivalente al modo de búsqueda 0. Vértice o proyección en XY, pero teniendo en cuenta la Z.

Modo de búsqueda **4. Busca el vértice más cercano en XYZ**: Localiza el vértice más cercano a la zona donde has tentativado.

1. **Selecciona** el modo de búsqueda **4. Busca el vértice más cercano en XYZ**, en el desplegable de la [Barra de herramientas Tentativo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-de-dibujo/BarraDeHerramientasTentativo.html).
2. **Tentativa** en la línea y comprueba que cada vez que pulses el [botón de tentativo](introduccion-modos-busqueda.md) del ratón, se hará un tentativo en el vértice más próximo al cursor incluso aunque no se encuentre dentro del rango de búsqueda.

Modo de búsqueda **6. Vértices extremos si coincide la Z**: Localiza vértices extremos si la coordenada Z activa en ese momento coincide con la coordenada Z de la entidad. Este modo de búsqueda lo verás más adelante.

Modo de búsqueda **11. Intersección**: Localiza el punto de intersección entre dos entidades.

1. Dibuja una línea que cruce con la primera que habías dibujado.
2. **Selecciona** el modo de búsqueda **11. Intersección**, en el desplegable de la [Barra de herramientas Tentativo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-de-dibujo/BarraDeHerramientasTentativo.html).
3. **Posiciona** el rango de búsqueda del cursor cerca de la intersección de las dos líneas y pulsa el [botón de tentativo](introduccion-modos-busqueda.md) del ratón. **Digi3D.NET** tentativará en el punto de intersección de las dos líneas.
   * Si **Digi3D.NET** no encuentra ningún punto de intersección en su rango de búsqueda al pulsar con el [botón de tentativo](introduccion-modos-busqueda.md) del ratón, mostrará un sonido de error.

Modo de búsqueda **13. Centro de la entidad** en XY: Selecciona el centro de la entidad seleccionada.

1. **Selecciona** el modo de búsqueda **13. Centro de la entidad**, en el desplegable de la [Barra de herramientas Tentativo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-de-dibujo/BarraDeHerramientasTentativo.html).
2. **Pulsa** con el [botón de tentativo](introduccion-modos-busqueda.md) del ratón sobre una entidad dibujada y comprueba que Digi3D.NET selecciona su centro.

Modo de búsqueda **15. Busca el primer vértice de la entidad en XY**: Selecciona el primer vértice de la entidad seleccionada.

1. **Selecciona** el modo de búsqueda **15. Busca el primer vértice de la entidad en XY**, en el desplegable de la [Barra de herramientas Tentativo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-de-dibujo/BarraDeHerramientasTentativo.html).
2. Selecciona una entidad con el [botón de tentativo](introduccion-modos-busqueda.md) del ratón, y comprueba que se selecciona el primer vértice de la misma. Prueba a seleccionar la entidad en distintas posiciones para ver el resultado.

Modo de búsqueda **17. Busca el último vértice de la entidad en XY**: Selecciona el último vértice de la entidad seleccionada.

1. **Selecciona** el modo de búsqueda **17. Busca el último vértice de la entidad en XY**, en el desplegable de la [Barra de herramientas Tentativo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-de-dibujo/BarraDeHerramientasTentativo.html).
2. Selecciona una entidad con el [botón de tentativo](introduccion-modos-busqueda.md) del ratón, y comprueba que se selecciona el último vértice de la misma. Prueba a seleccionar la entidad en distintas posiciones para ver el resultado.

Modo de búsqueda **19. Busca el vértice con coordenada Z menor en XY**: Este modo de búsqueda se verá cuando tengas conocimientos sobre la coordenada Z.

Modo de búsqueda **20. Busca el vértice con coordenada Z mayor en XY**: Este modo de búsqueda se verá cuando tengas conocimientos sobre la coordenada Z.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Introduccion%20a%20los%20modos%20de%20busqueda.mp4" caption="" %}

