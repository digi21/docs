# Cónico
<!-- id: camara-conica-2 -->

El sensor Cónico permite trabajar con modelos fotogramétricos obtenidos con cámaras métricas o cónicas (fotogrametría aérea y terrestre clásica): orientación interna, relativa y absoluta, medida de aerotriangulación, etc.

Puede obtener las calibraciones de cámara y las orientaciones de los modelos de distintos programas y formatos. Consulta sus [extensiones](extensiones/README.md).

## Crear un modelo

Los modelos del sensor Cónico se crean con el cuadro de diálogo [Crear modelo](../../../cuadros-de-dialogo/crear-modelo.md), seleccionando el sensor **Cónico** en el cuadro de diálogo Crear proyecto fotogramétrico. El nombre del modelo es el nombre de la imagen izquierda, un guion y el nombre de la imagen derecha, sin extensión: con las imágenes `107.tif` y `108.tif` se crea el archivo **107-108.d3d** en el directorio de trabajo.

## Propiedades del sensor

* **Archivo de aerotriangulación**: archivo del que se leen las orientaciones exteriores de las dos imágenes y, si lo incluye, la calibración de la cámara. Admite los formatos de las [extensiones](extensiones/README.md) activadas. Si el trabajo no está aerotriangulado, se deja vacío.
* **Imagen izquierda** e **Imagen derecha**: archivos de imagen del modelo.

## De dónde salen las orientaciones

Al cargar un modelo, el sensor lee los archivos del directorio de trabajo del modelo. `<izquierda>` y `<derecha>` son los nombres de las imágenes sin extensión.

### Cámara

1. Si el modelo tiene **Archivo de aerotriangulación** y no tiene archivo de cámara, el sensor busca la calibración en el archivo de aerotriangulación.
2. Si no la encuentra, usa el archivo de cámara del modelo.
3. Si tampoco hay archivo de cámara, muestra el cuadro **Archivo de cámara para la imagen izquierda** (o **derecha**) para seleccionar uno. Si se cancela, el modelo no se carga.

### Orientación relativa

* **Con Archivo de aerotriangulación**: las extensiones intentan leer ese archivo. Si una de ellas lo lee, las orientaciones exteriores salen de él. Los archivos `<izquierda>-<derecha>.rel.xml`, `<izquierda>-<derecha>.rel` y `<imagen>.orientation.xml` del directorio de trabajo solo se usan si ninguna extensión lee el archivo de aerotriangulación.
* **Sin Archivo de aerotriangulación**: el sensor carga, por este orden, `<izquierda>-<derecha>.rel.xml`, `<izquierda>-<derecha>.rel` o el par `<izquierda>.orientation.xml` y `<derecha>.orientation.xml`. Con el par de `.orientation.xml`, la orientación relativa no se puede modificar.
* Si no se encuentra ninguna orientación, el sensor crea una orientación relativa provisional en un sistema de referencia de coordenadas desconocido, que se puede medir con la orden [ORI\_RELATIVA](../../ordenes/o/ori_relativa.md).

Con **Archivo de aerotriangulación**, la ventana [Resultados](../../../paneles/resultados.md) puede mostrar uno de estos mensajes al cargar el modelo:

* «Ninguna extensión de cámara ha podido leer el archivo de aerotriangulación *archivo*: el modelo se ha cargado sin las orientaciones exteriores de ese archivo.»: ninguna extensión activada reconoce el archivo, por su formato o por su extensión.
* «Se ignora el archivo de orientación relativa *archivo .rel.xml* porque el modelo carga sus orientaciones exteriores del archivo de aerotriangulación *archivo*. Para usar la orientación relativa, quita el archivo de aerotriangulación del modelo.»: existe un `<izquierda>-<derecha>.rel.xml`, por ejemplo de una orientación relativa medida antes de declarar el archivo de aerotriangulación.

### Orientación absoluta

La orientación absoluta se lee del archivo de aerotriangulación si la extensión que lo lee la proporciona. Si no, de `<izquierda>-<derecha>.abs.xml` (o del formato antiguo `<izquierda>-<derecha>.abs2`). Sin ninguno de los dos, el modelo no tiene transformación absoluta: las coordenadas del modelo son las de la orientación relativa.

## Sistema de referencia de coordenadas

Si el archivo de aerotriangulación no indica el sistema de referencia de coordenadas, o lo indica sin componente vertical, al cargar el modelo aparece un cuadro que pregunta por él. Consulta [Modelo sin sistema de referencia de coordenadas](sistema-de-referencia-del-modelo.md).
