# Web Map Tile Service
<!-- id: sensor-wmts -->

El sensor Web Map Tile Service muestra en la ventana fotogramétrica una capa de un servidor WMTS (*Web Map Tile Service*), que sirve la imagen en teselas precalculadas por niveles de zoom. El modelo tiene una sola imagen y no admite estereoscopía. Digi3D.AI pide al servidor las teselas de la zona visible a medida que te desplazas por el modelo, y usa cada nivel de la matriz de teselas del servidor como un nivel piramidal.

## Crear el modelo

En la pestaña [Sensores fotogramétricos](../../cuadros-de-dialogo/nuevo-proyecto/sensores-fotogrametricos.md) del cuadro de diálogo **Nuevo proyecto**, o en el cuadro de diálogo [Crear modelo](../../cuadros-de-dialogo/crear-modelo.md), con el sensor **Web Map Tile Service**, **Propiedades del sensor** muestra solo la propiedad **URL del servidor**:

1. En **URL del servidor**, escribe la URL **GetCapabilities** del servidor WMTS. Por ejemplo, la del PNOA del IGN:

   ```
   https://www.ign.es/wmts/pnoa-ma?request=GetCapabilities&service=WMTS
   ```

2. Pulsa **Aceptar**. Digi3D.AI crea el archivo de modelo y abre la ventana fotogramétrica, vacía, con el panel **Web Map Tile Service** abierto para elegir la capa.

Al pulsar **Aceptar**, Digi3D.AI comprueba la URL sin conectar con el servidor. Si la propiedad está vacía, muestra el mensaje «Escribe la URL GetCapabilities del servidor WMTS.»; si la URL no es válida (por ejemplo, empieza por `ftp://`), muestra «La URL del servidor WMTS no es válida» con la URL. En los dos casos selecciona la propiedad **URL del servidor** y el cuadro de diálogo sigue abierto. Si la URL no lleva esquema, Digi3D.AI añade `http://`.

Cuando la rejilla muestra un modelo existente, o uno preparado con **Crear uno nuevo a partir de este**, aparecen también, sin permitir modificarlas, la **Capa**, el **Estilo**, el **Formato de imagen** y la **Matriz de teselas** guardados en el archivo. Se cambian en el panel de la ventana fotogramétrica. Si en un modelo preparado con **Crear uno nuevo a partir de este** cambias la **URL del servidor**, esas propiedades desaparecen y el modelo nuevo se crea sin capa.

## Nombre del archivo de modelo

El archivo de modelo se llama `servidor - capa.d3d`, con el nombre del servidor de la URL y el título de la capa. Por ejemplo, `www.ign.es - Imágenes de satélite Sentinel y ortofotos PNOA.d3d`. Un modelo que todavía no tiene capa se llama como el servidor: `www.ign.es.d3d`.

* Los caracteres que Windows no admite en un nombre de archivo se sustituyen: `\`, `/` y `|` por `-`; `:`, `*`, `?` y `%` por `_`; `"` por `'`; `<` y `>` por paréntesis. Un puerto se escribe con `_`: `servidor_8080`.
* Al crear el modelo, si en el directorio de trabajo ya existe un archivo de modelo Web Map Tile Service del mismo servidor y la misma capa, Digi3D.AI lo reutiliza: escribe en él la configuración nueva. Si existe un archivo con ese nombre de otro servidor, de otra capa o de otro sensor, el modelo nuevo se llama `servidor - capa (2).d3d`, `servidor - capa (3).d3d`, etc.
* Al elegir otra capa en el panel, Digi3D.AI cambia el nombre del archivo al de la capa nueva, también la primera vez que eliges una capa en un modelo sin capa. El nombre nuevo nunca sustituye a un archivo que ya existe: si existe, se añade ` (2)`, ` (3)`, etc. La barra de título de la ventana fotogramétrica y el título del panel muestran el nombre nuevo.
* Si el nombre del archivo no es uno de los que genera Digi3D.AI (por ejemplo, porque lo has cambiado tú, o porque el modelo se creó con una versión anterior, que lo llamaba con la cadena de conexión entera), el archivo conserva su nombre aunque cambies de capa.

## Abrir el modelo

Al abrir el modelo, Digi3D.AI se conecta al servidor. Si la URL no es válida o el servidor no responde, muestra el error y no abre el modelo. Si el archivo de modelo no contiene la configuración del sensor, muestra el mensaje **El archivo de proyecto no contiene el nodo \<connectionString\> del sensor WMTS**.

Si el modelo no tiene capa, la ventana fotogramétrica se abre vacía. Si el servidor ya no publica la capa, el estilo, el formato o la matriz de teselas del modelo, la ventana se abre vacía y el panel [Resultados](../../paneles/resultados.md) muestra el mensaje «La capa, el estilo, el formato o la matriz de teselas del modelo no están en el servidor *servidor*. Elígelos en el panel Web Map Tile Service.». En los dos casos, elige la capa en el panel.

Los modelos creados con versiones anteriores se abren igual.

## Panel Web Map Tile Service

Al abrir el modelo, Digi3D.AI acopla a la derecha de la ventana principal el panel **Web Map Tile Service: *nombre del modelo***. Cada ventana fotogramétrica de un modelo Web Map Tile Service tiene su propio panel, que se cierra con ella. Los cambios que haces en el panel se aplican a la ventana fotogramétrica y se guardan en el archivo de modelo en ese momento.

