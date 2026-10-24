# TEXTO\_ORIENTADO\_CON\_CAMARA
<!-- id: texto-orientado-con-camara -->

Si está activa, la orden [TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md) coloca el texto perpendicular a la dirección de la mirada de la cámara y derecho en la pantalla, y la orden [TEXTO\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md) coloca el texto en un plano vertical, con la línea base (la línea sobre la que se apoyan los caracteres) en la dirección que marcan los dos puntos que se introducen. Si está desactivada, las dos órdenes colocan el texto en el plano XY.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor de la variable |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |


## Observaciones

Cualquier número distinto de 0 activa la variable. Si el parámetro no empieza por un número ni por **?**, la orden lo interpreta como 0 y desactiva la variable.

La variable afecta a cinco órdenes. [TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md), [1TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/1/1-texto.md) y [TEXTO\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md) orientan el texto con la cámara. [TEXTO\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md) y [TEXTO\_R\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md) orientan el texto con los dos puntos que se introducen.

### Textos orientados con la cámara

Las órdenes TEXTO, 1TEXTO y TEXTO\_EDITABLE colocan el texto con los tres ejes de la cámara: la dirección de la mirada, el eje derecho (la dirección horizontal de la pantalla) y el eje arriba (la dirección vertical de la pantalla). El plano del texto es perpendicular a la dirección de la mirada y la cara legible del texto está orientada hacia la cámara. La línea base sigue el eje derecho de la cámara y el eje vertical del texto sigue el eje arriba, de modo que el texto aparece derecho en la pantalla.

El plano del texto depende de la dirección de la mirada de la cámara:

| Dirección de la mirada | Plano del texto |
| :--- | :--- |
| Horizontal | Plano vertical. |
| Vertical hacia abajo (vista cenital) | Plano XY. El texto se almacena como un texto del plano XY, sin orientación en el espacio, con la línea base en la dirección horizontal de la pantalla en lugar de en la dirección del ángulo activo AA. |
| Vertical hacia arriba | Plano horizontal. El texto se lee desde abajo. |
| Inclinada | Plano inclinado, perpendicular a la dirección de la mirada. |

TEXTO, 1TEXTO y TEXTO\_EDITABLE no usan el ángulo activo [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) mientras calculan la orientación con la cámara. Si no se puede calcular la dirección de la mirada o el eje derecho de la cámara, el texto queda en un plano vertical, con la línea base horizontal en la dirección del ángulo activo AA.

La orientación del texto se calcula cada vez que se mueve el cursor y al introducir el punto de inserción, con la orientación que tiene la cámara en ese momento.

La cámara que se usa depende de la ventana fotogramétrica:

* Si la ventana fotogramétrica muestra un modelo de un sensor con cámara en primera persona, se usa la cámara de ese sensor. Una cámara en primera persona se desplaza y gira libremente por el modelo. Los sensores con cámara en primera persona son [PointCloud](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/point-cloud.md) y [Ortofoto estereoscópica](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/ortofoto-estereoscopica.md). Los ejes de la cámara del sensor están en coordenadas del modelo: los ejes se convierten al sistema de referencia de coordenadas del dibujo y, si la conversión falla, se usan sin convertir.
* Si la ventana fotogramétrica no está abierta, no muestra ningún modelo o el sensor del modelo que muestra no tiene cámara en primera persona, se usa la cámara activa de la ventana de dibujo, que se selecciona en el panel [Cámaras](/digi3d-ai/referencia/paneles/camaras.md).

### Textos orientados con dos puntos

Las órdenes TEXTO\_R y TEXTO\_R\_EDITABLE colocan el texto en un plano vertical, con la línea base horizontal, y no usan la cámara. Hasta que se introduce el primer punto, la línea base sigue la dirección del ángulo activo AA. Después de introducir el primer punto, la línea base sigue la dirección en el plano XY que va del primer punto al cursor. La diferencia de Z entre el primer punto y el cursor no cambia la orientación del texto.

### Otras características

