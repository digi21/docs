# Pantalla completa
<!-- id: pantalla-completa-ventana-fotogrametrica -->

La ventana fotogramétrica puede ocupar entero un monitor, sin título, menús, barras de herramientas, barra de estado ni paneles. Este modo está destinado a gafas 3D y televisores 3D que Windows identifica como un monitor más y que muestran la imagen de cada ojo en una mitad de la pantalla: lado a lado (SBS, del inglés *side-by-side*) o arriba-abajo.

## Activar la pantalla completa

1. Abre el cuadro de diálogo **Configuración** y ve a la categoría **Ventana fotogramétrica**.
2. Elige el monitor de las gafas o del televisor 3D en **[Ventana fotogramétrica a pantalla completa en el monitor](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/ventana-fotogrametrica-a-pantalla-completa-en-el-monitor.md)**.
3. Elige la disposición que corresponde al modo de la pantalla en **[Estereoscopía](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/estereoscopia.md)** (consulta [Gafas y televisores 3D](#gafas-y-televisores-3d)).
4. Pulsa **Aceptar**. Si has cambiado entre **Ninguno (ventana normal)** y un monitor, el cuadro de diálogo obliga a reiniciar Digi3D.AI.
5. Abre un modelo.

Si el monitor elegido está conectado cuando abres un modelo, la ventana fotogramétrica pasa automáticamente a pantalla completa en ese monitor, encima de las demás ventanas y ocupando el rectángulo entero del monitor. Sobre el área de la imagen, Digi3D.AI oculta el cursor de Windows, porque solo se vería en uno de los dos ojos.

Con un monitor elegido, Digi3D.AI usa ventanas fotogramétricas independientes aunque esté configurada la visualización de la ventana fotogramétrica dentro de la ventana principal.

## Alternar entre pantalla completa y ventana normal

Pulsa **F11** o elige la opción **Pantalla completa en el monitor configurado** del menú **Ventana fotogramétrica** para alternar entre pantalla completa y ventana normal. La descripción de la opción es «Mostrar la ventana fotogramétrica a pantalla completa en el monitor configurado».

* La opción está deshabilitada, y F11 no tiene efecto, si la propiedad vale **Ninguno (ventana normal)** o el monitor elegido no está conectado. Mientras la ventana fotogramétrica está a pantalla completa, la opción está habilitada y devuelve la ventana al modo normal.
* **F11** ejecuta esta opción solo si el [archivo de configuración de teclas](../archivos/archivo-de-configuracion-de-teclas/README.md) no asigna otra orden a F11.
* Al restaurar el modo de ventana normal, Digi3D.AI restablece la posición y el tamaño de la ventana fotogramétrica, y muestra las barras de herramientas y los paneles que estaban visibles antes de activar la pantalla completa.
* Si la ventana fotogramétrica estaba maximizada antes de activar la pantalla completa, Digi3D.AI guarda su estado como no maximizado al cerrarla.
* Solo una ventana fotogramétrica está a pantalla completa a la vez. Al poner una a pantalla completa, las demás que lo estuvieran vuelven a ventana normal.
* Con dos ventanas fotogramétricas abiertas, F11 actúa sobre la última que tuvo el foco.
* Si el monitor cambia de resolución, Digi3D.AI recoloca la ventana. Si se desconecta el monitor, la ventana vuelve a ventana normal.

## La ventana principal durante la pantalla completa

Mientras una ventana fotogramétrica está a pantalla completa, la ventana principal de Digi3D.AI contiene estos elementos:

* El menú **Ventana fotogramétrica**, insertado detrás del menú **Archivo**, con las opciones que actúan sobre la ventana a pantalla completa.
* Al final de la barra de estado, los indicadores de la ventana fotogramétrica: zoom, velocidades, tipo de coordenadas, coordenadas, sistema de referencia, Z tentativa y pedal, con las listas desplegables de zoom y de tipo de coordenadas.
* Arriba, una barra con una copia de los botones que el sensor del modelo añade a la barra de herramientas del sensor. Por ejemplo, el sensor de Modelos 3D añade **Z automática**, **Superior** e **Inferior**. Digi3D.AI rehace la copia al cambiar de modelo y la quita al salir de la pantalla completa; la copia no se guarda en la disposición de barras.
* Los botones de las barras de herramientas de la ventana principal que no atiende la ventana de dibujo actúan sobre la ventana fotogramétrica a pantalla completa.

Al desactivar la pantalla completa, Digi3D.AI vuelve a mostrar el menú y los indicadores en la ventana fotogramétrica y elimina la barra copiada de la ventana principal.

## Cerrar la ventana

La ventana a pantalla completa no tiene botón de cerrar. Para cerrarla, elige **Cerrar ventana fotogramétrica** en el menú **Ventana fotogramétrica** de la ventana principal. La descripción de la opción es «Cierra la ventana fotogramétrica».

La opción **Cerrar ventana fotogramétrica** está al final del menú **Ventana fotogramétrica**, después de un separador, y existe tanto con ventanas fotogramétricas independientes como con la ventana fotogramétrica dentro de la ventana principal.

## Gafas y televisores 3D

Windows identifica las gafas 3D (por ejemplo, unas XREAL en modo 3D) o el televisor 3D como un monitor más, y cada ojo ve una mitad de la imagen. Elige en la lista [Estereoscopía](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/estereoscopia.md) la disposición que corresponde al modo de la pantalla:

| Modo de la pantalla | Disposición de **Estereoscopía** | Comportamiento |
| :--- | :--- | :--- |
| Lado a lado completo (Full SBS), por ejemplo 3840 × 1080 píxeles (ancho × alto) en unas gafas de 1920 × 1080 píxeles por ojo | **Estereoscopio o 3D lado a lado completo (Full SBS)** | Cada ojo recibe la mitad de los píxeles horizontales sin deformación. |
| Lado a lado a medio ancho (Half SBS), por ejemplo 1920 × 1080 píxeles (ancho × alto) | **3D lado a lado a medio ancho (Half SBS)** | La pantalla estira cada mitad al doble de ancho. Digi3D.AI dibuja cada mitad comprimida a la mitad en horizontal para que se vea con la proporción correcta. |
| Arriba-abajo | **3D Arriba-Abajo** | La imagen de un ojo ocupa la mitad superior de la pantalla y la del otro ojo, la mitad inferior. |

La disposición **Estereoscopio o 3D lado a lado completo (Full SBS)** es la misma que se usa con estereoscopios de espejos.
