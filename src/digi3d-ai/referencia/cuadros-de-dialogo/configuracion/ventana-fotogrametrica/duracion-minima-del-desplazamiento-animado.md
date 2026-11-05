# Duración mínima del desplazamiento animado (s)
<!-- id: duracion-minima-del-desplazamiento-animado -->

Indica la duración mínima, en segundos, de las animaciones de desplazamiento de la ventana fotogramétrica: la duración de cada animación aumenta desde este valor con la distancia del desplazamiento. Con el valor 0, ningún desplazamiento se anima.

## Valores posibles

Un número de 0 a 10. Al guardar la configuración, un valor no numérico se sustituye por 0,3. El valor por defecto es 0,3.

## Desplazamientos que se animan

La ventana fotogramétrica anima el desplazamiento a unas coordenadas en estos casos:

* La orden [IR\_A\_PUNTO\_APOYO](../../../ventana-fotogrametrica/ordenes/i/ir-a-punto-apoyo.md).
* La orden [IR\_A\_PUNTO\_ORIGEN](../../../ventana-fotogrametrica/ordenes/i/ir-a-punto-origen.md).
* El desplazamiento [a unas coordenadas terreno](../../../../primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/desplazando-ventana-foto-a-coordenadas.md), [a una referencia catastral](../../../../primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/desplazando-ventana-foto-a-referencia-catastral.md) o a la posición de Google Earth.
* La selección de un punto en las listas de los cuadros de orientación.
* Las órdenes de la ventana de dibujo que desplazan la ventana fotogramétrica cuando está activa la variable [IR\_TENTATIVO](../../../ventana-de-dibujo/variables/i/ir_tentativo.md), por ejemplo [IR\_A](../../../ventana-de-dibujo/ordenes/i/ir-a.md).

La ventana fotogramétrica aplica el desplazamiento sin animación en estos casos:

* El desplazamiento al punto tentativo.
* La corrección de la paralaje por correlación: la orden CORRELAR y los cuadros de orientación relativa y absoluta.
* La vuelta a la posición anterior después de cambiar el par de imágenes en los sensores ADS40 y RPC triestéreo.
* Los sensores WMS y WMTS.
* La orden IR\_A\_PUNTO\_ORIGEN en una nube de puntos.
* Los guiones de Python.

## Duración de la animación

La duración de cada animación, en segundos, es:

duración mínima + (duración máxima − duración mínima) × distancia / distancia máxima

* La distancia se mide en anchos del área de dibujo de la ventana fotogramétrica. En una nube de puntos, la distancia es la longitud del desplazamiento dividida por la distancia entre la cámara y el cursor.
* La duración máxima es la opción [Duración máxima del desplazamiento animado](duracion-maxima-del-desplazamiento-animado.md) y la distancia máxima es la opción [Distancia máxima del desplazamiento animado](distancia-maxima-del-desplazamiento-animado.md).
* Un desplazamiento más largo que la distancia máxima, o de menos de medio píxel, se aplica sin animación.
* Un desplazamiento que solo cambia la Z, como el de las órdenes [SUBE\_Z](../../../ventana-de-dibujo/ordenes/s/sube-z.md) y [BAJA\_Z](../../../ventana-de-dibujo/ordenes/b/baja-z.md), se aplica sin animación. La ventana fotogramétrica considera que un desplazamiento solo cambia la Z cuando la distancia en pantalla entre la posición actual y el destino, calculada con la Z de la posición actual en los dos extremos, es menor que medio píxel.
* Si la duración máxima no supera la duración mínima, cada animación dura la duración mínima.
* La velocidad sigue una curva que acelera al principio y frena al final.

## Interrupción de la animación

* Mover las manivelas o el ratón, mover la cámara con el teclado o el SpaceMouse, pulsar un pedal o ejecutar una orden detiene la animación en la posición intermedia. Un punto registrado con el pedal queda donde se ve el índice en ese momento.
* Si la ventana fotogramétrica todavía no ha mostrado ninguna posición intermedia de la animación, Digi3D.AI desplaza la ventana al destino antes de procesar el movimiento de las manivelas o del ratón, la pulsación del pedal o la ejecución de la orden. Mover la cámara con el teclado o el SpaceMouse detiene la animación sin desplazar la ventana al destino.
* Soltar un pedal no detiene la animación. El evento de pedal liberado que reciben la orden activa y la ventana de dibujo lleva las coordenadas del destino.
* Un desplazamiento nuevo sustituye la animación en curso. La animación nueva comienza en la posición que muestra la ventana fotogramétrica al pedir el desplazamiento nuevo.
* Si una orden lee las coordenadas durante la animación, la animación termina en el destino y la orden recibe las coordenadas del destino.
* Si se cierra la ventana fotogramétrica durante una animación, Digi3D.AI guarda la posición del destino.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration` |
| :--- | :--- |
| Valor | `DuracionMinimaDesplazamientoAnimadoSegundos` |
| Tipo | `REG_BINARY` (número de 8 bytes en coma flotante de doble precisión) |
| Valor por defecto | 0,3 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican. Digi3D.AI lee el valor en cada desplazamiento, así que un cambio guardado se aplica en el desplazamiento siguiente, sin reiniciar Digi3D.AI.

</details>