Los textos que ya existen no cambian al activar o desactivar la variable. La variable solo afecta a los textos que se insertan mientras está activa.

Si la variable [FORZAR\_AA\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-aa-activa.md) está activada, el texto orientado se almacena girado alrededor del eje Z, de modo que la proyección de su línea base en el plano XY tiene la dirección del ángulo activo AA. El texto conserva la inclinación de su plano. El texto que se muestra mientras se mueve el cursor no tiene en cuenta FORZAR\_AA\_ACTIVA.

Al iniciar Digi3D.AI la variable está desactivada.

Desde Python, la variable se lee y se modifica con la propiedad `camera_oriented_text` de [DrawingView](/digi3d-ai/programacion/python/referencia/digi3d/drawing-view.md).

### Orientación de los textos en los archivos de dibujo

Un texto orientado guarda su orientación en el espacio además del giro alrededor del eje Z. Estos formatos leen y escriben la orientación:

| Formato | Dónde se guarda la orientación |
| :--- | :--- |
| [Archivos Digi de doble precisión](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin-doble-precision.md) (`.bind`) | En un registro de tipo `Digi21.DigiNG.Text2`. Las versiones de Digi3D que no reconocen el registro `Digi21.DigiNG.Text2` omiten los textos orientados. |
| [Archivos Ascii de Digi](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ascii-de-digi.md) (`.asc`) | En cuatro números al final de la línea del giro. |
| [Archivos DGNv8](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md) (`.dgn`) | En el cuaternión de rotación del elemento de texto de los modelos 3D. Un modelo 2D solo guarda el giro. |
| [Archivos AutoCAD DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md) (`.dwg`, `.dxf`) | En la normal y la rotación de cada TEXT. Al leer el archivo, también en la normal y la dirección de cada MTEXT. |
| [Archivos Datawarehouse de Geomedia](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geomedia.md) (`.mdb`) | En la normal y la rotación de cada `TextPointGeometry`. El eje desde el que Digi3D.AI mide la rotación no se ha comprobado con archivos creados por GeoMedia. |

Los demás formatos no conservan la orientación: un texto orientado se escribe como un texto del plano XY.

| Formato | Ángulo del texto en el archivo |
| :--- | :--- |
| BIN, VEC y GeoJSON | El giro. GeoJSON escribe el giro en la propiedad `rotation` del punto. |
| PDF | El giro: el texto se dibuja en planta desde su punto de inserción, girado con ese ángulo y con el alto del texto. Si el tamaño de la página sale de la extensión del dibujo, la página incluye el rectángulo en planta del texto. |
| SHP, GeoPackage, FileGDB, PostGIS y WKT | Ninguno: el texto se escribe como un punto en su punto de inserción. |
| SVG | Ninguno: el texto se escribe como un elemento `text` en la X y la Y de su punto de inserción. |
| KML | El exportador KML no escribe textos. |

En los textos que crean las órdenes TEXTO, 1TEXTO, TEXTO\_EDITABLE, TEXTO\_R y TEXTO\_R\_EDITABLE, el giro es el ángulo de la proyección de la línea base en el plano XY. En los formatos que escriben el giro, la línea base del texto conserva su dirección en planta.

La orientación en el espacio de un texto se lee y se asigna con la propiedad [`orientation`](/digi3d-ai/programacion/python/referencia/digi21.base/text.md#orientación-en-el-espacio) de `Text` en Python, y con la propiedad [`Orientation`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/orientation.md) de `Text` en .NET. En .NET, `ReadOnlyText` tiene la propiedad [`Orientation`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/orientation.md) de solo lectura.

## Características de la orden

| Tipo de orden | [Variable booleana](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[FORZAR\_AA\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-aa-activa.md) — almacena los textos con el ángulo activo |
| Órdenes relacionadas | [1TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/1/1-texto.md)<br>[TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md)<br>[TEXTO\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md)<br>[TEXTO\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md)<br>[TEXTO\_R\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md) |
| Nombre interno | {C2543B3F-39AF-43AA-9084-F1F579FE2473} |
