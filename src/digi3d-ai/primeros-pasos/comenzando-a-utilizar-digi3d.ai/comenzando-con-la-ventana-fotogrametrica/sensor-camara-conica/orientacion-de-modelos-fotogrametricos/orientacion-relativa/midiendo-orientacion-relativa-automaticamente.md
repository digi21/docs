# Midiendo la orientación relativa automáticamente
<!-- id: midiendo-orientacion-relativa-automaticamente -->

Digi3D.AI puede medir la orientación relativa automáticamente mediante algoritmos de [correlación](midiendo-orientacion-relativa-automaticamente.md), de manera que no será necesario medir ningún punto para realizar la orientación relativa.

El programa medirá puntos homólogos automáticamente. Al ser un proceso completamente automático es posible que algún punto no se mida correctamente. La manera de solucionar este problema es medir muchos más puntos \(cuando seguiste los pasos de [Midiendo la orientación relativa manualmente](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-relativa/midiendo-orientacion-relativa-manualmente.md), asumir que un pequeño porcentaje de estos puntos estará medido de manera incorrecta y calcular la orientación relativa teniendo en cuenta esto precisamente, que algún punto no estará medido correctamente. El cálculo de la orientación relativa de Digi3D.AI utiliza _estimadores robustos_, y gracias a ellos se detectan estos puntos mal medidos y el resultado final es que no se tienen en consideración, obteniendo una orientación relativa perfecta.

Es necesario que finalices los pasos de [Archivos de orientación relativa](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-relativa/archivos-orientacion-relativa.md) antes de ejecutar los siguientes pasos para medir una orientación relativa automáticamente:

1. Selecciona la opción de menú **Ventana fotogramétrica/Orientaciones/Orientación relativa**, que ejecuta la orden [ORI\_RELATIVA](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori_relativa.md).
2. Comprueba que en la barra de mensajes aparece una barra de progreso indicando que se está calculando el recubrimiento de las imágenes.
3. Si todo ha ido bien, deberías ver ambas imágenes en la misma posición.
4. Aparecerá el panel **Orientación relativa**.
5. En la parte inferior del panel **Orientación relativa** se muestra un texto indicándote que digitalices el punto 1 en la imagen izquierda.
6. Pulsa el botón **Correlar todo.** Aparecerá el cuadro de diálogo [Orientación Relativa Automática por Correlación](/digi3d-ai/referencia/cuadros-de-dialogo/orientacion-relativa-automatica-por-correlacion.md)**.**
7. Pulsa el botón **Comenzar.** Comprueba cómo en la barra de estado aparece una barra de progreso indicando el progreso de la corralción.
8. Una vez finalizado comprueba que la lista de puntos medidos se ha rellenado con todas las medidas.
9. Digi3D.AI correla una zona por cada punto del esquema seleccionado en el cuadro de diálogo; el esquema de _Von Gruber_ tiene seis. Si todas las zonas tienen al menos un punto válido, los primeros puntos de la lista son el mejor de cada zona, en el orden de las zonas, y el resto aparece en el orden de correlación: primero los de la primera zona, luego los de la segunda, y así sucesivamente. Si alguna zona se queda sin puntos, Digi3D.AI muestra un mensaje con las zonas sin puntos y la lista queda en el orden de correlación.
10. Comprueba que no tienes paralaje por el modelo.
11. Pulsa el botón **Aceptar**.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Midiendo%20la%20orientacion%20relativa%20automaticamente.mp4" caption="" type="video/mp4"></video>