### Servidor

| Propiedad | Descripción |
| :--- | :--- |
| **URL del servidor** | URL GetCapabilities del servidor WMTS. Al cambiarla, Digi3D.AI se conecta al servidor nuevo, la capa queda sin elegir y la ventana fotogramétrica se vacía. Si la conexión falla, muestra el error y conserva el servidor anterior. |
| **Servicio** | Título que publica el servidor. La zona de descripción del panel muestra la descripción del servicio. |
| **Proveedor** | Organización que publica el servicio. |
| **Restricciones de uso** | Condiciones de uso del servicio que publica el servidor. Al seleccionar la propiedad, la zona de descripción del panel muestra el texto completo. |
| **Tarifas** | Precio del servicio que publica el servidor. |
| **Contacto** | Persona de contacto, correo electrónico y teléfono que publica el servidor. |

Las propiedades **Servicio**, **Proveedor**, **Restricciones de uso**, **Tarifas** y **Contacto** no se pueden modificar.

### Capa

| Propiedad | Descripción |
| :--- | :--- |
| **Capa** | Capa del servidor que se muestra en la ventana fotogramétrica. El desplegable lista en orden alfabético los títulos de las capas que publica el servidor; si dos capas tienen el mismo título, se muestra también su identificador entre paréntesis. En un modelo sin capa, el resto de propiedades de esta categoría no aparece hasta que eliges una. |
| **Descripción de la capa** | Descripción que publica el servidor para la capa. No se puede modificar. |
| **Estilo** | Estilo de la capa con el que se piden las teselas. |
| **Formato de imagen** | Formato de las teselas. El desplegable solo ofrece `image/jpeg` e `image/png`, de entre los formatos que el servidor admite para la capa. |
| **Matriz de teselas** | Conjunto de matrices de teselas (*TileMatrixSet*) de la capa. Cada matriz del conjunto es un nivel piramidal del modelo. |
| **Sistema de referencia** | Sistema de referencia de coordenadas de la matriz de teselas, que es también el del modelo. No se puede modificar: depende de la matriz. |
| **Tamaño de píxel** | Tamaño de píxel del nivel con más detalle de la matriz, en unidades del sistema de referencia. No se puede modificar: lo fija el servidor. |
| **Origen X** y **Origen Y** | Coordenadas en las que se abre el modelo. Por defecto, el centro de la matriz de teselas. Al cambiarlas, la ventana fotogramétrica se desplaza a ellas. |

Al elegir una capa, Digi3D.AI conserva el estilo, el formato y la matriz de teselas si la capa nueva los tiene; si no, elige el primero de los que publica.

Al cambiar de capa o de matriz de teselas:

* Si el sistema de referencia no cambia, la ventana fotogramétrica sigue en la misma posición.
* Si cambia, la ventana se desplaza al centro de la matriz nueva, el origen vuelve a ser ese centro, la ventana de dibujo vuelve a calcular la transformación de coordenadas entre los dos sistemas, y Digi3D.AI borra del archivo de modelo la última posición y el factor de escala, que estaban en el sistema anterior.

Si un cambio no se puede aplicar, Digi3D.AI muestra el mensaje «No se ha podido aplicar el cambio» con el motivo, y el panel vuelve a mostrar los valores del modelo.

## Sistema de referencia y coordenadas

Digi3D.AI reconoce el sistema de referencia de la matriz de teselas (*SupportedCRS*) en estas formas: `EPSG:25830`, `urn:ogc:def:crs:EPSG::25830` (también con versión, `urn:ogc:def:crs:EPSG:6.18:25830`), `http://www.opengis.net/def/crs/EPSG/0/25830`, `CRS:84`, `OGC:CRS84`, `urn:ogc:def:crs:OGC:1.3:CRS84`, `urn:ogc:def:crs:OGC:2:84` y `http://www.opengis.net/def/crs/OGC/1.3/CRS84`. Un sistema que no reconoce, o que la base de datos EPSG no conoce, deja el modelo en un sistema de referencia local, en metros.

Las coordenadas del modelo van en las unidades del sistema de referencia, con el este o la longitud en X y el norte o la latitud en Y:

* En un sistema geográfico (CRS:84, EPSG:4326, EPSG:4258...) van en grados. El tamaño de píxel de cada nivel es su *ScaleDenominator* por 0,28 mm, dividido entre 111.319,49 m por grado, como establece el estándar WMTS. Por ejemplo, el nivel 0 de la matriz `InspireCRS84Quad` del IGN tiene píxeles de 0,703125 grados y mide 360 grados de ancho.
* En los códigos EPSG geográficos, el servidor da la esquina superior izquierda de la matriz en latitud, longitud; Digi3D.AI la lee en ese orden. Lo mismo con los sistemas proyectados cuya definición EPSG pone primero el norte.
* En un sistema proyectado van en sus unidades lineales (metros, o pies en los sistemas definidos en pies).

## Teselas y caché

Digi3D.AI guarda las teselas que recibe en la carpeta temporal de Windows, en la subcarpeta **Caché WMTS**, por servidor, capa, estilo y matriz de teselas. Una tesela que ya está en la caché no se vuelve a pedir.

Si el servidor no devuelve una imagen, el panel [Resultados](../../paneles/resultados.md) muestra el motivo.
