# Digitalizando vértices con distinta coordenada Z

Digitaliza vértices con distinta coordenada Z introduciendo coordenadas siguiendo estos pasos:

1. Localiza la [Barra de herramientas coordenadas](BarraDeHerramientasCoordenadas.html), si no está visible, aprende a activarla pulsando [aquí](PresentacionDeBarrasHerramientasBasicas.html).
2. **Pulsa** el tercer botón de la [Barra de herramientas coordenadas](BarraDeHerramientasCoordenadas.html), es el correspondiente a la orden [XY](XY.html), al pulsarlo aparecerá el cuadro de diálogo [Inserción Manual de coordenadas](CuadroDeDialogoInsercionManualDeCoordenadas.html). Aquí podrás introducir coordenadas con distintas Z.
3. **Introduce** las siguientes coordenadas 0 0 0, 100 100 10 y 200 0 0 y pulsa el botón **Aceptar**.
4. **Finaliza** la orden [LINEA](LINEA.html) pulsando el [botón de cancelar]() del ratón.
5. En la ventana de dibujo se habrá generado una polilínea con los tres vértices introducidos.
6. **Selecciona** el modo de búsqueda **4. Busca el vértice más cercano en XYZ** de la [Barra de herramientas tentativo](BarraDeHerramientasTentativo.html).
7. **Tentativa** cerca de cada vértice y comprueba en la primera ventana de la [Barra de herramientas tentativo](BarraDeHerramientasTentativo.html) la Z de cada uno de ellos.

Para digitalizar vértices con distinta coordenada Z según digitalizamos con el dispositivo de entrada:

1. **Localiza** la [Barra de herramientas coordenada Z](BarraDeHerramientasCoordenadaZ.html), si no está visible, aprende a activarla pulsando [aquí](PresentacionDeBarrasHerramientasBasicas.html).
2. **Pulsa** el primer botón de la [Barra de herramientas coordenada Z](BarraDeHerramientasCoordenadaZ.html), es el correspondiente a la orden [Z](Z.html).
3. **Introduce** una coordenada Z en la ventana que aparece en la esquina inferior derecha de la barra de mensajes, por ejemplo Z=100.
4. Pulsa **Enter** para aceptar.
5. **Localiza** la [Barra de herramientas coordenadas](BarraDeHerramientasCoordenadas.html), si no está visible, aprende a activarla pulsando [aquí](PresentacionDeBarrasHerramientasBasicas.html).
6. Si observas la primera ventana de la [Barra de herramientas coordenadas](BarraDeHerramientasCoordenadas.html), el valor de Z se habrá modificado a 100 m.
7. **Digitaliza** una polilínea en la ventana de dibujo, haciendo clic sobre ella, todos los vértices de esa polilínea tendrán como coordenada Z el valor 100 m.

Digitaliza una polilínea cuyos vértices tengan distinto valor de Z siguiendo los siguientes pasos:

1. **Digitaliza** el primer segmento de la polilínea con la Z activa en este momento.
2. **Pulsa** el primer botón de la [Barra de herramientas coordenada Z](BarraDeHerramientasCoordenadaZ.html), introduce como nuevo valor de coordenada Z 200 m.
3. Pulsa **Enter** e introduce un nuevo vértice.
4. **Finaliza** la polilínea pulsando el [botón de cancelar]() del ratón.
5. **Comprueba** que tienes seleccionado el modo de búsqueda **4. Busca el vértice más cercano en XYZ**. Si no está seleccionado, seleccionalo en el desplegable de la [Barra de herramientas tentativo](BarraDeHerramientasTentativo.html).
6. **Tentativa** cada uno de los vértices para ver sus coordenadas Z.

Para modifica la coordenada Z con un tentativo que tenga Z, sigue los siguientes pasos:

Al seleccionar el primer botón de la Barra de herramientas coordenada Z, se activa el segundo botón bloqueando así la coordenada Z \([BLOQUEA\_Z](BLOQUEA_Z.html)\), esta opción se utiliza principalmente para la digitalización de curvas de nivel.

1. **Desactiva** el botón correspondiente a la orden [BLOQUEA\_Z](BLOQUEA_Z.html) \(segundo botón de la [Barra de herramientas coordenada Z](BarraDeHerramientasCoordenadaZ.html)\).
2. **Selecciona** el modo de búsqueda **2. Vértice o proyección en XYZ** en el desplegable de la [Barra de herramientas tentativo](BarraDeHerramientasTentativo.html) \(modificará la coordenada Z al tentativar\).
3. **Tentativa** en la mitad de uno de los segmentos que has digitalizado con anterioridad y **comprueba**, en la primera ventana de la [Barra de herramientas coordenadas](BarraDeHerramientasCoordenadas.html), que se ha modificado el valor de la coordenada Z. Todo lo que digitalices a partir de ahora, se digitalizará con la nueva coordenada Z que acabas de obtener.
   * Al seleccionar un modo de búsqueda con coordenada Z, por ejemplo el 3, y confirmas la selección del tentativo, ese vértice se va a representar exactamente con la coordenada que tiene en ese punto el segmento en el que hayas tentativado.
   * Si seleccionas un modo de búsqueda que no tenga Z, por ejemplo el 0, comprueba que tu coordenada Z sigue siendo la anterior, si ahora tentativas en otro punto del segmento, la primera ventana de la barra de herramientas tentativos te muestra la coordenada de ese punto, pero la coordenada Z activa es la que tenías anteriormente.
4. **Selecciona** el modo de búsqueda **4** y **tentativa** en los vértices de las polilíneas que has digitalizado para comprobar su Z.
5. **Pulsa** sobre el segundo botón de la [Barra de herramientas coordenada Z](BarraDeHerramientasCoordenadaZ.html), para activar la variable [BLOQUEA\_Z](BLOQUEA_Z.html).
6. **Tentativa** sobre cualquier entidad y **comprueba** que la coordenada Z permanece constante, aunque el elemento que tentatives tenga distinta Z.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Digitalizando%20vertices%20con%20distinta%20coordenada%20Z.mp4" %}



