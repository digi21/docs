# Midiendo la primera orientación absoluta de un proyecto
<!-- id: midiendo-primera-orientacion-absoluta-proyecto -->

El proceso de medir una orientación absoluta consiste en identificar en el modelo puntos con coordenadas conocidas. Estos puntos son los denominados puntos de apoyo.

Necesitas un archivo con las coordenadas de los puntos de apoyo y un croquis que indique dónde medir cada punto de apoyo.

A continuación tienes la posición \(en la foto _107_\) de los puntos que vas a medir:

La siguiente tabla muestra los puntos que debes medir con más detalle \(y por orden de medida\). Puedes hacer _clic_ en las fotos para verlas a tamaño real:

| Orden | Número de punto | Coordenadas píxel en la imagen 107 | Captura |
| :--- | :--- | :--- | :--- |
| 1 | 7 | 9527.7, 7713.6 |  |
| 2 | 6 | 8894.9, 5296.1 |  |
| 3 | 3 | 6297.8, 3308.4 | Punto 3 en la foto 107 |
| 4 | 4 | 5798.8, 66571.8 | Punto 4 en la foto 107 |
| 5 | 5 | 10703.4, 2432.8 | Punto 5 en la foto 107 |

Es necesario que finalices los pasos de [Midiendo la orientación relativa automáticamente](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-relativa/midiendo-orientacion-relativa-automaticamente.md) antes de ejecutar los siguientes pasos para medir una orientación absoluta:

1. Pulsa el botón **Orientación absoluta** de la barra de herramientas de la ventana fotogramétrica. Aparecerán dos paneles acoplados a la ventana fotogramétrica: **Orientación Absoluta** e **Instantáneas**. El panel **Orientación absoluta** es el que te permite medir la orientación absoluta. El panel **Instantáneas** muestra dónde se midió un determinado punto en otra imagen si ya se midió el punto en esa imagen. 
2. Es posible que además aparezca el [Cuadro de diálogo Introduce un punto terreno del archivo de puntos](/digi3d-ai/referencia/cuadros-de-dialogo/introduce-punto-terreno.md). Si es así, pulsa el botón **Cancelar** para cerrarlo.
3. Comprueba que el panel **Orientación absoluta** muestra en la parte superior la ruta al archivo de puntos de apoyo así como el [Sistema de referencia de coordenadas](/digi3d-ai/sistemas-referencia-coordenadas/) en el que están las coordenadas de los puntos de apoyo enumerados en ese archivo.
4. Pulsa el botón **...** justo a la derecha de la ruta al archivo de puntos de apoyo. Aparecerá el [Cuadro de diálogo Archivo de puntos de apoyo](/digi3d-ai/referencia/cuadros-de-dialogo/archivo-de-puntos-de-apoyo.md).
5. Pulsa el botón **...** para especificar la ruta del archivo de puntos de apoyo. Aparecerá el cuadro de diálogo **Abrir**.
6. Localiza y selecciona el archivo _%EjemplosDigi3D%\Bronchales\Bronchales.xyz_ y pulsa el botón **Abrir**.
7. Pulsa el botón **...** para especificar el sistema de referencia de coordenadas de los puntos de apoyo. Aparecerá el **Cuadro de diálogo Sistema de Referencia de Coordenadas**.
8. Selecciona la opción **Proyectado + Vertical** en la parte izquierda.
9. Localiza en el desplegable **Sistema de referencia de coordenadas proyectado** la opción _WGS 84 / UTM Zone 30N_.
10. Selecciona en el desplegable **Sistema de coordenadas vertical** _Alicante height_.
11. Pulsa el botón **OK**.
12. Comprueba que el cuadro de diálogo **Archivo de puntos de apoyo** muestra en el campo **Sistema de referencia de coordenadas** lo siguiente: _WGS 84 / UTM Zone 30N + Alicante height_.
13. Pulsa el botón **Aceptar**.
14. Comprueba que en el panel **Orientación absoluta** aparece tanto la ruta del archivo de puntos de apoyo como el sistema de referencia de coordenadas del archivo.
15. Pulsa el botón **Añadir**. Aparecerá el [Cuadro de diálogo Introduce un punto terreno del archivo de puntos](/digi3d-ai/referencia/cuadros-de-dialogo/introduce-punto-terreno.md). Selecciona el punto **7** y pulsa el botón **Aceptar**.
16. Comprueba que en la parte inferior del panel **Orientación absoluta** el programa solicita que digitalices el punto número **7.**
17. Localiza el punto **7.** Una vez localizado el punto, pulsa cualquier botón de tu dispositivo de entrada para confirmar la medida.
18. Comprueba que aparece el cuadro de diálogo **Introduce un punto terreno del archivo de puntos**.
19. Selecciona el punto número **6** y pulsa el botón **Aceptar.**
20. Localiza el punto **6**. Una vez localizado el punto, pulsa cualquier botón de tu dispositivo de entrada para confirmar la medida.
21. Observa que **ya no se vuelve a mostrar** el cuadro de diálogo **Introduce un punto terreno del archivo de puntos**. Con las dos medidas realizadas, Digi3D.AI ha determinado qué puntos están dentro del modelo y ha localizado automáticamente el siguiente punto. Comprueba que en la parte inferior del panel **Orientación absoluta** se solicita que digitalices el punto número **3.**
22. Localiza el punto número **3**. El programa ha calculado automáticamente la posición aproximada del punto número **3**, pero, como solo has medido dos puntos, no puede desplazar la ventana fotogramétrica hasta el punto con total precisión. Para localizar el punto número **3**, prueba a modificar la coordenada Z. Una vez localizado el punto, pulsa cualquier botón de tu dispositivo de entrada para confirmar la medida.
23. Sitúa el índice estereoscópicamente sobre el punto número **4**, al que se desplazará la ventana fotogramétrica cuando el programa solicite que lo digitalices, y pulsa cualquier botón de tu dispositivo de entrada.
24. Sitúa el índice estereoscópicamente sobre el punto número **5** cuando el programa solicite que lo digitalices y pulsa cualquier botón de tu dispositivo de entrada.
25. Comprueba los residuos de cada punto cuando el programa deje de solicitar que digitalices puntos. Puedes pulsar el botón **Peor** para que el programa localice automáticamente el punto con mayores residuos. Digi3D.AI marcará el punto con mayores residuos en la lista de puntos de apoyo medidos y desplazará la ventana fotogramétrica al punto con mayores residuos.
26. Pulsa, si quieres remedir un punto, el botón **Remedir**. El programa entrará en modo remedir y tendrás que digitalizar el punto donde te interese. El programa calcula orientaciones absolutas cada vez que te mueves, de modo que es capaz de mostrar el resultado de la orientación antes de que confirmes el punto. El resultado de la orientación puede ayudarte a decidir dónde medir el punto si tienes dudas, como por ejemplo si la reseña de un punto de apoyo indica que hay que medir el punto en el centro de una piedra y encuentras que hay varias piedras. Puedes pulsar en cualquier momento la tecla **Esc** para cancelar la remedida del punto.
27. Pulsa el botón **Aceptar** para aceptar la orientación absoluta. 

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Orientacion%20absoluta%20del%20primer%20modelo.mp4" caption="" type="video/mp4"></video>

